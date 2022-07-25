// Auto-generated. Do not edit!

// (in-package line_lbd.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let anchor_pose = require('./anchor_pose.js');

//-----------------------------------------------------------

class anchor_objects {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.size = null;
      this.AnchorPoses = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
      if (initObj.hasOwnProperty('AnchorPoses')) {
        this.AnchorPoses = initObj.AnchorPoses
      }
      else {
        this.AnchorPoses = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type anchor_objects
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.int8(obj.size, buffer, bufferOffset);
    // Serialize message field [AnchorPoses]
    // Serialize the length for message field [AnchorPoses]
    bufferOffset = _serializer.uint32(obj.AnchorPoses.length, buffer, bufferOffset);
    obj.AnchorPoses.forEach((val) => {
      bufferOffset = anchor_pose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type anchor_objects
    let len;
    let data = new anchor_objects(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [AnchorPoses]
    // Deserialize array length for message field [AnchorPoses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.AnchorPoses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.AnchorPoses[i] = anchor_pose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    length += 16 * object.AnchorPoses.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'line_lbd/anchor_objects';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '22c7b348a4a51cbd4089c0505dd161bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string id
    int8 size
    anchor_pose[] AnchorPoses
    ================================================================================
    MSG: line_lbd/anchor_pose
    float32 top
    float32 bottom
    float32 left
    float32 right
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new anchor_objects(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    if (msg.AnchorPoses !== undefined) {
      resolved.AnchorPoses = new Array(msg.AnchorPoses.length);
      for (let i = 0; i < resolved.AnchorPoses.length; ++i) {
        resolved.AnchorPoses[i] = anchor_pose.Resolve(msg.AnchorPoses[i]);
      }
    }
    else {
      resolved.AnchorPoses = []
    }

    return resolved;
    }
};

module.exports = anchor_objects;
