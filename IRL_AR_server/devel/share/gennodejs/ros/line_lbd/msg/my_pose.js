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

class my_pose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.Rotation = null;
      this.Trans = null;
      this.rot_tcw = null;
      this.trans_tcw = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('Rotation')) {
        this.Rotation = initObj.Rotation
      }
      else {
        this.Rotation = [];
      }
      if (initObj.hasOwnProperty('Trans')) {
        this.Trans = initObj.Trans
      }
      else {
        this.Trans = [];
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type my_pose
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [Rotation]
    bufferOffset = _arraySerializer.float64(obj.Rotation, buffer, bufferOffset, null);
    // Serialize message field [Trans]
    bufferOffset = _arraySerializer.float64(obj.Trans, buffer, bufferOffset, null);
    // Serialize message field [rot_tcw]
    bufferOffset = _arraySerializer.float64(obj.rot_tcw, buffer, bufferOffset, null);
    // Serialize message field [trans_tcw]
    bufferOffset = _arraySerializer.float64(obj.trans_tcw, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type my_pose
    let len;
    let data = new my_pose(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Rotation]
    data.Rotation = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [Trans]
    data.Trans = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [rot_tcw]
    data.rot_tcw = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [trans_tcw]
    data.trans_tcw = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    length += 8 * object.Rotation.length;
    length += 8 * object.Trans.length;
    length += 8 * object.rot_tcw.length;
    length += 8 * object.trans_tcw.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'line_lbd/my_pose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0887023c1ef3c2d1d16e636bd70b512';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string id
    float64[] Rotation
    float64[] Trans
    float64[] rot_tcw
    float64[] trans_tcw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new my_pose(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.Rotation !== undefined) {
      resolved.Rotation = msg.Rotation;
    }
    else {
      resolved.Rotation = []
    }

    if (msg.Trans !== undefined) {
      resolved.Trans = msg.Trans;
    }
    else {
      resolved.Trans = []
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

    return resolved;
    }
};

module.exports = my_pose;
