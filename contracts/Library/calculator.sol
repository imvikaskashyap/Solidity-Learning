// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

import "./SafeMath.sol";

contract calculator {

    using  SafeMath for uint256;

    function adding(uint a, uint b) public pure returns (uint) {
        return SafeMath.add(a,b);
        // return a.add(b);
    }
    function substracting(uint a, uint b) public pure returns (uint) {
        return a.sub(b);
    }
    
}