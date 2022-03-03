// Auto-generated. Do not edit!

// (in-package champ_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point = require('./Point.js');

//-----------------------------------------------------------

class PointArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lf = null;
      this.rf = null;
      this.lh = null;
      this.rh = null;
    }
    else {
      if (initObj.hasOwnProperty('lf')) {
        this.lf = initObj.lf
      }
      else {
        this.lf = new Point();
      }
      if (initObj.hasOwnProperty('rf')) {
        this.rf = initObj.rf
      }
      else {
        this.rf = new Point();
      }
      if (initObj.hasOwnProperty('lh')) {
        this.lh = initObj.lh
      }
      else {
        this.lh = new Point();
      }
      if (initObj.hasOwnProperty('rh')) {
        this.rh = initObj.rh
      }
      else {
        this.rh = new Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PointArray
    // Serialize message field [lf]
    bufferOffset = Point.serialize(obj.lf, buffer, bufferOffset);
    // Serialize message field [rf]
    bufferOffset = Point.serialize(obj.rf, buffer, bufferOffset);
    // Serialize message field [lh]
    bufferOffset = Point.serialize(obj.lh, buffer, bufferOffset);
    // Serialize message field [rh]
    bufferOffset = Point.serialize(obj.rh, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PointArray
    let len;
    let data = new PointArray(null);
    // Deserialize message field [lf]
    data.lf = Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [rf]
    data.rf = Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [lh]
    data.lh = Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [rh]
    data.rh = Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'champ_msgs/PointArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e70791c6db4935709e33b9966d293c36';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    champ_msgs/Point lf
    champ_msgs/Point rf
    champ_msgs/Point lh
    champ_msgs/Point rh
    ================================================================================
    MSG: champ_msgs/Point
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PointArray(null);
    if (msg.lf !== undefined) {
      resolved.lf = Point.Resolve(msg.lf)
    }
    else {
      resolved.lf = new Point()
    }

    if (msg.rf !== undefined) {
      resolved.rf = Point.Resolve(msg.rf)
    }
    else {
      resolved.rf = new Point()
    }

    if (msg.lh !== undefined) {
      resolved.lh = Point.Resolve(msg.lh)
    }
    else {
      resolved.lh = new Point()
    }

    if (msg.rh !== undefined) {
      resolved.rh = Point.Resolve(msg.rh)
    }
    else {
      resolved.rh = new Point()
    }

    return resolved;
    }
};

module.exports = PointArray;
