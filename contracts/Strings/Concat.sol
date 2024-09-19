// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract ConcatString {
    function Concat(string calldata s1, string calldata s2) public pure returns (string memory) {
       return string.concat(s1,s2);
    }
}