;; Auto-generated. Do not edit!


(when (boundp 'line_lbd::my_pose)
  (if (not (find-package "LINE_LBD"))
    (make-package "LINE_LBD"))
  (shadow 'my_pose (find-package "LINE_LBD")))
(unless (find-package "LINE_LBD::MY_POSE")
  (make-package "LINE_LBD::MY_POSE"))

(in-package "ROS")
;;//! \htmlinclude my_pose.msg.html


(defclass line_lbd::my_pose
  :super ros::object
  :slots (_id _Rotation _Trans _rot_tcw _trans_tcw ))

(defmethod line_lbd::my_pose
  (:init
   (&key
    ((:id __id) "")
    ((:Rotation __Rotation) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:Trans __Trans) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rot_tcw __rot_tcw) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:trans_tcw __trans_tcw) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _Rotation __Rotation)
   (setq _Trans __Trans)
   (setq _rot_tcw __rot_tcw)
   (setq _trans_tcw __trans_tcw)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:Rotation
   (&optional __Rotation)
   (if __Rotation (setq _Rotation __Rotation)) _Rotation)
  (:Trans
   (&optional __Trans)
   (if __Trans (setq _Trans __Trans)) _Trans)
  (:rot_tcw
   (&optional __rot_tcw)
   (if __rot_tcw (setq _rot_tcw __rot_tcw)) _rot_tcw)
  (:trans_tcw
   (&optional __trans_tcw)
   (if __trans_tcw (setq _trans_tcw __trans_tcw)) _trans_tcw)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; float64[] _Rotation
    (* 8    (length _Rotation)) 4
    ;; float64[] _Trans
    (* 8    (length _Trans)) 4
    ;; float64[] _rot_tcw
    (* 8    (length _rot_tcw)) 4
    ;; float64[] _trans_tcw
    (* 8    (length _trans_tcw)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; float64[] _Rotation
     (write-long (length _Rotation) s)
     (dotimes (i (length _Rotation))
       (sys::poke (elt _Rotation i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _Trans
     (write-long (length _Trans) s)
     (dotimes (i (length _Trans))
       (sys::poke (elt _Trans i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _rot_tcw
     (write-long (length _rot_tcw) s)
     (dotimes (i (length _rot_tcw))
       (sys::poke (elt _rot_tcw i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _trans_tcw
     (write-long (length _trans_tcw) s)
     (dotimes (i (length _trans_tcw))
       (sys::poke (elt _trans_tcw i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _Rotation
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Rotation (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _Rotation i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _Trans
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Trans (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _Trans i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _rot_tcw
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rot_tcw (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rot_tcw i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _trans_tcw
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trans_tcw (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _trans_tcw i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get line_lbd::my_pose :md5sum-) "d0887023c1ef3c2d1d16e636bd70b512")
(setf (get line_lbd::my_pose :datatype-) "line_lbd/my_pose")
(setf (get line_lbd::my_pose :definition-)
      "string id
float64[] Rotation
float64[] Trans
float64[] rot_tcw
float64[] trans_tcw

")



(provide :line_lbd/my_pose "d0887023c1ef3c2d1d16e636bd70b512")


