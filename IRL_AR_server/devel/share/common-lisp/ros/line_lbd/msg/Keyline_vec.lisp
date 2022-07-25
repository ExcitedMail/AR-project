; Auto-generated. Do not edit!


(cl:in-package line_lbd-msg)


;//! \htmlinclude Keyline_vec.msg.html

(cl:defclass <Keyline_vec> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (length
    :reader length
    :initarg :length
    :type cl:integer
    :initform 0)
   (Keylines
    :reader Keylines
    :initarg :Keylines
    :type (cl:vector line_lbd-msg:Keyline)
   :initform (cl:make-array 0 :element-type 'line_lbd-msg:Keyline :initial-element (cl:make-instance 'line_lbd-msg:Keyline))))
)

(cl:defclass Keyline_vec (<Keyline_vec>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Keyline_vec>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Keyline_vec)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name line_lbd-msg:<Keyline_vec> is deprecated: use line_lbd-msg:Keyline_vec instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Keyline_vec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_lbd-msg:id-val is deprecated.  Use line_lbd-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <Keyline_vec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_lbd-msg:length-val is deprecated.  Use line_lbd-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'Keylines-val :lambda-list '(m))
(cl:defmethod Keylines-val ((m <Keyline_vec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_lbd-msg:Keylines-val is deprecated.  Use line_lbd-msg:Keylines instead.")
  (Keylines m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Keyline_vec>) ostream)
  "Serializes a message object of type '<Keyline_vec>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'length)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Keylines))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'Keylines))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Keyline_vec>) istream)
  "Deserializes a message object of type '<Keyline_vec>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'length)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Keylines) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Keylines)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'line_lbd-msg:Keyline))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Keyline_vec>)))
  "Returns string type for a message object of type '<Keyline_vec>"
  "line_lbd/Keyline_vec")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Keyline_vec)))
  "Returns string type for a message object of type 'Keyline_vec"
  "line_lbd/Keyline_vec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Keyline_vec>)))
  "Returns md5sum for a message object of type '<Keyline_vec>"
  "66d8e92245e6e28ba0b9fa23e5b92a2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Keyline_vec)))
  "Returns md5sum for a message object of type 'Keyline_vec"
  "66d8e92245e6e28ba0b9fa23e5b92a2d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Keyline_vec>)))
  "Returns full string definition for message of type '<Keyline_vec>"
  (cl:format cl:nil "string id~%uint32 length~%Keyline[] Keylines~%================================================================================~%MSG: line_lbd/Keyline~%float32 startPointX~%float32 startPointY~%float32 endPointX~%float32 endPointY~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Keyline_vec)))
  "Returns full string definition for message of type 'Keyline_vec"
  (cl:format cl:nil "string id~%uint32 length~%Keyline[] Keylines~%================================================================================~%MSG: line_lbd/Keyline~%float32 startPointX~%float32 startPointY~%float32 endPointX~%float32 endPointY~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Keyline_vec>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Keylines) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Keyline_vec>))
  "Converts a ROS message object to a list"
  (cl:list 'Keyline_vec
    (cl:cons ':id (id msg))
    (cl:cons ':length (length msg))
    (cl:cons ':Keylines (Keylines msg))
))
