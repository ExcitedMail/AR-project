; Auto-generated. Do not edit!


(cl:in-package darknet_ros_msgs-msg)


;//! \htmlinclude CheckForObjectsResult.msg.html

(cl:defclass <CheckForObjectsResult> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (bounding_boxes
    :reader bounding_boxes
    :initarg :bounding_boxes
    :type darknet_ros_msgs-msg:BoundingBoxes
    :initform (cl:make-instance 'darknet_ros_msgs-msg:BoundingBoxes)))
)

(cl:defclass CheckForObjectsResult (<CheckForObjectsResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckForObjectsResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckForObjectsResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name darknet_ros_msgs-msg:<CheckForObjectsResult> is deprecated: use darknet_ros_msgs-msg:CheckForObjectsResult instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <CheckForObjectsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader darknet_ros_msgs-msg:id-val is deprecated.  Use darknet_ros_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'bounding_boxes-val :lambda-list '(m))
(cl:defmethod bounding_boxes-val ((m <CheckForObjectsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader darknet_ros_msgs-msg:bounding_boxes-val is deprecated.  Use darknet_ros_msgs-msg:bounding_boxes instead.")
  (bounding_boxes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckForObjectsResult>) ostream)
  "Serializes a message object of type '<CheckForObjectsResult>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_boxes) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckForObjectsResult>) istream)
  "Deserializes a message object of type '<CheckForObjectsResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_boxes) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckForObjectsResult>)))
  "Returns string type for a message object of type '<CheckForObjectsResult>"
  "darknet_ros_msgs/CheckForObjectsResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckForObjectsResult)))
  "Returns string type for a message object of type 'CheckForObjectsResult"
  "darknet_ros_msgs/CheckForObjectsResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckForObjectsResult>)))
  "Returns md5sum for a message object of type '<CheckForObjectsResult>"
  "ee4782a42ddd3dea199bbbbcce6dc461")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckForObjectsResult)))
  "Returns md5sum for a message object of type 'CheckForObjectsResult"
  "ee4782a42ddd3dea199bbbbcce6dc461")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckForObjectsResult>)))
  "Returns full string definition for message of type '<CheckForObjectsResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result definition~%int16 id~%darknet_ros_msgs/BoundingBoxes bounding_boxes~%~%~%================================================================================~%MSG: darknet_ros_msgs/BoundingBoxes~%Header header~%Header image_header~%int8 count~%BoundingBox[] bounding_boxes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: darknet_ros_msgs/BoundingBox~%float64 probability~%int64 xmin~%int64 ymin~%int64 xmax~%int64 ymax~%int16 id~%string Class~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckForObjectsResult)))
  "Returns full string definition for message of type 'CheckForObjectsResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result definition~%int16 id~%darknet_ros_msgs/BoundingBoxes bounding_boxes~%~%~%================================================================================~%MSG: darknet_ros_msgs/BoundingBoxes~%Header header~%Header image_header~%int8 count~%BoundingBox[] bounding_boxes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: darknet_ros_msgs/BoundingBox~%float64 probability~%int64 xmin~%int64 ymin~%int64 xmax~%int64 ymax~%int16 id~%string Class~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckForObjectsResult>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_boxes))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckForObjectsResult>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckForObjectsResult
    (cl:cons ':id (id msg))
    (cl:cons ':bounding_boxes (bounding_boxes msg))
))
