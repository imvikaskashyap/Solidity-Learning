// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Mapping {

    mapping(uint=>string) public map;

    function insert(uint key, string memory value) public  {
        map[key] = value;
    }

    // function getValue() public  returns(mapping memory) {
    //     return  map;
    // }

}