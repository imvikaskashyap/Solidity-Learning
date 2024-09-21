// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract MemVsStorage {
    uint[5] public  arr = [1,2,3];

    // with the storage keyword we directly point the original array.
    // If we make any changes in copied array then it also will changed in original array.
    function StorageExm () public  {
        uint[5] storage brr;
        brr= arr;
        brr[0] = 6;
       
    }

      // with the memory keyword we directly did not point original array.
    // If we make any changes in copied array then it does not changed in original array.
    function MemoryExm () public view  {
        uint[5] memory crr;
        crr= arr;
        crr[1] = 6;
       
    }

    function Exm() public view returns (bool) {
        uint[5] memory drr;
        drr = arr;
        for(uint i=0; i < drr.length; i++){
            if(drr[i] == 2){
                return  true;
            }
        }
        return  false;
    }
}
