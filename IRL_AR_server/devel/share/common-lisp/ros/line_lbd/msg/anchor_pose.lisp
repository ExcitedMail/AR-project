; Auto-generated. Do not edit!


(cl:in-package line_lbd-msg)


;//! \htmlinclude anchor_pose.msg.html

(cl:defclass <anchor_pose> (roslisp-msg-protocol:ros-message)
  ((top
    :reader top
    :initarg :top
    :type cl:float
    :initform 0.0)
   (bottom
    :reader bottom
    :initarg :bottom
    :type cl:float
    :initform 0.0)
   (left
    :reader left
    :initarg :left
    :type cl:float
    :initform 0.0)
   (right
    :reader right
    :initarg :right
    :type cl:float
    :initform 0.0))
)

(cl:defclass anchor_pose (<anchor_pose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <anchor_pose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'anchor_pose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name line_lbd-msg:<anchor_pose> is deprecated: use line_lbd-msg:anchor_pose instead.")))

(cl:ensure-generic-function 'top-val :lambda-list '(m))
(cl:defmethod top-val ((m <anchor_pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_lbd-msg:top-val is deprecated.  Use line_lbd-msg:top instead.")
  (top m))

(cl:ensure-generic-function 'bottom-val :lambda-list '(m))
(cl:defmethod bottom-val ((m <anchor_pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_lbd-msg:bottom-val is deprecated.  Use line_lbd-msg:bottom instead.")
  (bottom m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <anchor_pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_lbd-msg:left-val is deprecated.  Use line_lbd-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <anchor_pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_lbd-msg:right-val is deprecated.  Use line_lbd-msg:right instead.")
  (right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <anchor_pose>) ostream)
  "Serializes a message object of type '<anchor_pose>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'top))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bottom))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <anchor_pose>) istream)
  "Deserializes a message object of type '<anchor_pose>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'top) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bottom) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<anchor_pose>)))
  "Returns string type for a message object of type '<anchor_pose>"
  "line_lbd/anchor_pose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'anchor_pose)))
  "Returns string type for a message object of type 'anchor_pose"
  "line_lbd/anchor_pose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<anchor_pose>)))
  "Returns md5sum for a message object of type '<anchor_pose>"
  "05c67e0263677513598d2ad449247941")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'anchor_pose)))
  "Returns md5sum for a message object of type 'anchor_pose"
  "05c67e0263677513598d2ad449247941")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<anchor_pose>)))
  "Returns full string definition for message of type '<anchor_pose>"
  (cl:format cl:nil "float32 top~%float32 bottom~%float32 left~%float32 right~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'anchor_pose)))
  "Returns full string definition for message of type 'anchor_pose"
  (cl:format cl:nil "float32 top~%float32 bottom~%float32 left~%float32 right~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <anchor_pose>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <anchor_pose>))
  "Converts a ROS message object to a list"
  (cl:list 'anchor_pose
    (cl:cons ':top (top msg))
    (cl:cons ':bottom (bottom msg))
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
))
