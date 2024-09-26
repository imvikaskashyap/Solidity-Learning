// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;


// Polymorphism means we can create same name many functions but the parameter length or 
// parameter types should different;

contract Calculator {

    function add(uint a, uint b) public pure returns (uint)   {
        return   a+b;
    }

    function add(uint a, uint b, uint c) pure public returns {uint} {
        return  a + b + c;
    }

    function add(uint a, string memory b) pure public returns {uint} {
        return  a;
    }
    
}