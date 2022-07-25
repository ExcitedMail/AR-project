;; Auto-generated. Do not edit!


(when (boundp 'line_lbd::combined_boxes)
  (if (not (find-package "LINE_LBD"))
    (make-package "LINE_LBD"))
  (shadow 'combined_boxes (find-package "LINE_LBD")))
(unless (find-package "LINE_LBD::COMBINED_BOXES")
  (make-package "LINE_LBD::COMBINED_BOXES"))

(in-package "ROS")
;;//! \htmlinclude combined_boxes.msg.html


(defclass line_lbd::combined_boxes
  :super ros::object
  :slots (_type_ _BoundingBox2D _BoundingBox3D _class_name ))

(defmethod line_lbd::combined_boxes
  (:init
   (&key
    ((:type_ __type_) (make-array 0 :initial-element 0 :element-type :integer))
    ((:BoundingBox2D __BoundingBox2D) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:BoundingBox3D __BoundingBox3D) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:class_name __class_name) "")
    )
   (send-super :init)
   (setq _type_ __type_)
   (setq _BoundingBox2D __BoundingBox2D)
   (setq _BoundingBox3D __BoundingBox3D)
   (setq _class_name (string __class_name))
   self)
  (:type_
   (&optional __type_)
   (if __type_ (setq _type_ __type_)) _type_)
  (:BoundingBox2D
   (&optional __BoundingBox2D)
   (if __BoundingBox2D (setq _BoundingBox2D __BoundingBox2D)) _BoundingBox2D)
  (:BoundingBox3D
   (&optional __BoundingBox3D)
   (if __BoundingBox3D (setq _BoundingBox3D __BoundingBox3D)) _BoundingBox3D)
  (:class_name
   (&optional __class_name)
   (if __class_name (setq _class_name __class_name)) _class_name)
  (:serialization-length
   ()
   (+
    ;; int8[] _type_
    (* 1    (length _type_)) 4
    ;; float32[] _BoundingBox2D
    (* 4    (length _BoundingBox2D)) 4
    ;; float32[] _BoundingBox3D
    (* 4    (length _BoundingBox3D)) 4
    ;; string _class_name
    4 (length _class_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8[] _type_
     (write-long (length _type_) s)
     (dotimes (i (length _type_))
       (write-byte (elt _type_ i) s)
       )
     ;; float32[] _BoundingBox2D
     (write-long (length _BoundingBox2D) s)
     (dotimes (i (length _BoundingBox2D))
       (sys::poke (elt _BoundingBox2D i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _BoundingBox3D
     (write-long (length _BoundingBox3D) s)
     (dotimes (i (length _BoundingBox3D))
       (sys::poke (elt _BoundingBox3D i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string _class_name
       (write-long (length _class_name) s) (princ _class_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8[] _type_
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _type_ (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _type_ i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _type_ i) 127) (setf (elt _type_ i) (- (elt _type_ i) 256)))
     ))
   ;; float32[] _BoundingBox2D
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _BoundingBox2D (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _BoundingBox2D i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _BoundingBox3D
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _BoundingBox3D (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _BoundingBox3D i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string _class_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _class_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get line_lbd::combined_boxes :md5sum-) "341d13f258e59a300e2f47d716f31914")
(setf (get line_lbd::combined_boxes :datatype-) "line_lbd/combined_boxes")
(setf (get line_lbd::combined_boxes :definition-)
      "int8[] type_
float32[] BoundingBox2D
float32[] BoundingBox3D
string class_name
")



(provide :line_lbd/combined_boxes "341d13f258e59a300e2f47d716f31914")


