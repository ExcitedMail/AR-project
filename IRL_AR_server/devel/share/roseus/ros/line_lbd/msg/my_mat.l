;; Auto-generated. Do not edit!


(when (boundp 'line_lbd::my_mat)
  (if (not (find-package "LINE_LBD"))
    (make-package "LINE_LBD"))
  (shadow 'my_mat (find-package "LINE_LBD")))
(unless (find-package "LINE_LBD::MY_MAT")
  (make-package "LINE_LBD::MY_MAT"))

(in-package "ROS")
;;//! \htmlinclude my_mat.msg.html


(defclass line_lbd::my_mat
  :super ros::object
  :slots (_pose ))

(defmethod line_lbd::my_mat
  (:init
   (&key
    ((:pose __pose) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&optional __pose)
   (if __pose (setq _pose __pose)) _pose)
  (:serialization-length
   ()
   (+
    ;; float64[] _pose
    (* 8    (length _pose)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _pose
     (write-long (length _pose) s)
     (dotimes (i (length _pose))
       (sys::poke (elt _pose i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pose i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get line_lbd::my_mat :md5sum-) "76249fb45cba333e6a82c7f91cfe1879")
(setf (get line_lbd::my_mat :datatype-) "line_lbd/my_mat")
(setf (get line_lbd::my_mat :definition-)
      "float64[] pose



")



(provide :line_lbd/my_mat "76249fb45cba333e6a82c7f91cfe1879")


