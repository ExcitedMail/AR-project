// Auto-generated. Do not edit!

// (in-package line_lbd.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let combined_boxes = require('./combined_boxes.js');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class final_pose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.rot = null;
      this.trans = null;
      this.rot_tcw = null;
      this.trans_tcw = null;
      this.count = null;
      this.boxes = null;
      this.image_now = null;
      this.image_raw = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('rot')) {
        this.rot = initObj.rot
      }
      else {
        this.rot = [];
      }
      if (initObj.hasOwnProperty('trans')) {
        this.trans = initObj.trans
      }
      else {
        this.trans = [];
      }
      if (initObj.hasOwnProperty('rot_tcw')) {
        this.rot_tcw = initObj.rot_tcw
      }
      else {
        this.rot_tcw = [];
      }
      if (initObj.hasOwnProperty('trans_tcw')) {
        this.trans_tcw = initObj.trans_tcw
      }
      else {
        this.trans_tcw = [];
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('boxes')) {
        this.boxes = initObj.boxes
      }
      else {
        this.boxes = [];
      }
      if (initObj.hasOwnProperty('image_now')) {
        this.image_now = initObj.image_now
      }
      else {
        this.image_now = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('image_raw')) {
        this.image_raw = initObj.image_raw
      }
      else {
        this.image_raw = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type final_pose
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [rot]
    bufferOffset = _arraySerializer.float32(obj.rot, buffer, bufferOffset, null);
    // Serialize message field [trans]
    bufferOffset = _arraySerializer.float32(obj.trans, buffer, bufferOffset, null);
    // Serialize message field [rot_tcw]
    bufferOffset = _arraySerializer.float32(obj.rot_tcw, buffer, bufferOffset, null);
    // Serialize message field [trans_tcw]
    bufferOffset = _arraySerializer.float32(obj.trans_tcw, buffer, bufferOffset, null);
    // Serialize message field [count]
    bufferOffset = _serializer.uint32(obj.count, buffer, bufferOffset);
    // Serialize message field [boxes]
    // Serialize the length for message field [boxes]
    bufferOffset = _serializer.uint32(obj.boxes.length, buffer, bufferOffset);
    obj.boxes.forEach((val) => {
      bufferOffset = combined_boxes.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [image_now]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image_now, buffer, bufferOffset);
    // Serialize message field [image_raw]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image_raw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type final_pose
    let len;
    let data = new final_pose(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rot]
    data.rot = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [trans]
    data.trans = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [rot_tcw]
    data.rot_tcw = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [trans_tcw]
    data.trans_tcw = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [count]
    data.count = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [boxes]
    // Deserialize array length for message field [boxes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.boxes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.boxes[i] = combined_boxes.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [image_now]
    data.image_now = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [image_raw]
    data.image_raw = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    length += 4 * object.rot.length;
    length += 4 * object.trans.length;
    length += 4 * object.rot_tcw.length;
    length += 4 * object.trans_tcw.length;
    object.boxes.forEach((val) => {
      length += combined_boxes.getMessageSize(val);
    });
    length += sensor_msgs.msg.Image.getMessageSize(object.image_now);
    length += sensor_msgs.msg.Image.getMessageSize(object.image_raw);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'line_lbd/final_pose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '034751c78d84c01a4a6c3cdc829b038b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string id
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new final_pose(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.rot !== undefined) {
      resolved.rot = msg.rot;
    }
    else {
      resolved.rot = []
    }

    if (msg.trans !== undefined) {
      resolved.trans = msg.trans;
    }
    else {
      resolved.trans = []
    }

    if (msg.rot_tcw !== undefined) {
      resolved.rot_tcw = msg.rot_tcw;
    }
    else {
      resolved.rot_tcw = []
    }

    if (msg.trans_tcw !== undefined) {
      resolved.trans_tcw = msg.trans_tcw;
    }
    else {
      resolved.trans_tcw = []
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.boxes !== undefined) {
      resolved.boxes = new Array(msg.boxes.length);
      for (let i = 0; i < resolved.boxes.length; ++i) {
        resolved.boxes[i] = combined_boxes.Resolve(msg.boxes[i]);
      }
    }
    else {
      resolved.boxes = []
    }

    if (msg.image_now !== undefined) {
      resolved.image_now = sensor_msgs.msg.Image.Resolve(msg.image_now)
    }
    else {
      resolved.image_now = new sensor_msgs.msg.Image()
    }

    if (msg.image_raw !== undefined) {
      resolved.image_raw = sensor_msgs.msg.Image.Resolve(msg.image_raw)
    }
    else {
      resolved.image_raw = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

module.exports = final_pose;
