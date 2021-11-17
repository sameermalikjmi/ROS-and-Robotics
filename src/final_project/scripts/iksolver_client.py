#!/usr/bin/env python3

from __future__ import print_function
from geometry_msgs.msg import Pose
import sys
import rospy
from final_project.srv import *

def ik_solver_client(px, py, pz, ox, oy, oz, ow):
    rospy.wait_for_service('ik_solver')
    try:
        ik_solver = rospy.ServiceProxy('ik_solver', iksolver)
        req_pose = Pose()
        req_pose.position.x = px
        req_pose.position.y = py
        req_pose.position.z = pz
        req_pose.orientation.x = ox
        req_pose.orientation.y = oy
        req_pose.orientation.z = oz
        req_pose.orientation.w = ow
        
        resp1 = ik_solver(req_pose)
        return resp1.joint_values
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

def usage():
    return "%s [x y z]"%sys.argv[0]

if __name__ == "__main__":
    if len(sys.argv) == 8:
        px = float(sys.argv[1])
        py = float(sys.argv[2])
        pz = float(sys.argv[3])
        ox = float(sys.argv[4])
        oy = float(sys.argv[5])
        oz = float(sys.argv[6])
        ow = float(sys.argv[7])
    else:
        print(usage())
        sys.exit(1)
    print("Requesting Inverse Kinematics Operation")
    print("The joint values are ",ik_solver_client(px, py, pz, ox, oy, oz, ow))
