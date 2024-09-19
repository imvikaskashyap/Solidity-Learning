// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract ArraytOfStruct {

    struct Student{
        string name;
        uint roll;
        bool pass;
    } 

    Student[4] public s;

    function insert(uint index, string memory _name, uint _roll, bool _pass) public  {
        s[index] = Student(_name,_roll,_pass);
    //    s[index].name = _name;
    //    s[index].roll = _roll;
    //    s[index].pass = _pass;
 
    }

    function getter() public view returns (Student[4] memory) {
        return s;
    }

    function getName() public view returns (string memory) {
        return s[0].name;
    }

    function getRoll() public view returns (uint) {
        return s[0].roll;
    }



}