// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Functions {
    string public greet = "Hello World!";

    int256 a = 5;
    int256 b = 10;

    uint256 public count = 10;

    function addition() public pure {
        // if it is not using any state variable then use "pure" keyword. It's means that it is pure function and not using any state variavble
        uint256 num1 = 8;
        uint256 num2 = 4;
        uint256 c;
        c = num1 + num2;
    }

    function substract() public pure returns (int256) {
        int256 d = 9; // this functiona is returing something.
        int256 e = 7; //this is pure function because it is not using any state variable.

        return d - e;
    }

    function multiplication() public view returns (int256) {
        return a * b; // this function only reading state varialble.
    }

    function division(int256 num1, int256 num2) public pure returns (int256) {
        return num2 / num1;
    }

    function changeState() public {
        a = 100; // this function reading and writing with state variable.
        int256 x; // so this is not pure function.
        int256 y = 200;

        x = y - a;
    }
}
