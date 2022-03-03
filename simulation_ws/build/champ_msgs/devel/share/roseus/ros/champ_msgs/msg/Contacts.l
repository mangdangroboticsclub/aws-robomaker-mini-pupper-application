;; Auto-generated. Do not edit!


(when (boundp 'champ_msgs::Contacts)
  (if (not (find-package "CHAMP_MSGS"))
    (make-package "CHAMP_MSGS"))
  (shadow 'Contacts (find-package "CHAMP_MSGS")))
(unless (find-package "CHAMP_MSGS::CONTACTS")
  (make-package "CHAMP_MSGS::CONTACTS"))

(in-package "ROS")
;;//! \htmlinclude Contacts.msg.html


(defclass champ_msgs::Contacts
  :super ros::object
  :slots (_contacts ))

(defmethod champ_msgs::Contacts
  (:init
   (&key
    ((:contacts __contacts) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _contacts __contacts)
   self)
  (:contacts
   (&optional __contacts)
   (if __contacts (setq _contacts __contacts)) _contacts)
  (:serialization-length
   ()
   (+
    ;; bool[] _contacts
    (* 1    (length _contacts)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[] _contacts
     (write-long (length _contacts) s)
     (dotimes (i (length _contacts))
       (if (elt _contacts i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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

(setf (get champ_msgs::Contacts :md5sum-) "3470d51bc28d5527f9ed97eb122d52f4")
(setf (get champ_msgs::Contacts :datatype-) "champ_msgs/Contacts")
(setf (get champ_msgs::Contacts :definition-)
      "bool[] contacts
")



(provide :champ_msgs/Contacts "3470d51bc28d5527f9ed97eb122d52f4")


