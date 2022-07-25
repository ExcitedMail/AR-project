; Auto-generated. Do not edit!


(cl:in-package line_lbd-msg)


;//! \htmlinclude my_mat.msg.html

(cl:defclass <my_mat> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass my_mat (<my_mat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <my_mat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'my_mat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name line_lbd-msg:<my_mat> is deprecated: use line_lbd-msg:my_mat instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <my_mat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_lbd-msg:pose-val is deprecated.  Use line_lbd-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <my_mat>) ostream)
  "Serializes a message object of type '<my_mat>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'pose))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <my_mat>) istream)
  "Deserializes a message object of type '<my_mat>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<my_mat>)))
  "Returns string type for a message object of type '<my_mat>"
  "line_lbd/my_mat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_mat)))
  "Returns string type for a message object of type 'my_mat"
  "line_lbd/my_mat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<my_mat>)))
  "Returns md5sum for a message object of type '<my_mat>"
  "76249fb45cba333e6a82c7f91cfe1879")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'my_mat)))
  "Returns md5sum for a message object of type 'my_mat"
  "76249fb45cba333e6a82c7f91cfe1879")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<my_mat>)))
  "Returns full string definition for message of type '<my_mat>"
  (cl:format cl:nil "float64[] pose~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'my_mat)))
  "Returns full string definition for message of type 'my_mat"
  (cl:format cl:nil "float64[] pose~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <my_mat>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <my_mat>))
  "Converts a ROS message object to a list"
  (cl:list 'my_mat
    (cl:cons ':pose (pose msg))
))
