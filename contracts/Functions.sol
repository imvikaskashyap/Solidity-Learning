// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;


contract Functions {
    string public greet = "Hello World!";

    int a =5;
    int b= 10;

    uint public count = 10; 

    function addition() public pure { // if it is not using any state variable then use "pure" keyword. It's means that it is pure function and not using any state variavble
        uint num1 = 8;
        uint num2 =4;
        uint c;
        c =  num1 + num2;
    }

    function substract() public pure returns(int) { 
                            
        int d=9;            // this functiona is returing something.
        int e =7;           //this is pure function because it is not using any state variable.
        
       return  d-e;
    }

    function multiplication() public view  returns (int) { 
        return a*b;             // this function only reading state varialble.
    }

    function division(int num1, int num2) public pure returns(int){ 
        return  num2/num1;
    }

    function changeState() public  {
        a = 100;            // this function reading and writing with state variable.
        int x;              // so this is not pure function.
        int y = 200;

        x = y - a;

    }

}
