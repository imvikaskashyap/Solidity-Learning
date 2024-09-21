// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract FixedSizeArray {

    uint[5] public arr = [1,2,3];

    function InsertElement(uint index, uint value) public  {
        arr[index] = value;
    }

    function ReturnElement(uint index) public view  returns (uint)  {
       return  arr[index];
    }
    
    function ReturnArr() public view  returns (uint[5] memory)  {
       return  arr;
    }
    
}