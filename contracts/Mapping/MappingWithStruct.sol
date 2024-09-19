// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract MappingWIthStruct {

    struct Student{
        string name;
        uint roll;
        bool pass;
    }

    mapping(uint=>Student) public mapStruct;

    function insert(uint key, string memory _name, uint _roll, bool _pass) public {
        mapStruct[key]=Student(_name,_roll,_pass);
    }

    function getName(uint key) public view  returns (string memory) {
       return mapStruct[key].name;
    }


}