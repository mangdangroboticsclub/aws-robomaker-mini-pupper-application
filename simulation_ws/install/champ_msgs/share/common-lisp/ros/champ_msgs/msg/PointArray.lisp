; Auto-generated. Do not edit!


(cl:in-package champ_msgs-msg)


;//! \htmlinclude PointArray.msg.html

(cl:defclass <PointArray> (roslisp-msg-protocol:ros-message)
  ((lf
    :reader lf
    :initarg :lf
    :type champ_msgs-msg:Point
    :initform (cl:make-instance 'champ_msgs-msg:Point))
   (rf
    :reader rf
    :initarg :rf
    :type champ_msgs-msg:Point
    :initform (cl:make-instance 'champ_msgs-msg:Point))
   (lh
    :reader lh
    :initarg :lh
    :type champ_msgs-msg:Point
    :initform (cl:make-instance 'champ_msgs-msg:Point))
   (rh
    :reader rh
    :initarg :rh
    :type champ_msgs-msg:Point
    :initform (cl:make-instance 'champ_msgs-msg:Point)))
)

(cl:defclass PointArray (<PointArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PointArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PointArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name champ_msgs-msg:<PointArray> is deprecated: use champ_msgs-msg:PointArray instead.")))

(cl:ensure-generic-function 'lf-val :lambda-list '(m))
(cl:defmethod lf-val ((m <PointArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader champ_msgs-msg:lf-val is deprecated.  Use champ_msgs-msg:lf instead.")
  (lf m))

(cl:ensure-generic-function 'rf-val :lambda-list '(m))
(cl:defmethod rf-val ((m <PointArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader champ_msgs-msg:rf-val is deprecated.  Use champ_msgs-msg:rf instead.")
  (rf m))

(cl:ensure-generic-function 'lh-val :lambda-list '(m))
(cl:defmethod lh-val ((m <PointArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader champ_msgs-msg:lh-val is deprecated.  Use champ_msgs-msg:lh instead.")
  (lh m))

(cl:ensure-generic-function 'rh-val :lambda-list '(m))
(cl:defmethod rh-val ((m <PointArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader champ_msgs-msg:rh-val is deprecated.  Use champ_msgs-msg:rh instead.")
  (rh m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PointArray>) ostream)
  "Serializes a message object of type '<PointArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lf) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rf) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lh) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rh) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PointArray>) istream)
  "Deserializes a message object of type '<PointArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lf) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rf) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lh) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rh) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PointArray>)))
  "Returns string type for a message object of type '<PointArray>"
  "champ_msgs/PointArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointArray)))
  "Returns string type for a message object of type 'PointArray"
  "champ_msgs/PointArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PointArray>)))
  "Returns md5sum for a message object of type '<PointArray>"
  "e70791c6db4935709e33b9966d293c36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PointArray)))
  "Returns md5sum for a message object of type 'PointArray"
  "e70791c6db4935709e33b9966d293c36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PointArray>)))
  "Returns full string definition for message of type '<PointArray>"
  (cl:format cl:nil "champ_msgs/Point lf~%champ_msgs/Point rf~%champ_msgs/Point lh~%champ_msgs/Point rh~%================================================================================~%MSG: champ_msgs/Point~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PointArray)))
  "Returns full string definition for message of type 'PointArray"
  (cl:format cl:nil "champ_msgs/Point lf~%champ_msgs/Point rf~%champ_msgs/Point lh~%champ_msgs/Point rh~%================================================================================~%MSG: champ_msgs/Point~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PointArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lf))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rf))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lh))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rh))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PointArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PointArray
    (cl:cons ':lf (lf msg))
    (cl:cons ':rf (rf msg))
    (cl:cons ':lh (lh msg))
    (cl:cons ':rh (rh msg))
))
