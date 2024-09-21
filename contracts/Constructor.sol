// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;


contract ConstructorProgram {

    // uint public  a = 10;

    // constructor(uint newValue){
    //     a = newValue ;
    // }


    address public manager;
    constructor(address user) {
        manager = user;
    }

    
}