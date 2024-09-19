// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Modifier {
    uint256 public num = 10;

    modifier newVal(bool val) {
        require(true==val, "Not valid num");
        num=400;
        _;
    }

    function value(bool val) public newVal(val) {
        // require(true == true, "Not valid");
        num = 100;
    }

    function value2(bool val) public newVal(val) {
        // require(true == false, "Not valid");
        num = 200;
    }

    function value3(bool val) public newVal(val){
        // require(true == true, "Not valid");
        num = 300;
    }
}
