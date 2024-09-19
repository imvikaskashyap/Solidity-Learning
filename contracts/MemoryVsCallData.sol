// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;


contract MemoryVsCallData {

  
    // mutable.
    function multiplyBy2(uint[] memory num) public pure  returns(uint[] memory) {
       num[0] = 2 * num[0];
       return num;
    }


    // calldata is only use for read-only ====>>> immutable.
    // if we doesn't want to change anything in the array then use calldata.
    // it takes less gas cost comparison to memory location.
    function CallDataEx(uint[] calldata num) public pure returns(uint) {
        uint a;
        uint b;
        a = num[0];
        b = a*10;
        return b;
    }
   


    
}