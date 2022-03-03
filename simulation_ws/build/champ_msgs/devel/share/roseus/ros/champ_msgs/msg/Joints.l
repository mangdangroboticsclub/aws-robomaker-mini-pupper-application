;; Auto-generated. Do not edit!


(when (boundp 'champ_msgs::Joints)
  (if (not (find-package "CHAMP_MSGS"))
    (make-package "CHAMP_MSGS"))
  (shadow 'Joints (find-package "CHAMP_MSGS")))
(unless (find-package "CHAMP_MSGS::JOINTS")
  (make-package "CHAMP_MSGS::JOINTS"))

(in-package "ROS")
;;//! \htmlinclude Joints.msg.html


(defclass champ_msgs::Joints
  :super ros::object
  :slots (_position ))

(defmethod champ_msgs::Joints
  (:init
   (&key
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _position __position)
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; float32[] _position
    (* 4    (length _position)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get champ_msgs::Joints :md5sum-) "8ec164ae840396df197eeb512c1b8515")
(setf (get champ_msgs::Joints :datatype-) "champ_msgs/Joints")
(setf (get champ_msgs::Joints :definition-)
      "float32[] position
")



(provide :champ_msgs/Joints "8ec164ae840396df197eeb512c1b8515")


