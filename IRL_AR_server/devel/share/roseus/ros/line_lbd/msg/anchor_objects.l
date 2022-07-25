;; Auto-generated. Do not edit!


(when (boundp 'line_lbd::anchor_objects)
  (if (not (find-package "LINE_LBD"))
    (make-package "LINE_LBD"))
  (shadow 'anchor_objects (find-package "LINE_LBD")))
(unless (find-package "LINE_LBD::ANCHOR_OBJECTS")
  (make-package "LINE_LBD::ANCHOR_OBJECTS"))

(in-package "ROS")
;;//! \htmlinclude anchor_objects.msg.html


(defclass line_lbd::anchor_objects
  :super ros::object
  :slots (_id _size _AnchorPoses ))

(defmethod line_lbd::anchor_objects
  (:init
   (&key
    ((:id __id) "")
    ((:size __size) 0)
    ((:AnchorPoses __AnchorPoses) (let (r) (dotimes (i 0) (push (instance line_lbd::anchor_pose :init) r)) r))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _size (round __size))
   (setq _AnchorPoses __AnchorPoses)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:AnchorPoses
   (&rest __AnchorPoses)
   (if (keywordp (car __AnchorPoses))
       (send* _AnchorPoses __AnchorPoses)
     (progn
       (if __AnchorPoses (setq _AnchorPoses (car __AnchorPoses)))
       _AnchorPoses)))
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; int8 _size
    1
    ;; line_lbd/anchor_pose[] _AnchorPoses
    (apply #'+ (send-all _AnchorPoses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; int8 _size
       (write-byte _size s)
     ;; line_lbd/anchor_pose[] _AnchorPoses
     (write-long (length _AnchorPoses) s)
     (dolist (elem _AnchorPoses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _size
     (setq _size (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _size 127) (setq _size (- _size 256)))
   ;; line_lbd/anchor_pose[] _AnchorPoses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _AnchorPoses (let (r) (dotimes (i n) (push (instance line_lbd::anchor_pose :init) r)) r))
     (dolist (elem- _AnchorPoses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get line_lbd::anchor_objects :md5sum-) "22c7b348a4a51cbd4089c0505dd161bb")
(setf (get line_lbd::anchor_objects :datatype-) "line_lbd/anchor_objects")
(setf (get line_lbd::anchor_objects :definition-)
      "string id
int8 size
anchor_pose[] AnchorPoses
================================================================================
MSG: line_lbd/anchor_pose
float32 top
float32 bottom
float32 left
float32 right
")



(provide :line_lbd/anchor_objects "22c7b348a4a51cbd4089c0505dd161bb")


