; Auto-generated. Do not edit!


(cl:in-package champ_msgs-msg)


;//! \htmlinclude Velocities.msg.html

(cl:defclass <Velocities> (roslisp-msg-protocol:ros-message)
  ((linear_x
    :reader linear_x
    :initarg :linear_x
    :type cl:float
    :initform 0.0)
   (linear_y
    :reader linear_y
    :initarg :linear_y
    :type cl:float
    :initform 0.0)
   (angular_z
    :reader angular_z
    :initarg :angular_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass Velocities (<Velocities>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Velocities>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Velocities)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name champ_msgs-msg:<Velocities> is deprecated: use champ_msgs-msg:Velocities instead.")))

(cl:ensure-generic-function 'linear_x-val :lambda-list '(m))
(cl:defmethod linear_x-val ((m <Velocities>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader champ_msgs-msg:linear_x-val is deprecated.  Use champ_msgs-msg:linear_x instead.")
  (linear_x m))

(cl:ensure-generic-function 'linear_y-val :lambda-list '(m))
(cl:defmethod linear_y-val ((m <Velocities>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader champ_msgs-msg:linear_y-val is deprecated.  Use champ_msgs-msg:linear_y instead.")
  (linear_y m))

(cl:ensure-generic-function 'angular_z-val :lambda-list '(m))
(cl:defmethod angular_z-val ((m <Velocities>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader champ_msgs-msg:angular_z-val is deprecated.  Use champ_msgs-msg:angular_z instead.")
  (angular_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Velocities>) ostream)
  "Serializes a message object of type '<Velocities>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Velocities>) istream)
  "Deserializes a message object of type '<Velocities>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Velocities>)))
  "Returns string type for a message object of type '<Velocities>"
  "champ_msgs/Velocities")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Velocities)))
  "Returns string type for a message object of type 'Velocities"
  "champ_msgs/Velocities")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Velocities>)))
  "Returns md5sum for a message object of type '<Velocities>"
  "0ee8ad4cb7809be2d5a0a76352fea86a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Velocities)))
  "Returns md5sum for a message object of type 'Velocities"
  "0ee8ad4cb7809be2d5a0a76352fea86a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Velocities>)))
  "Returns full string definition for message of type '<Velocities>"
  (cl:format cl:nil "~%float32 linear_x~%float32 linear_y~%float32 angular_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Velocities)))
  "Returns full string definition for message of type 'Velocities"
  (cl:format cl:nil "~%float32 linear_x~%float32 linear_y~%float32 angular_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Velocities>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Velocities>))
  "Converts a ROS message object to a list"
  (cl:list 'Velocities
    (cl:cons ':linear_x (linear_x msg))
    (cl:cons ':linear_y (linear_y msg))
    (cl:cons ':angular_z (angular_z msg))
))
