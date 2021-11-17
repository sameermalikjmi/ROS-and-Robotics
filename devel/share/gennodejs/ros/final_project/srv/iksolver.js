// Auto-generated. Do not edit!

// (in-package final_project.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class iksolverRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.desired_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('desired_pose')) {
        this.desired_pose = initObj.desired_pose
      }
      else {
        this.desired_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type iksolverRequest
    // Serialize message field [desired_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.desired_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type iksolverRequest
    let len;
    let data = new iksolverRequest(null);
    // Deserialize message field [desired_pose]
    data.desired_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'final_project/iksolverRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0538590fc0be5b737b11f5be6e5b1759';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose desired_pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new iksolverRequest(null);
    if (msg.desired_pose !== undefined) {
      resolved.desired_pose = geometry_msgs.msg.Pose.Resolve(msg.desired_pose)
    }
    else {
      resolved.desired_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

class iksolverResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_values = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_values')) {
        this.joint_values = initObj.joint_values
      }
      else {
        this.joint_values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type iksolverResponse
    // Serialize message field [joint_values]
    bufferOffset = _arraySerializer.float64(obj.joint_values, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type iksolverResponse
    let len;
    let data = new iksolverResponse(null);
    // Deserialize message field [joint_values]
    data.joint_values = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.joint_values.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'final_project/iksolverResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b79b974a6ae3f399e6d798ff6613e367';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] joint_values
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new iksolverResponse(null);
    if (msg.joint_values !== undefined) {
      resolved.joint_values = msg.joint_values;
    }
    else {
      resolved.joint_values = []
    }

    return resolved;
    }
};

module.exports = {
  Request: iksolverRequest,
  Response: iksolverResponse,
  md5sum() { return 'c531b06618eadc33dc6f14fc3026e8e5'; },
  datatype() { return 'final_project/iksolver'; }
};
