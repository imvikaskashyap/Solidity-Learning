// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract CompareString {
    function Compare(string calldata s1, string calldata s2) public pure returns (bool) {
       return keccak256(abi.encodePacked(s1)) == keccak256(abi.encodePacked(s2));
    }
}