; Auto-generated. Do not edit!


(cl:in-package champ_msgs-msg)


;//! \htmlinclude ContactsStamped.msg.html

(cl:defclass <ContactsStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (contacts
    :reader contacts
    :initarg :contacts
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass ContactsStamped (<ContactsStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ContactsStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ContactsStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name champ_msgs-msg:<ContactsStamped> is deprecated: use champ_msgs-msg:ContactsStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ContactsStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader champ_msgs-msg:header-val is deprecated.  Use champ_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'contacts-val :lambda-list '(m))
(cl:defmethod contacts-val ((m <ContactsStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader champ_msgs-msg:contacts-val is deprecated.  Use champ_msgs-msg:contacts instead.")
  (contacts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ContactsStamped>) ostream)
  "Serializes a message object of type '<ContactsStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'contacts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'contacts))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ContactsStamped>) istream)
  "Deserializes a message object of type '<ContactsStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'contacts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'contacts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ContactsStamped>)))
  "Returns string type for a message object of type '<ContactsStamped>"
  "champ_msgs/ContactsStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContactsStamped)))
  "Returns string type for a message object of type 'ContactsStamped"
  "champ_msgs/ContactsStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ContactsStamped>)))
  "Returns md5sum for a message object of type '<ContactsStamped>"
  "4a7d3590ac946fc3ce244acb4604e039")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ContactsStamped)))
  "Returns md5sum for a message object of type 'ContactsStamped"
  "4a7d3590ac946fc3ce244acb4604e039")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ContactsStamped>)))
  "Returns full string definition for message of type '<ContactsStamped>"
  (cl:format cl:nil "Header header~%bool[] contacts~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ContactsStamped)))
  "Returns full string definition for message of type 'ContactsStamped"
  (cl:format cl:nil "Header header~%bool[] contacts~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ContactsStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'contacts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ContactsStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'ContactsStamped
    (cl:cons ':header (header msg))
    (cl:cons ':contacts (contacts msg))
))
