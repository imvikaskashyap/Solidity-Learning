// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HelloWorld {
    string public greet = "Hello World!";

    int a =5;
    int b= 10;

    uint public count = 10; // when we crate a state variable with "public" keyword then it automatically create a getter function for it

    function addition() public pure { // if it is not using any state variable then use "pure" keyword. It's means that it is pure function and not using any state variavble
        uint num1 = 8;
        uint num2 =4;
        uint c;
        c =  num1 + num2;
    }

    function substract() public pure returns(int) { // this functiona is returing something.
        int d=9;
        int e =7;
        
       return  d-e;
    }

    function multiplication() public view  returns (int) {
        return a*b;
    }

    function division(int num1, int num2) public pure returns(int){
        return  num2/num1;
    }

}
