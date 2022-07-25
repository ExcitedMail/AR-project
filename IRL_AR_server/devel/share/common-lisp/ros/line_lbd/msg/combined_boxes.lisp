; Auto-generated. Do not edit!


(cl:in-package line_lbd-msg)


;//! \htmlinclude combined_boxes.msg.html

(cl:defclass <combined_boxes> (roslisp-msg-protocol:ros-message)
  ((type_
    :reader type_
    :initarg :type_
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (BoundingBox2D
    :reader BoundingBox2D
    :initarg :BoundingBox2D
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (BoundingBox3D
    :reader BoundingBox3D
    :initarg :BoundingBox3D
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (class_name
    :reader class_name
    :initarg :class_name
    :type cl:string
    :initform ""))
)

(cl:defclass combined_boxes (<combined_boxes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <combined_boxes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'combined_boxes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name line_lbd-msg:<combined_boxes> is deprecated: use line_lbd-msg:combined_boxes instead.")))

(cl:ensure-generic-function 'type_-val :lambda-list '(m))
(cl:defmethod type_-val ((m <combined_boxes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_lbd-msg:type_-val is deprecated.  Use line_lbd-msg:type_ instead.")
  (type_ m))

(cl:ensure-generic-function 'BoundingBox2D-val :lambda-list '(m))
(cl:defmethod BoundingBox2D-val ((m <combined_boxes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_lbd-msg:BoundingBox2D-val is deprecated.  Use line_lbd-msg:BoundingBox2D instead.")
  (BoundingBox2D m))

(cl:ensure-generic-function 'BoundingBox3D-val :lambda-list '(m))
(cl:defmethod BoundingBox3D-val ((m <combined_boxes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_lbd-msg:BoundingBox3D-val is deprecated.  Use line_lbd-msg:BoundingBox3D instead.")
  (BoundingBox3D m))

(cl:ensure-generic-function 'class_name-val :lambda-list '(m))
(cl:defmethod class_name-val ((m <combined_boxes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_lbd-msg:class_name-val is deprecated.  Use line_lbd-msg:class_name instead.")
  (class_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <combined_boxes>) ostream)
  "Serializes a message object of type '<combined_boxes>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'type_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'type_))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'BoundingBox2D))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'BoundingBox2D))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'BoundingBox3D))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'BoundingBox3D))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'class_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'class_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <combined_boxes>) istream)
  "Deserializes a message object of type '<combined_boxes>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'type_) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'type_)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'BoundingBox2D) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'BoundingBox2D)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'BoundingBox3D) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'BoundingBox3D)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'class_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'class_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<combined_boxes>)))
  "Returns string type for a message object of type '<combined_boxes>"
  "line_lbd/combined_boxes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'combined_boxes)))
  "Returns string type for a message object of type 'combined_boxes"
  "line_lbd/combined_boxes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<combined_boxes>)))
  "Returns md5sum for a message object of type '<combined_boxes>"
  "341d13f258e59a300e2f47d716f31914")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'combined_boxes)))
  "Returns md5sum for a message object of type 'combined_boxes"
  "341d13f258e59a300e2f47d716f31914")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<combined_boxes>)))
  "Returns full string definition for message of type '<combined_boxes>"
  (cl:format cl:nil "int8[] type_~%float32[] BoundingBox2D~%float32[] BoundingBox3D~%string class_name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'combined_boxes)))
  "Returns full string definition for message of type 'combined_boxes"
  (cl:format cl:nil "int8[] type_~%float32[] BoundingBox2D~%float32[] BoundingBox3D~%string class_name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <combined_boxes>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'type_) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'BoundingBox2D) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'BoundingBox3D) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:length (cl:slot-value msg 'class_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <combined_boxes>))
  "Converts a ROS message object to a list"
  (cl:list 'combined_boxes
    (cl:cons ':type_ (type_ msg))
    (cl:cons ':BoundingBox2D (BoundingBox2D msg))
    (cl:cons ':BoundingBox3D (BoundingBox3D msg))
    (cl:cons ':class_name (class_name msg))
))
