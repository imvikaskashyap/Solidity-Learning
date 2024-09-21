// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Conditional {

    uint public num;

    function Require(bool value) public {

        require(true==value, "Transaction failed");
        num = 100;
    }

    function IfElse(bool value) public returns(string memory) {
        if(value == true){
            num = 200;
             return "true";
        }else {
            return "false";
        }
    }
    
}