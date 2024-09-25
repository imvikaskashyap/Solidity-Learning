// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;


contract Calculator{

address public manager;
  constructor() {
    manager = msg.sender;
    

  }

  function add(uint a, uint b) public pure  returns (uint) {
   return  a +b;
  }
  function div(uint a, uint b) public   pure  returns (uint) {
   return a - b;
  }
  function mul(uint a, uint b) public  pure  returns (uint) {
   return a * b;
  }
}