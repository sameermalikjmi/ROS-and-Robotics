
(cl:in-package :asdf)

(defsystem "final_project-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "iksolver" :depends-on ("_package_iksolver"))
    (:file "_package_iksolver" :depends-on ("_package"))
  ))