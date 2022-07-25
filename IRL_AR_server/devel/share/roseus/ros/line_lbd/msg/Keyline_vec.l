;; Auto-generated. Do not edit!


(when (boundp 'line_lbd::Keyline_vec)
  (if (not (find-package "LINE_LBD"))
    (make-package "LINE_LBD"))
  (shadow 'Keyline_vec (find-package "LINE_LBD")))
(unless (find-package "LINE_LBD::KEYLINE_VEC")
  (make-package "LINE_LBD::KEYLINE_VEC"))

(in-package "ROS")
;;//! \htmlinclude Keyline_vec.msg.html


(defclass line_lbd::Keyline_vec
  :super ros::object
  :slots (_id _length _Keylines ))

(defmethod line_lbd::Keyline_vec
  (:init
   (&key
    ((:id __id) "")
    ((:length __length) 0)
    ((:Keylines __Keylines) (let (r) (dotimes (i 0) (push (instance line_lbd::Keyline :init) r)) r))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _length (round __length))
   (setq _Keylines __Keylines)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:Keylines
   (&rest __Keylines)
   (if (keywordp (car __Keylines))
       (send* _Keylines __Keylines)
     (progn
       (if __Keylines (setq _Keylines (car __Keylines)))
       _Keylines)))
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; uint32 _length
    4
    ;; line_lbd/Keyline[] _Keylines
    (apply #'+ (send-all _Keylines :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; uint32 _length
       (write-long _length s)
     ;; line_lbd/Keyline[] _Keylines
     (write-long (length _Keylines) s)
     (dolist (elem _Keylines)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _length
     (setq _length (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; line_lbd/Keyline[] _Keylines
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Keylines (let (r) (dotimes (i n) (push (instance line_lbd::Keyline :init) r)) r))
     (dolist (elem- _Keylines)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get line_lbd::Keyline_vec :md5sum-) "66d8e92245e6e28ba0b9fa23e5b92a2d")
(setf (get line_lbd::Keyline_vec :datatype-) "line_lbd/Keyline_vec")
(setf (get line_lbd::Keyline_vec :definition-)
      "string id
uint32 length
Keyline[] Keylines
================================================================================
MSG: line_lbd/Keyline
float32 startPointX
float32 startPointY
float32 endPointX
float32 endPointY
")



(provide :line_lbd/Keyline_vec "66d8e92245e6e28ba0b9fa23e5b92a2d")


