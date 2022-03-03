;; Auto-generated. Do not edit!


(when (boundp 'champ_msgs::Imu)
  (if (not (find-package "CHAMP_MSGS"))
    (make-package "CHAMP_MSGS"))
  (shadow 'Imu (find-package "CHAMP_MSGS")))
(unless (find-package "CHAMP_MSGS::IMU")
  (make-package "CHAMP_MSGS::IMU"))

(in-package "ROS")
;;//! \htmlinclude Imu.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass champ_msgs::Imu
  :super ros::object
  :slots (_orientation _linear_acceleration _angular_velocity _magnetic_field ))

(defmethod champ_msgs::Imu
  (:init
   (&key
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:linear_acceleration __linear_acceleration) (instance geometry_msgs::Vector3 :init))
    ((:angular_velocity __angular_velocity) (instance geometry_msgs::Vector3 :init))
    ((:magnetic_field __magnetic_field) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _orientation __orientation)
   (setq _linear_acceleration __linear_acceleration)
   (setq _angular_velocity __angular_velocity)
   (setq _magnetic_field __magnetic_field)
   self)
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:linear_acceleration
   (&rest __linear_acceleration)
   (if (keywordp (car __linear_acceleration))
       (send* _linear_acceleration __linear_acceleration)
     (progn
       (if __linear_acceleration (setq _linear_acceleration (car __linear_acceleration)))
       _linear_acceleration)))
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:magnetic_field
   (&rest __magnetic_field)
   (if (keywordp (car __magnetic_field))
       (send* _magnetic_field __magnetic_field)
     (progn
       (if __magnetic_field (setq _magnetic_field (car __magnetic_field)))
       _magnetic_field)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; geometry_msgs/Vector3 _linear_acceleration
    (send _linear_acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _angular_velocity
    (send _angular_velocity :serialization-length)
    ;; geometry_msgs/Vector3 _magnetic_field
    (send _magnetic_field :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; geometry_msgs/Vector3 _linear_acceleration
       (send _linear_acceleration :serialize s)
     ;; geometry_msgs/Vector3 _angular_velocity
       (send _angular_velocity :serialize s)
     ;; geometry_msgs/Vector3 _magnetic_field
       (send _magnetic_field :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; geometry_msgs/Vector3 _linear_acceleration
     (send _linear_acceleration :deserialize buf ptr-) (incf ptr- (send _linear_acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;; geometry_msgs/Vector3 _magnetic_field
     (send _magnetic_field :deserialize buf ptr-) (incf ptr- (send _magnetic_field :serialization-length))
   ;;
   self)
  )

(setf (get champ_msgs::Imu :md5sum-) "02bb3297b23e6039e1b4960bc35dbc3e")
(setf (get champ_msgs::Imu :datatype-) "champ_msgs/Imu")
(setf (get champ_msgs::Imu :definition-)
      "geometry_msgs/Quaternion orientation
geometry_msgs/Vector3 linear_acceleration
geometry_msgs/Vector3 angular_velocity
geometry_msgs/Vector3 magnetic_field

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :champ_msgs/Imu "02bb3297b23e6039e1b4960bc35dbc3e")


