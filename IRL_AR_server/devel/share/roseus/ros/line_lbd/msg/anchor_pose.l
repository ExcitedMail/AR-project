;; Auto-generated. Do not edit!


(when (boundp 'line_lbd::anchor_pose)
  (if (not (find-package "LINE_LBD"))
    (make-package "LINE_LBD"))
  (shadow 'anchor_pose (find-package "LINE_LBD")))
(unless (find-package "LINE_LBD::ANCHOR_POSE")
  (make-package "LINE_LBD::ANCHOR_POSE"))

(in-package "ROS")
;;//! \htmlinclude anchor_pose.msg.html


(defclass line_lbd::anchor_pose
  :super ros::object
  :slots (_top _bottom _left _right ))

(defmethod line_lbd::anchor_pose
  (:init
   (&key
    ((:top __top) 0.0)
    ((:bottom __bottom) 0.0)
    ((:left __left) 0.0)
    ((:right __right) 0.0)
    )
   (send-super :init)
   (setq _top (float __top))
   (setq _bottom (float __bottom))
   (setq _left (float __left))
   (setq _right (float __right))
   self)
  (:top
   (&optional __top)
   (if __top (setq _top __top)) _top)
  (:bottom
   (&optional __bottom)
   (if __bottom (setq _bottom __bottom)) _bottom)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:serialization-length
   ()
   (+
    ;; float32 _top
    4
    ;; float32 _bottom
    4
    ;; float32 _left
    4
    ;; float32 _right
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _top
       (sys::poke _top (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bottom
       (sys::poke _bottom (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _left
       (sys::poke _left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right
       (sys::poke _right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _top
     (setq _top (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bottom
     (setq _bottom (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _left
     (setq _left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right
     (setq _right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get line_lbd::anchor_pose :md5sum-) "05c67e0263677513598d2ad449247941")
(setf (get line_lbd::anchor_pose :datatype-) "line_lbd/anchor_pose")
(setf (get line_lbd::anchor_pose :definition-)
      "float32 top
float32 bottom
float32 left
float32 right
")



(provide :line_lbd/anchor_pose "05c67e0263677513598d2ad449247941")


