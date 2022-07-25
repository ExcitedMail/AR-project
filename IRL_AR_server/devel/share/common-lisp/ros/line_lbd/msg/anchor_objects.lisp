; Auto-generated. Do not edit!


(cl:in-package line_lbd-msg)


;//! \htmlinclude anchor_objects.msg.html

(cl:defclass <anchor_objects> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (size
    :reader size
    :initarg :size
    :type cl:fixnum
    :initform 0)
   (AnchorPoses
    :reader AnchorPoses
    :initarg :AnchorPoses
    :type (cl:vector line_lbd-msg:anchor_pose)
   :initform (cl:make-array 0 :element-type 'line_lbd-msg:anchor_pose :initial-element (cl:make-instance 'line_lbd-msg:anchor_pose))))
)

(cl:defclass anchor_objects (<anchor_objects>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <anchor_objects>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'anchor_objects)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name line_lbd-msg:<anchor_objects> is deprecated: use line_lbd-msg:anchor_objects instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <anchor_objects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_lbd-msg:id-val is deprecated.  Use line_lbd-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <anchor_objects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_lbd-msg:size-val is deprecated.  Use line_lbd-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'AnchorPoses-val :lambda-list '(m))
(cl:defmethod AnchorPoses-val ((m <anchor_objects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_lbd-msg:AnchorPoses-val is deprecated.  Use line_lbd-msg:AnchorPoses instead.")
  (AnchorPoses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <anchor_objects>) ostream)
  "Serializes a message object of type '<anchor_objects>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let* ((signed (cl:slot-value msg 'size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'AnchorPoses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'AnchorPoses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <anchor_objects>) istream)
  "Deserializes a message object of type '<anchor_objects>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'AnchorPoses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'AnchorPoses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'line_lbd-msg:anchor_pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<anchor_objects>)))
  "Returns string type for a message object of type '<anchor_objects>"
  "line_lbd/anchor_objects")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'anchor_objects)))
  "Returns string type for a message object of type 'anchor_objects"
  "line_lbd/anchor_objects")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<anchor_objects>)))
  "Returns md5sum for a message object of type '<anchor_objects>"
  "22c7b348a4a51cbd4089c0505dd161bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'anchor_objects)))
  "Returns md5sum for a message object of type 'anchor_objects"
  "22c7b348a4a51cbd4089c0505dd161bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<anchor_objects>)))
  "Returns full string definition for message of type '<anchor_objects>"
  (cl:format cl:nil "string id~%int8 size~%anchor_pose[] AnchorPoses~%================================================================================~%MSG: line_lbd/anchor_pose~%float32 top~%float32 bottom~%float32 left~%float32 right~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'anchor_objects)))
  "Returns full string definition for message of type 'anchor_objects"
  (cl:format cl:nil "string id~%int8 size~%anchor_pose[] AnchorPoses~%================================================================================~%MSG: line_lbd/anchor_pose~%float32 top~%float32 bottom~%float32 left~%float32 right~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <anchor_objects>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'AnchorPoses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <anchor_objects>))
  "Converts a ROS message object to a list"
  (cl:list 'anchor_objects
    (cl:cons ':id (id msg))
    (cl:cons ':size (size msg))
    (cl:cons ':AnchorPoses (AnchorPoses msg))
))
