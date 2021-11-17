#!/usr/bin/env python3

import rospy
import math
from final_project.srv import iksolver,iksolverResponse

l1 = 0.4
l2 = 0.5

def handle_ik_solver(req):
    print("x = ",req.desired_pose.position.x, "y = ",  req.desired_pose.position.y, "z = ",req.desired_pose.position.z)
    x = req.desired_pose.position.x
    y = req.desired_pose.position.y
    z = req.desired_pose.position.z
    j2 = math.acos(((x*x)+(y*y)-(l1*l1)-(l2*l2))/(2*l1*l2))
    j1 = math.atan2(y,x)-math.atan2((l2*math.sin(j2)),(l1+l2+math.cos(j2)))
    d3 = 0.4 -req.desired_pose.position.z
    return iksolverResponse([j1,j2,d3])

def ik_solver_server():
    rospy.init_node('ik_solver_server')
    s = rospy.Service('ik_solver', iksolver, handle_ik_solver)
    print("Ready to perform inverse kinematics.")
    rospy.spin()

if __name__ == "__main__":
    ik_solver_server()
