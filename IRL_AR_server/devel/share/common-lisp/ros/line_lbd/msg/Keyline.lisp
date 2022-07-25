; Auto-generated. Do not edit!


(cl:in-package line_lbd-msg)


;//! \htmlinclude Keyline.msg.html

(cl:defclass <Keyline> (roslisp-msg-protocol:ros-message)
  ((startPointX
    :reader startPointX
    :initarg :startPointX
    :type cl:float
    :initform 0.0)
   (startPointY
    :reader startPointY
    :initarg :startPointY
    :type cl:float
    :initform 0.0)
   (endPointX
    :reader endPointX
    :initarg :endPointX
    :type cl:float
    :initform 0.0)
   (endPointY
    :reader endPointY
    :initarg :endPointY
    :type cl:float
    :initform 0.0))
)

(cl:defclass Keyline (<Keyline>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Keyline>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Keyline)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name line_lbd-msg:<Keyline> is deprecated: use line_lbd-msg:Keyline instead.")))

(cl:ensure-generic-function 'startPointX-val :lambda-list '(m))
(cl:defmethod startPointX-val ((m <Keyline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_lbd-msg:startPointX-val is deprecated.  Use line_lbd-msg:startPointX instead.")
  (startPointX m))

(cl:ensure-generic-function 'startPointY-val :lambda-list '(m))
(cl:defmethod startPointY-val ((m <Keyline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_lbd-msg:startPointY-val is deprecated.  Use line_lbd-msg:startPointY instead.")
  (startPointY m))

(cl:ensure-generic-function 'endPointX-val :lambda-list '(m))
(cl:defmethod endPointX-val ((m <Keyline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_lbd-msg:endPointX-val is deprecated.  Use line_lbd-msg:endPointX instead.")
  (endPointX m))

(cl:ensure-generic-function 'endPointY-val :lambda-list '(m))
(cl:defmethod endPointY-val ((m <Keyline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_lbd-msg:endPointY-val is deprecated.  Use line_lbd-msg:endPointY instead.")
  (endPointY m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Keyline>) ostream)
  "Serializes a message object of type '<Keyline>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'startPointX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'startPointY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'endPointX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'endPointY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Keyline>) istream)
  "Deserializes a message object of type '<Keyline>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'startPointX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'startPointY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'endPointX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'endPointY) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Keyline>)))
  "Returns string type for a message object of type '<Keyline>"
  "line_lbd/Keyline")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Keyline)))
  "Returns string type for a message object of type 'Keyline"
  "line_lbd/Keyline")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Keyline>)))
  "Returns md5sum for a message object of type '<Keyline>"
  "4531a34c2acfb515e3db3e6def66c299")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Keyline)))
  "Returns md5sum for a message object of type 'Keyline"
  "4531a34c2acfb515e3db3e6def66c299")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Keyline>)))
  "Returns full string definition for message of type '<Keyline>"
  (cl:format cl:nil "float32 startPointX~%float32 startPointY~%float32 endPointX~%float32 endPointY~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Keyline)))
  "Returns full string definition for message of type 'Keyline"
  (cl:format cl:nil "float32 startPointX~%float32 startPointY~%float32 endPointX~%float32 endPointY~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Keyline>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Keyline>))
  "Converts a ROS message object to a list"
  (cl:list 'Keyline
    (cl:cons ':startPointX (startPointX msg))
    (cl:cons ':startPointY (startPointY msg))
    (cl:cons ':endPointX (endPointX msg))
    (cl:cons ':endPointY (endPointY msg))
))
