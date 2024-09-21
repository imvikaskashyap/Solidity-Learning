// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Variables {
    string public greet = "Hello World!";

    int256 a = 5;
    int256 b = 10;

    uint256 public count = 10; // when we crate a state variable
    // with "public" keyword then it automatically
    // create a getter function for it
}
