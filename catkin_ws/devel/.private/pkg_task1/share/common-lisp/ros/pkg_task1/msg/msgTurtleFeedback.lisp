; Auto-generated. Do not edit!


(cl:in-package pkg_task1-msg)


;//! \htmlinclude msgTurtleFeedback.msg.html

(cl:defclass <msgTurtleFeedback> (roslisp-msg-protocol:ros-message)
  ((cur_x
    :reader cur_x
    :initarg :cur_x
    :type cl:fixnum
    :initform 0)
   (cur_y
    :reader cur_y
    :initarg :cur_y
    :type cl:fixnum
    :initform 0)
   (cur_theta
    :reader cur_theta
    :initarg :cur_theta
    :type cl:fixnum
    :initform 0))
)

(cl:defclass msgTurtleFeedback (<msgTurtleFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msgTurtleFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msgTurtleFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg_task1-msg:<msgTurtleFeedback> is deprecated: use pkg_task1-msg:msgTurtleFeedback instead.")))

(cl:ensure-generic-function 'cur_x-val :lambda-list '(m))
(cl:defmethod cur_x-val ((m <msgTurtleFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_task1-msg:cur_x-val is deprecated.  Use pkg_task1-msg:cur_x instead.")
  (cur_x m))

(cl:ensure-generic-function 'cur_y-val :lambda-list '(m))
(cl:defmethod cur_y-val ((m <msgTurtleFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_task1-msg:cur_y-val is deprecated.  Use pkg_task1-msg:cur_y instead.")
  (cur_y m))

(cl:ensure-generic-function 'cur_theta-val :lambda-list '(m))
(cl:defmethod cur_theta-val ((m <msgTurtleFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_task1-msg:cur_theta-val is deprecated.  Use pkg_task1-msg:cur_theta instead.")
  (cur_theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msgTurtleFeedback>) ostream)
  "Serializes a message object of type '<msgTurtleFeedback>"
  (cl:let* ((signed (cl:slot-value msg 'cur_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cur_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cur_theta)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msgTurtleFeedback>) istream)
  "Deserializes a message object of type '<msgTurtleFeedback>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cur_x) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cur_y) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cur_theta) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msgTurtleFeedback>)))
  "Returns string type for a message object of type '<msgTurtleFeedback>"
  "pkg_task1/msgTurtleFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msgTurtleFeedback)))
  "Returns string type for a message object of type 'msgTurtleFeedback"
  "pkg_task1/msgTurtleFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msgTurtleFeedback>)))
  "Returns md5sum for a message object of type '<msgTurtleFeedback>"
  "0a9172acbd2d788295bb9e44c2e2758a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msgTurtleFeedback)))
  "Returns md5sum for a message object of type 'msgTurtleFeedback"
  "0a9172acbd2d788295bb9e44c2e2758a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msgTurtleFeedback>)))
  "Returns full string definition for message of type '<msgTurtleFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# feedback~%int8 cur_x~%int8 cur_y~%int8 cur_theta~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msgTurtleFeedback)))
  "Returns full string definition for message of type 'msgTurtleFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# feedback~%int8 cur_x~%int8 cur_y~%int8 cur_theta~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msgTurtleFeedback>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msgTurtleFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'msgTurtleFeedback
    (cl:cons ':cur_x (cur_x msg))
    (cl:cons ':cur_y (cur_y msg))
    (cl:cons ':cur_theta (cur_theta msg))
))
