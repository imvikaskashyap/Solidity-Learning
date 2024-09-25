// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

// This is import functionality for import any file within the contract
import "./Calculator.sol";


contract OhterCalc is Calculator {
// Inheritence means it is taking all the properties from their parent including constructor
    function isEven(uint _a) public pure returns(bool) {
        if(_a%2==0){
            return  true;
        }else{
            return false;
        }
    }
    
}