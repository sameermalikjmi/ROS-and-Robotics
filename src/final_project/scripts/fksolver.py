#!/usr/bin/env python3
import rospy
import numpy as np
import math
from sensor_msgs.msg import JointState
from geometry_msgs.msg import Pose
from scipy.spatial.transform import Rotation as R


class FKsolver():
    def __init__(self):
        self.final_pose = Pose()
        
        rospy.init_node('fksolver', anonymous=True)
        rate = rospy.Rate(10)
        self.sub = rospy.Subscriber("joint_states", JointState, self.callback)
        self.pub = rospy.Publisher('end_effector_pose', Pose, queue_size=10)
        rospy.sleep(1)
        
        while not rospy.is_shutdown():
            self.pub.publish(self.final_pose)
            rospy.Rate.sleep(rate)
        return;


    def callback(self,data):
        rospy.loginfo("I heard %s %s %s", data.position[0], data.position[1], data.position[2] )
        the1 = data.position[0]
        the2 = data.position[1]
        dis3 = data.position[2]
        l1 = 0.55
        l2 = 0.40
        l3 = 0.1
        l4 = 0.5
        l5 = 0.25
        a1 = np.matrix([[1, 0, 0 , 0],[0, 1, 0, 0],[0, 0, 1, l1],[0,0,0,1]])
        a2 = np.matrix([[math.cos(the1), -math.sin(the1), 0 ,l2*math.cos(the1)],[math.sin(the1), math.cos(the1), 0,l2*math.sin(the1)],[0, 0, 1, 0],[0,0,0,1]])
        a3 = np.matrix([[1, 0, 0 , 0],[0, 1, 0, 0],[0, 0, 1, l3],[0,0,0,1]])
        a4 = np.matrix([[math.cos(the2), math.sin(the2), 0 ,l4*math.cos(the2)],[math.sin(the2), -math.cos(the2), 0,l4*math.sin(the2)],[0, 0, -1, 0],[0,0,0,1]])
        a5 = np.matrix([[1, 0, 0 , 0],[0, 1, 0, 0],[0, 0, 1, l5+dis3],[0,0,0,1]])
        
        A1 = np.matmul(a1,a2)
        A2 = np.matmul(A1,a3)
        A3 = np.matmul(A2,a4)
        A = np.matmul(A3,a5)
        
        #A = np.matmul(A1,A2)
        
        #print('A-Matrix',A[0,3])
        #print('Position of EndEffector', A[0:3,3])
        
        r = R.from_matrix(A[0:3,0:3])
        quat = r.as_quat()
        #print('Orientation of EndEffector', quat)
        
        self.final_pose.position.x = A[0,3]
        self.final_pose.position.y = A[1,3]
        self.final_pose.position.z = A[2,3]
        self.final_pose.orientation.x = quat[0]
        self.final_pose.orientation.y = quat[1]
        self.final_pose.orientation.z = quat[2]
        self.final_pose.orientation.w = quat[3]
        
        #print(r.as_euler('xyz', degrees=True))
        print('Final Pose', self.final_pose)
    
if __name__ == '__main__':
  try:
    fk = FKsolver()
  except rospy.ROSInterruptException:
    pass

