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

class Keyline {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.startPointX = null;
      this.startPointY = null;
      this.endPointX = null;
      this.endPointY = null;
    }
    else {
      if (initObj.hasOwnProperty('startPointX')) {
        this.startPointX = initObj.startPointX
      }
      else {
        this.startPointX = 0.0;
      }
      if (initObj.hasOwnProperty('startPointY')) {
        this.startPointY = initObj.startPointY
      }
      else {
        this.startPointY = 0.0;
      }
      if (initObj.hasOwnProperty('endPointX')) {
        this.endPointX = initObj.endPointX
      }
      else {
        this.endPointX = 0.0;
      }
      if (initObj.hasOwnProperty('endPointY')) {
        this.endPointY = initObj.endPointY
      }
      else {
        this.endPointY = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Keyline
    // Serialize message field [startPointX]
    bufferOffset = _serializer.float32(obj.startPointX, buffer, bufferOffset);
    // Serialize message field [startPointY]
    bufferOffset = _serializer.float32(obj.startPointY, buffer, bufferOffset);
    // Serialize message field [endPointX]
    bufferOffset = _serializer.float32(obj.endPointX, buffer, bufferOffset);
    // Serialize message field [endPointY]
    bufferOffset = _serializer.float32(obj.endPointY, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Keyline
    let len;
    let data = new Keyline(null);
    // Deserialize message field [startPointX]
    data.startPointX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [startPointY]
    data.startPointY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [endPointX]
    data.endPointX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [endPointY]
    data.endPointY = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'line_lbd/Keyline';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4531a34c2acfb515e3db3e6def66c299';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Keyline(null);
    if (msg.startPointX !== undefined) {
      resolved.startPointX = msg.startPointX;
    }
    else {
      resolved.startPointX = 0.0
    }

    if (msg.startPointY !== undefined) {
      resolved.startPointY = msg.startPointY;
    }
    else {
      resolved.startPointY = 0.0
    }

    if (msg.endPointX !== undefined) {
      resolved.endPointX = msg.endPointX;
    }
    else {
      resolved.endPointX = 0.0
    }

    if (msg.endPointY !== undefined) {
      resolved.endPointY = msg.endPointY;
    }
    else {
      resolved.endPointY = 0.0
    }

    return resolved;
    }
};

module.exports = Keyline;
