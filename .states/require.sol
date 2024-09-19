// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;


contract RequireExm {
    bool public valid = false;

    function requireCheck(uint num) public  {
        valid = true;
        require(num%2==0, "num is not even");
    }
}