// Auto-generated. Do not edit!

// (in-package line_lbd.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class combined_boxes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type_ = null;
      this.BoundingBox2D = null;
      this.BoundingBox3D = null;
      this.class_name = null;
    }
    else {
      if (initObj.hasOwnProperty('type_')) {
        this.type_ = initObj.type_
      }
      else {
        this.type_ = [];
      }
      if (initObj.hasOwnProperty('BoundingBox2D')) {
        this.BoundingBox2D = initObj.BoundingBox2D
      }
      else {
        this.BoundingBox2D = [];
      }
      if (initObj.hasOwnProperty('BoundingBox3D')) {
        this.BoundingBox3D = initObj.BoundingBox3D
      }
      else {
        this.BoundingBox3D = [];
      }
      if (initObj.hasOwnProperty('class_name')) {
        this.class_name = initObj.class_name
      }
      else {
        this.class_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type combined_boxes
    // Serialize message field [type_]
    bufferOffset = _arraySerializer.int8(obj.type_, buffer, bufferOffset, null);
    // Serialize message field [BoundingBox2D]
    bufferOffset = _arraySerializer.float32(obj.BoundingBox2D, buffer, bufferOffset, null);
    // Serialize message field [BoundingBox3D]
    bufferOffset = _arraySerializer.float32(obj.BoundingBox3D, buffer, bufferOffset, null);
    // Serialize message field [class_name]
    bufferOffset = _serializer.string(obj.class_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type combined_boxes
    let len;
    let data = new combined_boxes(null);
    // Deserialize message field [type_]
    data.type_ = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [BoundingBox2D]
    data.BoundingBox2D = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [BoundingBox3D]
    data.BoundingBox3D = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [class_name]
    data.class_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.type_.length;
    length += 4 * object.BoundingBox2D.length;
    length += 4 * object.BoundingBox3D.length;
    length += object.class_name.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'line_lbd/combined_boxes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '341d13f258e59a300e2f47d716f31914';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8[] type_
    float32[] BoundingBox2D
    float32[] BoundingBox3D
    string class_name
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new combined_boxes(null);
    if (msg.type_ !== undefined) {
      resolved.type_ = msg.type_;
    }
    else {
      resolved.type_ = []
    }

    if (msg.BoundingBox2D !== undefined) {
      resolved.BoundingBox2D = msg.BoundingBox2D;
    }
    else {
      resolved.BoundingBox2D = []
    }

    if (msg.BoundingBox3D !== undefined) {
      resolved.BoundingBox3D = msg.BoundingBox3D;
    }
    else {
      resolved.BoundingBox3D = []
    }

    if (msg.class_name !== undefined) {
      resolved.class_name = msg.class_name;
    }
    else {
      resolved.class_name = ''
    }

    return resolved;
    }
};

module.exports = combined_boxes;
