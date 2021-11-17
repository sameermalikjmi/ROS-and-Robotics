;; Auto-generated. Do not edit!


(when (boundp 'final_project::iksolver)
  (if (not (find-package "FINAL_PROJECT"))
    (make-package "FINAL_PROJECT"))
  (shadow 'iksolver (find-package "FINAL_PROJECT")))
(unless (find-package "FINAL_PROJECT::IKSOLVER")
  (make-package "FINAL_PROJECT::IKSOLVER"))
(unless (find-package "FINAL_PROJECT::IKSOLVERREQUEST")
  (make-package "FINAL_PROJECT::IKSOLVERREQUEST"))
(unless (find-package "FINAL_PROJECT::IKSOLVERRESPONSE")
  (make-package "FINAL_PROJECT::IKSOLVERRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass final_project::iksolverRequest
  :super ros::object
  :slots (_desired_pose ))

(defmethod final_project::iksolverRequest
  (:init
   (&key
    ((:desired_pose __desired_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _desired_pose __desired_pose)
   self)
  (:desired_pose
   (&rest __desired_pose)
   (if (keywordp (car __desired_pose))
       (send* _desired_pose __desired_pose)
     (progn
       (if __desired_pose (setq _desired_pose (car __desired_pose)))
       _desired_pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _desired_pose
    (send _desired_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _desired_pose
       (send _desired_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _desired_pose
     (send _desired_pose :deserialize buf ptr-) (incf ptr- (send _desired_pose :serialization-length))
   ;;
   self)
  )

(defclass final_project::iksolverResponse
  :super ros::object
  :slots (_joint_values ))

(defmethod final_project::iksolverResponse
  (:init
   (&key
    ((:joint_values __joint_values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_values __joint_values)
   self)
  (:joint_values
   (&optional __joint_values)
   (if __joint_values (setq _joint_values __joint_values)) _joint_values)
  (:serialization-length
   ()
   (+
    ;; float64[] _joint_values
    (* 8    (length _joint_values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _joint_values
     (write-long (length _joint_values) s)
     (dotimes (i (length _joint_values))
       (sys::poke (elt _joint_values i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _joint_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_values i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass final_project::iksolver
  :super ros::object
  :slots ())

(setf (get final_project::iksolver :md5sum-) "c531b06618eadc33dc6f14fc3026e8e5")
(setf (get final_project::iksolver :datatype-) "final_project/iksolver")
(setf (get final_project::iksolver :request) final_project::iksolverRequest)
(setf (get final_project::iksolver :response) final_project::iksolverResponse)

(defmethod final_project::iksolverRequest
  (:response () (instance final_project::iksolverResponse :init)))

(setf (get final_project::iksolverRequest :md5sum-) "c531b06618eadc33dc6f14fc3026e8e5")
(setf (get final_project::iksolverRequest :datatype-) "final_project/iksolverRequest")
(setf (get final_project::iksolverRequest :definition-)
      "geometry_msgs/Pose desired_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
float64[] joint_values

")

(setf (get final_project::iksolverResponse :md5sum-) "c531b06618eadc33dc6f14fc3026e8e5")
(setf (get final_project::iksolverResponse :datatype-) "final_project/iksolverResponse")
(setf (get final_project::iksolverResponse :definition-)
      "geometry_msgs/Pose desired_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
float64[] joint_values

")



(provide :final_project/iksolver "c531b06618eadc33dc6f14fc3026e8e5")


