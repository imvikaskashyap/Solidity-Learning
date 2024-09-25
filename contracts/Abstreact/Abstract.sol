// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

// we use abstract function for internally uses it is not deployable.
// internally uses means we create a such function that 
// we don't want to deplot but want to use in many places of a project.
// see the openzipplin example for more clarification.
abstract contract Calculator{

address public manager;
 

  function add(uint a, uint b) public pure  returns (uint) {
   return  a +b;
  }
  function div(uint a, uint b) public   pure  returns (uint) {
   return a - b;
  }
  function mul(uint a, uint b) public  virtual   returns (uint) ;
  function dev(uint a, uint b) public  virtual   returns (uint) ;
}


 contract anotherCalc is Calculator {

    function mul(uint a, uint b) public pure   override  returns (uint){
      return   a*b;
    }

    function dev(uint a, uint b) public  pure override    returns (uint) {
        return  a/b;
    }

}