// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Struct {

    struct Student{
        string name;
        uint roll;
        bool pass;
    } 

    Student public studentDetails;

    function insert(string memory _name, uint _roll, bool _pass) public  {
        studentDetails.name = _name;
        studentDetails.roll = _roll;
        studentDetails.pass = _pass;

    }

    function getter() public view returns (Student memory) {
        return studentDetails;
    }

    function getName() public view returns (string memory) {
        return studentDetails.name;
    }

    function getRoll() public view returns (uint) {
        return studentDetails.roll;
    }



}