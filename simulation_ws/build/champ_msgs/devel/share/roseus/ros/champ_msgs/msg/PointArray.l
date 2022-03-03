;; Auto-generated. Do not edit!


(when (boundp 'champ_msgs::PointArray)
  (if (not (find-package "CHAMP_MSGS"))
    (make-package "CHAMP_MSGS"))
  (shadow 'PointArray (find-package "CHAMP_MSGS")))
(unless (find-package "CHAMP_MSGS::POINTARRAY")
  (make-package "CHAMP_MSGS::POINTARRAY"))

(in-package "ROS")
;;//! \htmlinclude PointArray.msg.html


(defclass champ_msgs::PointArray
  :super ros::object
  :slots (_lf _rf _lh _rh ))

(defmethod champ_msgs::PointArray
  (:init
   (&key
    ((:lf __lf) (instance champ_msgs::Point :init))
    ((:rf __rf) (instance champ_msgs::Point :init))
    ((:lh __lh) (instance champ_msgs::Point :init))
    ((:rh __rh) (instance champ_msgs::Point :init))
    )
   (send-super :init)
   (setq _lf __lf)
   (setq _rf __rf)
   (setq _lh __lh)
   (setq _rh __rh)
   self)
  (:lf
   (&rest __lf)
   (if (keywordp (car __lf))
       (send* _lf __lf)
     (progn
       (if __lf (setq _lf (car __lf)))
       _lf)))
  (:rf
   (&rest __rf)
   (if (keywordp (car __rf))
       (send* _rf __rf)
     (progn
       (if __rf (setq _rf (car __rf)))
       _rf)))
  (:lh
   (&rest __lh)
   (if (keywordp (car __lh))
       (send* _lh __lh)
     (progn
       (if __lh (setq _lh (car __lh)))
       _lh)))
  (:rh
   (&rest __rh)
   (if (keywordp (car __rh))
       (send* _rh __rh)
     (progn
       (if __rh (setq _rh (car __rh)))
       _rh)))
  (:serialization-length
   ()
   (+
    ;; champ_msgs/Point _lf
    (send _lf :serialization-length)
    ;; champ_msgs/Point _rf
    (send _rf :serialization-length)
    ;; champ_msgs/Point _lh
    (send _lh :serialization-length)
    ;; champ_msgs/Point _rh
    (send _rh :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; champ_msgs/Point _lf
       (send _lf :serialize s)
     ;; champ_msgs/Point _rf
       (send _rf :serialize s)
     ;; champ_msgs/Point _lh
       (send _lh :serialize s)
     ;; champ_msgs/Point _rh
       (send _rh :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; champ_msgs/Point _lf
     (send _lf :deserialize buf ptr-) (incf ptr- (send _lf :serialization-length))
   ;; champ_msgs/Point _rf
     (send _rf :deserialize buf ptr-) (incf ptr- (send _rf :serialization-length))
   ;; champ_msgs/Point _lh
     (send _lh :deserialize buf ptr-) (incf ptr- (send _lh :serialization-length))
   ;; champ_msgs/Point _rh
     (send _rh :deserialize buf ptr-) (incf ptr- (send _rh :serialization-length))
   ;;
   self)
  )

(setf (get champ_msgs::PointArray :md5sum-) "e70791c6db4935709e33b9966d293c36")
(setf (get champ_msgs::PointArray :datatype-) "champ_msgs/PointArray")
(setf (get champ_msgs::PointArray :definition-)
      "champ_msgs/Point lf
champ_msgs/Point rf
champ_msgs/Point lh
champ_msgs/Point rh
================================================================================
MSG: champ_msgs/Point
float32 x
float32 y
float32 z
")



(provide :champ_msgs/PointArray "e70791c6db4935709e33b9966d293c36")


