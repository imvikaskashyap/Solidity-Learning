// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract DataTypes {
    // Integer data type
    int256 public num1 = 10;
    uint256 num2 = 11;

    // Bool data type
    bool public val = true;

    // Address data type
    address public add = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // bytes data type

    // 1st type
    bytes1 x = "a";
    bytes2 y = "ab";
    bytes3 z = "abc";

    function BytesTest(uint index) public view returns(bytes1) {
        return  z[index];
    }

    // Fixed-size byte array (always 32 bytes)
    bytes32 public fixedBytes;

    // Function to set fixed bytes32
    function setFixedBytes(bytes32 data) public {
        fixedBytes = data;
    }

    // 2nd type

    // Dynamic byte array (can change length)
    bytes public dynamicBytes;

    // Function to set dynamic bytes
    function setDynamicBytes(bytes memory data) public {
        dynamicBytes = data;
    }
}
