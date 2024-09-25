// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;


contract Calculator{

address public manager;
  constructor() {
    manager = msg.sender;
    // manager = _manager;

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


contract anotherContract {

    Calculator calc = new Calculator();
    // Calculator calc = new Calculator(0x8207D032322052AfB9Bf1463aF87fd0c0097EDDE);

    address public manager = calc.manager();
   function gettingNum(uint a, uint b) public view returns (uint) {
        return calc.add(a,b);
   }
    
}