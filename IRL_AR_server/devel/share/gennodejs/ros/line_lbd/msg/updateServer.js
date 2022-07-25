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

class updateServer {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.rot = null;
      this.trans = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type updateServer
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [rot]
    bufferOffset = _arraySerializer.float64(obj.rot, buffer, bufferOffset, null);
    // Serialize message field [trans]
    bufferOffset = _arraySerializer.float64(obj.trans, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type updateServer
    let len;
    let data = new updateServer(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rot]
    data.rot = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [trans]
    data.trans = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    length += 8 * object.rot.length;
    length += 8 * object.trans.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'line_lbd/updateServer';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '80a7463232d5994edae93915b0f1efbb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string id
    float64[] rot
    float64[] trans
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new updateServer(null);
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

    return resolved;
    }
};

module.exports = updateServer;
