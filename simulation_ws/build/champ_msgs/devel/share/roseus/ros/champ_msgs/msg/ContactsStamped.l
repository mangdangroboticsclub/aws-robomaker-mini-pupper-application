;; Auto-generated. Do not edit!


(when (boundp 'champ_msgs::ContactsStamped)
  (if (not (find-package "CHAMP_MSGS"))
    (make-package "CHAMP_MSGS"))
  (shadow 'ContactsStamped (find-package "CHAMP_MSGS")))
(unless (find-package "CHAMP_MSGS::CONTACTSSTAMPED")
  (make-package "CHAMP_MSGS::CONTACTSSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude ContactsStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass champ_msgs::ContactsStamped
  :super ros::object
  :slots (_header _contacts ))

(defmethod champ_msgs::ContactsStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:contacts __contacts) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _contacts __contacts)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:contacts
   (&optional __contacts)
   (if __contacts (setq _contacts __contacts)) _contacts)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool[] _contacts
    (* 1    (length _contacts)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool[] _contacts
     (write-long (length _contacts) s)
     (dotimes (i (length _contacts))
       (if (elt _contacts i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool[] _contacts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contacts (make-list n))
     (dotimes (i n)
     (setf (elt _contacts i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get champ_msgs::ContactsStamped :md5sum-) "4a7d3590ac946fc3ce244acb4604e039")
(setf (get champ_msgs::ContactsStamped :datatype-) "champ_msgs/ContactsStamped")
(setf (get champ_msgs::ContactsStamped :definition-)
      "Header header
bool[] contacts
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :champ_msgs/ContactsStamped "4a7d3590ac946fc3ce244acb4604e039")


