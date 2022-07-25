;; Auto-generated. Do not edit!


(when (boundp 'line_lbd::final_pose)
  (if (not (find-package "LINE_LBD"))
    (make-package "LINE_LBD"))
  (shadow 'final_pose (find-package "LINE_LBD")))
(unless (find-package "LINE_LBD::FINAL_POSE")
  (make-package "LINE_LBD::FINAL_POSE"))

(in-package "ROS")
;;//! \htmlinclude final_pose.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass line_lbd::final_pose
  :super ros::object
  :slots (_id _rot _trans _rot_tcw _trans_tcw _count _boxes _image_now _image_raw ))

(defmethod line_lbd::final_pose
  (:init
   (&key
    ((:id __id) "")
    ((:rot __rot) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:trans __trans) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rot_tcw __rot_tcw) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:trans_tcw __trans_tcw) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:count __count) 0)
    ((:boxes __boxes) (let (r) (dotimes (i 0) (push (instance line_lbd::combined_boxes :init) r)) r))
    ((:image_now __image_now) (instance sensor_msgs::Image :init))
    ((:image_raw __image_raw) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _rot __rot)
   (setq _trans __trans)
   (setq _rot_tcw __rot_tcw)
   (setq _trans_tcw __trans_tcw)
   (setq _count (round __count))
   (setq _boxes __boxes)
   (setq _image_now __image_now)
   (setq _image_raw __image_raw)
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
  (:rot_tcw
   (&optional __rot_tcw)
   (if __rot_tcw (setq _rot_tcw __rot_tcw)) _rot_tcw)
  (:trans_tcw
   (&optional __trans_tcw)
   (if __trans_tcw (setq _trans_tcw __trans_tcw)) _trans_tcw)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:boxes
   (&rest __boxes)
   (if (keywordp (car __boxes))
       (send* _boxes __boxes)
     (progn
       (if __boxes (setq _boxes (car __boxes)))
       _boxes)))
  (:image_now
   (&rest __image_now)
   (if (keywordp (car __image_now))
       (send* _image_now __image_now)
     (progn
       (if __image_now (setq _image_now (car __image_now)))
       _image_now)))
  (:image_raw
   (&rest __image_raw)
   (if (keywordp (car __image_raw))
       (send* _image_raw __image_raw)
     (progn
       (if __image_raw (setq _image_raw (car __image_raw)))
       _image_raw)))
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; float32[] _rot
    (* 4    (length _rot)) 4
    ;; float32[] _trans
    (* 4    (length _trans)) 4
    ;; float32[] _rot_tcw
    (* 4    (length _rot_tcw)) 4
    ;; float32[] _trans_tcw
    (* 4    (length _trans_tcw)) 4
    ;; uint32 _count
    4
    ;; line_lbd/combined_boxes[] _boxes
    (apply #'+ (send-all _boxes :serialization-length)) 4
    ;; sensor_msgs/Image _image_now
    (send _image_now :serialization-length)
    ;; sensor_msgs/Image _image_raw
    (send _image_raw :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; float32[] _rot
     (write-long (length _rot) s)
     (dotimes (i (length _rot))
       (sys::poke (elt _rot i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _trans
     (write-long (length _trans) s)
     (dotimes (i (length _trans))
       (sys::poke (elt _trans i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _rot_tcw
     (write-long (length _rot_tcw) s)
     (dotimes (i (length _rot_tcw))
       (sys::poke (elt _rot_tcw i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _trans_tcw
     (write-long (length _trans_tcw) s)
     (dotimes (i (length _trans_tcw))
       (sys::poke (elt _trans_tcw i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint32 _count
       (write-long _count s)
     ;; line_lbd/combined_boxes[] _boxes
     (write-long (length _boxes) s)
     (dolist (elem _boxes)
       (send elem :serialize s)
       )
     ;; sensor_msgs/Image _image_now
       (send _image_now :serialize s)
     ;; sensor_msgs/Image _image_raw
       (send _image_raw :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _rot
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rot (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rot i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _trans
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trans (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _trans i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _rot_tcw
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rot_tcw (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rot_tcw i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _trans_tcw
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trans_tcw (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _trans_tcw i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; line_lbd/combined_boxes[] _boxes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _boxes (let (r) (dotimes (i n) (push (instance line_lbd::combined_boxes :init) r)) r))
     (dolist (elem- _boxes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; sensor_msgs/Image _image_now
     (send _image_now :deserialize buf ptr-) (incf ptr- (send _image_now :serialization-length))
   ;; sensor_msgs/Image _image_raw
     (send _image_raw :deserialize buf ptr-) (incf ptr- (send _image_raw :serialization-length))
   ;;
   self)
  )

(setf (get line_lbd::final_pose :md5sum-) "034751c78d84c01a4a6c3cdc829b038b")
(setf (get line_lbd::final_pose :datatype-) "line_lbd/final_pose")
(setf (get line_lbd::final_pose :definition-)
      "string id
float32[] rot
float32[] trans
float32[] rot_tcw
float32[] trans_tcw
uint32 count
combined_boxes[] boxes
sensor_msgs/Image image_now
sensor_msgs/Image image_raw



================================================================================
MSG: line_lbd/combined_boxes
int8[] type_
float32[] BoundingBox2D
float32[] BoundingBox3D
string class_name
================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :line_lbd/final_pose "034751c78d84c01a4a6c3cdc829b038b")


