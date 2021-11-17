; Auto-generated. Do not edit!


(cl:in-package final_project-srv)


;//! \htmlinclude iksolver-request.msg.html

(cl:defclass <iksolver-request> (roslisp-msg-protocol:ros-message)
  ((desired_pose
    :reader desired_pose
    :initarg :desired_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass iksolver-request (<iksolver-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <iksolver-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'iksolver-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name final_project-srv:<iksolver-request> is deprecated: use final_project-srv:iksolver-request instead.")))

(cl:ensure-generic-function 'desired_pose-val :lambda-list '(m))
(cl:defmethod desired_pose-val ((m <iksolver-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader final_project-srv:desired_pose-val is deprecated.  Use final_project-srv:desired_pose instead.")
  (desired_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <iksolver-request>) ostream)
  "Serializes a message object of type '<iksolver-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'desired_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <iksolver-request>) istream)
  "Deserializes a message object of type '<iksolver-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'desired_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<iksolver-request>)))
  "Returns string type for a service object of type '<iksolver-request>"
  "final_project/iksolverRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'iksolver-request)))
  "Returns string type for a service object of type 'iksolver-request"
  "final_project/iksolverRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<iksolver-request>)))
  "Returns md5sum for a message object of type '<iksolver-request>"
  "c531b06618eadc33dc6f14fc3026e8e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'iksolver-request)))
  "Returns md5sum for a message object of type 'iksolver-request"
  "c531b06618eadc33dc6f14fc3026e8e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<iksolver-request>)))
  "Returns full string definition for message of type '<iksolver-request>"
  (cl:format cl:nil "geometry_msgs/Pose desired_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'iksolver-request)))
  "Returns full string definition for message of type 'iksolver-request"
  (cl:format cl:nil "geometry_msgs/Pose desired_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <iksolver-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'desired_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <iksolver-request>))
  "Converts a ROS message object to a list"
  (cl:list 'iksolver-request
    (cl:cons ':desired_pose (desired_pose msg))
))
;//! \htmlinclude iksolver-response.msg.html

(cl:defclass <iksolver-response> (roslisp-msg-protocol:ros-message)
  ((joint_values
    :reader joint_values
    :initarg :joint_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass iksolver-response (<iksolver-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <iksolver-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'iksolver-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name final_project-srv:<iksolver-response> is deprecated: use final_project-srv:iksolver-response instead.")))

(cl:ensure-generic-function 'joint_values-val :lambda-list '(m))
(cl:defmethod joint_values-val ((m <iksolver-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader final_project-srv:joint_values-val is deprecated.  Use final_project-srv:joint_values instead.")
  (joint_values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <iksolver-response>) ostream)
  "Serializes a message object of type '<iksolver-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joint_values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <iksolver-response>) istream)
  "Deserializes a message object of type '<iksolver-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<iksolver-response>)))
  "Returns string type for a service object of type '<iksolver-response>"
  "final_project/iksolverResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'iksolver-response)))
  "Returns string type for a service object of type 'iksolver-response"
  "final_project/iksolverResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<iksolver-response>)))
  "Returns md5sum for a message object of type '<iksolver-response>"
  "c531b06618eadc33dc6f14fc3026e8e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'iksolver-response)))
  "Returns md5sum for a message object of type 'iksolver-response"
  "c531b06618eadc33dc6f14fc3026e8e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<iksolver-response>)))
  "Returns full string definition for message of type '<iksolver-response>"
  (cl:format cl:nil "float64[] joint_values~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'iksolver-response)))
  "Returns full string definition for message of type 'iksolver-response"
  (cl:format cl:nil "float64[] joint_values~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <iksolver-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <iksolver-response>))
  "Converts a ROS message object to a list"
  (cl:list 'iksolver-response
    (cl:cons ':joint_values (joint_values msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'iksolver)))
  'iksolver-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'iksolver)))
  'iksolver-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'iksolver)))
  "Returns string type for a service object of type '<iksolver>"
  "final_project/iksolver")