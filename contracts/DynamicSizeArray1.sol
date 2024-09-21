// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract DynamicSizeArray {
    uint[] public arr = [1, 2, 3];

    function InsertElement(uint value) public {
        arr.push(value);
    }
    function RemoveLastElement() public   {
        arr.pop();
    }

    function ReturnElement(uint index) public view returns (uint) {
        return arr[index];
    }

    function ReturnArr() public view returns (uint[] memory) {
        return arr;
    }

    function TotalCount() public view returns (uint) {
        return arr.length;
    }
}
