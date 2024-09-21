// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract MappingWIthArray {

    mapping(address=>uint[]) public mapArr;

    function insert(address key, uint[] calldata value) public  {
        mapArr[key] = value;
    }

     function getValue(address key) public view  returns (uint) {
       return mapArr[key][0];
    }

}