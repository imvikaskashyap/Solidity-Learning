// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;


contract Assignment {

    uint[6] public arr = [1,2,3,4];

    function InsertElement(uint index, uint element) public  {
       arr[index] = element;
    }

    function TotalCount() public view  returns (uint) {
       return  arr.length;
    }

    function GetNumber(uint index) public view  returns (uint) {
       return  arr[index];
    }
    function ReplaceElement(uint index, uint element) public   {
       arr[index ] = element; 
    }


    
}