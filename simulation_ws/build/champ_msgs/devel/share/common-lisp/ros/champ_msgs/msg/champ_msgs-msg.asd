
(cl:in-package :asdf)

(defsystem "champ_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Contacts" :depends-on ("_package_Contacts"))
    (:file "_package_Contacts" :depends-on ("_package"))
    (:file "ContactsStamped" :depends-on ("_package_ContactsStamped"))
    (:file "_package_ContactsStamped" :depends-on ("_package"))
    (:file "Imu" :depends-on ("_package_Imu"))
    (:file "_package_Imu" :depends-on ("_package"))
    (:file "Joints" :depends-on ("_package_Joints"))
    (:file "_package_Joints" :depends-on ("_package"))
    (:file "PID" :depends-on ("_package_PID"))
    (:file "_package_PID" :depends-on ("_package"))
    (:file "Point" :depends-on ("_package_Point"))
    (:file "_package_Point" :depends-on ("_package"))
    (:file "PointArray" :depends-on ("_package_PointArray"))
    (:file "_package_PointArray" :depends-on ("_package"))
    (:file "Pose" :depends-on ("_package_Pose"))
    (:file "_package_Pose" :depends-on ("_package"))
    (:file "Velocities" :depends-on ("_package_Velocities"))
    (:file "_package_Velocities" :depends-on ("_package"))
  ))