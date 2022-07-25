;; Auto-generated. Do not edit!


(when (boundp 'line_lbd::Keyline)
  (if (not (find-package "LINE_LBD"))
    (make-package "LINE_LBD"))
  (shadow 'Keyline (find-package "LINE_LBD")))
(unless (find-package "LINE_LBD::KEYLINE")
  (make-package "LINE_LBD::KEYLINE"))

(in-package "ROS")
;;//! \htmlinclude Keyline.msg.html


(defclass line_lbd::Keyline
  :super ros::object
  :slots (_startPointX _startPointY _endPointX _endPointY ))

(defmethod line_lbd::Keyline
  (:init
   (&key
    ((:startPointX __startPointX) 0.0)
    ((:startPointY __startPointY) 0.0)
    ((:endPointX __endPointX) 0.0)
    ((:endPointY __endPointY) 0.0)
    )
   (send-super :init)
   (setq _startPointX (float __startPointX))
   (setq _startPointY (float __startPointY))
   (setq _endPointX (float __endPointX))
   (setq _endPointY (float __endPointY))
   self)
  (:startPointX
   (&optional __startPointX)
   (if __startPointX (setq _startPointX __startPointX)) _startPointX)
  (:startPointY
   (&optional __startPointY)
   (if __startPointY (setq _startPointY __startPointY)) _startPointY)
  (:endPointX
   (&optional __endPointX)
   (if __endPointX (setq _endPointX __endPointX)) _endPointX)
  (:endPointY
   (&optional __endPointY)
   (if __endPointY (setq _endPointY __endPointY)) _endPointY)
  (:serialization-length
   ()
   (+
    ;; float32 _startPointX
    4
    ;; float32 _startPointY
    4
    ;; float32 _endPointX
    4
    ;; float32 _endPointY
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _startPointX
       (sys::poke _startPointX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _startPointY
       (sys::poke _startPointY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _endPointX
       (sys::poke _endPointX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _endPointY
       (sys::poke _endPointY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _startPointX
     (setq _startPointX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _startPointY
     (setq _startPointY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _endPointX
     (setq _endPointX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _endPointY
     (setq _endPointY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get line_lbd::Keyline :md5sum-) "4531a34c2acfb515e3db3e6def66c299")
(setf (get line_lbd::Keyline :datatype-) "line_lbd/Keyline")
(setf (get line_lbd::Keyline :definition-)
      "float32 startPointX
float32 startPointY
float32 endPointX
float32 endPointY
")



(provide :line_lbd/Keyline "4531a34c2acfb515e3db3e6def66c299")


