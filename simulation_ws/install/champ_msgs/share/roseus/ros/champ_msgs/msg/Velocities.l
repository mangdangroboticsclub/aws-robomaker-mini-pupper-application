;; Auto-generated. Do not edit!


(when (boundp 'champ_msgs::Velocities)
  (if (not (find-package "CHAMP_MSGS"))
    (make-package "CHAMP_MSGS"))
  (shadow 'Velocities (find-package "CHAMP_MSGS")))
(unless (find-package "CHAMP_MSGS::VELOCITIES")
  (make-package "CHAMP_MSGS::VELOCITIES"))

(in-package "ROS")
;;//! \htmlinclude Velocities.msg.html


(defclass champ_msgs::Velocities
  :super ros::object
  :slots (_linear_x _linear_y _angular_z ))

(defmethod champ_msgs::Velocities
  (:init
   (&key
    ((:linear_x __linear_x) 0.0)
    ((:linear_y __linear_y) 0.0)
    ((:angular_z __angular_z) 0.0)
    )
   (send-super :init)
   (setq _linear_x (float __linear_x))
   (setq _linear_y (float __linear_y))
   (setq _angular_z (float __angular_z))
   self)
  (:linear_x
   (&optional __linear_x)
   (if __linear_x (setq _linear_x __linear_x)) _linear_x)
  (:linear_y
   (&optional __linear_y)
   (if __linear_y (setq _linear_y __linear_y)) _linear_y)
  (:angular_z
   (&optional __angular_z)
   (if __angular_z (setq _angular_z __angular_z)) _angular_z)
  (:serialization-length
   ()
   (+
    ;; float32 _linear_x
    4
    ;; float32 _linear_y
    4
    ;; float32 _angular_z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _linear_x
       (sys::poke _linear_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _linear_y
       (sys::poke _linear_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_z
       (sys::poke _angular_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _linear_x
     (setq _linear_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _linear_y
     (setq _linear_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_z
     (setq _angular_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get champ_msgs::Velocities :md5sum-) "0ee8ad4cb7809be2d5a0a76352fea86a")
(setf (get champ_msgs::Velocities :datatype-) "champ_msgs/Velocities")
(setf (get champ_msgs::Velocities :definition-)
      "
float32 linear_x
float32 linear_y
float32 angular_z

")



(provide :champ_msgs/Velocities "0ee8ad4cb7809be2d5a0a76352fea86a")


