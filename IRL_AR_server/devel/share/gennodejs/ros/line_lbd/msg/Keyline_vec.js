// Auto-generated. Do not edit!

// (in-package line_lbd.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Keyline = require('./Keyline.js');

//-----------------------------------------------------------

class Keyline_vec {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.length = null;
      this.Keylines = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0;
      }
      if (initObj.hasOwnProperty('Keylines')) {
        this.Keylines = initObj.Keylines
      }
      else {
        this.Keylines = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Keyline_vec
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.uint32(obj.length, buffer, bufferOffset);
    // Serialize message field [Keylines]
    // Serialize the length for message field [Keylines]
    bufferOffset = _serializer.uint32(obj.Keylines.length, buffer, bufferOffset);
    obj.Keylines.forEach((val) => {
      bufferOffset = Keyline.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Keyline_vec
    let len;
    let data = new Keyline_vec(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [Keylines]
    // Deserialize array length for message field [Keylines]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.Keylines = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.Keylines[i] = Keyline.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    length += 16 * object.Keylines.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'line_lbd/Keyline_vec';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '66d8e92245e6e28ba0b9fa23e5b92a2d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string id
    uint32 length
    Keyline[] Keylines
    ================================================================================
    MSG: line_lbd/Keyline
    float32 startPointX
    float32 startPointY
    float32 endPointX
    float32 endPointY
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Keyline_vec(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0
    }

    if (msg.Keylines !== undefined) {
      resolved.Keylines = new Array(msg.Keylines.length);
      for (let i = 0; i < resolved.Keylines.length; ++i) {
        resolved.Keylines[i] = Keyline.Resolve(msg.Keylines[i]);
      }
    }
    else {
      resolved.Keylines = []
    }

    return resolved;
    }
};

module.exports = Keyline_vec;
