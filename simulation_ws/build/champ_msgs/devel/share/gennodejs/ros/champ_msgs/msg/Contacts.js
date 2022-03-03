// Auto-generated. Do not edit!

// (in-package champ_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Contacts {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.contacts = null;
    }
    else {
      if (initObj.hasOwnProperty('contacts')) {
        this.contacts = initObj.contacts
      }
      else {
        this.contacts = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Contacts
    // Serialize message field [contacts]
    bufferOffset = _arraySerializer.bool(obj.contacts, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Contacts
    let len;
    let data = new Contacts(null);
    // Deserialize message field [contacts]
    data.contacts = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.contacts.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'champ_msgs/Contacts';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3470d51bc28d5527f9ed97eb122d52f4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool[] contacts
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Contacts(null);
    if (msg.contacts !== undefined) {
      resolved.contacts = msg.contacts;
    }
    else {
      resolved.contacts = []
    }

    return resolved;
    }
};

module.exports = Contacts;
