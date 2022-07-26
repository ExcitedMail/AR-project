;; Auto-generated. Do not edit!


(when (boundp 'darknet_ros_msgs::MyBoundingBoxes)
  (if (not (find-package "DARKNET_ROS_MSGS"))
    (make-package "DARKNET_ROS_MSGS"))
  (shadow 'MyBoundingBoxes (find-package "DARKNET_ROS_MSGS")))
(unless (find-package "DARKNET_ROS_MSGS::MYBOUNDINGBOXES")
  (make-package "DARKNET_ROS_MSGS::MYBOUNDINGBOXES"))

(in-package "ROS")
;;//! \htmlinclude MyBoundingBoxes.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass darknet_ros_msgs::MyBoundingBoxes
  :super ros::object
  :slots (_header _image_header _count _bounding_boxes _image_now _id ))

(defmethod darknet_ros_msgs::MyBoundingBoxes
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:image_header __image_header) (instance std_msgs::Header :init))
    ((:count __count) 0)
    ((:bounding_boxes __bounding_boxes) (let (r) (dotimes (i 0) (push (instance darknet_ros_msgs::BoundingBox :init) r)) r))
    ((:image_now __image_now) (instance sensor_msgs::Image :init))
    ((:id __id) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _image_header __image_header)
   (setq _count (round __count))
   (setq _bounding_boxes __bounding_boxes)
   (setq _image_now __image_now)
   (setq _id (string __id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:image_header
   (&rest __image_header)
   (if (keywordp (car __image_header))
       (send* _image_header __image_header)
     (progn
       (if __image_header (setq _image_header (car __image_header)))
       _image_header)))
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:bounding_boxes
   (&rest __bounding_boxes)
   (if (keywordp (car __bounding_boxes))
       (send* _bounding_boxes __bounding_boxes)
     (progn
       (if __bounding_boxes (setq _bounding_boxes (car __bounding_boxes)))
       _bounding_boxes)))
  (:image_now
   (&rest __image_now)
   (if (keywordp (car __image_now))
       (send* _image_now __image_now)
     (progn
       (if __image_now (setq _image_now (car __image_now)))
       _image_now)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Header _image_header
    (send _image_header :serialization-length)
    ;; int8 _count
    1
    ;; darknet_ros_msgs/BoundingBox[] _bounding_boxes
    (apply #'+ (send-all _bounding_boxes :serialization-length)) 4
    ;; sensor_msgs/Image _image_now
    (send _image_now :serialization-length)
    ;; string _id
    4 (length _id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Header _image_header
       (send _image_header :serialize s)
     ;; int8 _count
       (write-byte _count s)
     ;; darknet_ros_msgs/BoundingBox[] _bounding_boxes
     (write-long (length _bounding_boxes) s)
     (dolist (elem _bounding_boxes)
       (send elem :serialize s)
       )
     ;; sensor_msgs/Image _image_now
       (send _image_now :serialize s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Header _image_header
     (send _image_header :deserialize buf ptr-) (incf ptr- (send _image_header :serialization-length))
   ;; int8 _count
     (setq _count (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _count 127) (setq _count (- _count 256)))
   ;; darknet_ros_msgs/BoundingBox[] _bounding_boxes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bounding_boxes (let (r) (dotimes (i n) (push (instance darknet_ros_msgs::BoundingBox :init) r)) r))
     (dolist (elem- _bounding_boxes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; sensor_msgs/Image _image_now
     (send _image_now :deserialize buf ptr-) (incf ptr- (send _image_now :serialization-length))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get darknet_ros_msgs::MyBoundingBoxes :md5sum-) "a39bb10518e7c80918436aae27a908c4")
(setf (get darknet_ros_msgs::MyBoundingBoxes :datatype-) "darknet_ros_msgs/MyBoundingBoxes")
(setf (get darknet_ros_msgs::MyBoundingBoxes :definition-)
      "Header header
Header image_header
int8 count
BoundingBox[] bounding_boxes
sensor_msgs/Image image_now
string id
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

================================================================================
MSG: darknet_ros_msgs/BoundingBox
float64 probability
int64 xmin
int64 ymin
int64 xmax
int64 ymax
int16 id
string Class

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

")



(provide :darknet_ros_msgs/MyBoundingBoxes "a39bb10518e7c80918436aae27a908c4")


