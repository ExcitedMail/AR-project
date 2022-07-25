;; Auto-generated. Do not edit!


(when (boundp 'line_lbd::updateServer)
  (if (not (find-package "LINE_LBD"))
    (make-package "LINE_LBD"))
  (shadow 'updateServer (find-package "LINE_LBD")))
(unless (find-package "LINE_LBD::UPDATESERVER")
  (make-package "LINE_LBD::UPDATESERVER"))

(in-package "ROS")
;;//! \htmlinclude updateServer.msg.html


(defclass line_lbd::updateServer
  :super ros::object
  :slots (_id _rot _trans ))

(defmethod line_lbd::updateServer
  (:init
   (&key
    ((:id __id) "")
    ((:rot __rot) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:trans __trans) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _rot __rot)
   (setq _trans __trans)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:rot
   (&optional __rot)
   (if __rot (setq _rot __rot)) _rot)
  (:trans
   (&optional __trans)
   (if __trans (setq _trans __trans)) _trans)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; float64[] _rot
    (* 8    (length _rot)) 4
    ;; float64[] _trans
    (* 8    (length _trans)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; float64[] _rot
     (write-long (length _rot) s)
     (dotimes (i (length _rot))
       (sys::poke (elt _rot i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _trans
     (write-long (length _trans) s)
     (dotimes (i (length _trans))
       (sys::poke (elt _trans i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _rot
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rot (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rot i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _trans
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trans (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _trans i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get line_lbd::updateServer :md5sum-) "80a7463232d5994edae93915b0f1efbb")
(setf (get line_lbd::updateServer :datatype-) "line_lbd/updateServer")
(setf (get line_lbd::updateServer :definition-)
      "string id
float64[] rot
float64[] trans
")



(provide :line_lbd/updateServer "80a7463232d5994edae93915b0f1efbb")


