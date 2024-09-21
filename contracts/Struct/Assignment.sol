// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Assignment {

    struct EmployeeRegistery{
        uint id;
        string name;
        uint salary;
    } 

    EmployeeRegistery[] public Employee;

    function addEmployee( uint _id, string memory _name, uint _salary) public {
       
        // Employee[index].id = _id;
        // Employee[index].name=_name;
        // Employee[index].salary = _salary;

        Employee.push(EmployeeRegistery(_id,_name,_salary));

    }

    function getEmployee(uint index,uint _id) public view  returns (string memory, uint) {
        if(Employee[index].id == _id){
            return (Employee[index].name, Employee[index].salary);
        }

       return ("", 0);
       
    }
}