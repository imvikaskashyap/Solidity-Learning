// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Loop {

    uint public sum;

    function LoopCall() public  {

      // For loop ==========>>>>>>>>
        // for (uint i=0; i<5; i++) 
        // {
        //     sum = sum + i;
        // }

    // While loop ==========>>>>>>>>

        // uint i = 0;
        // while (i<5) 
        // {
        //     sum+=i;
        //     i++;
        // }


            // Do While loop ==========>>>>>>>>

        uint i =0;
            do{
                sum+=i;
                i++;
            }while (i<5);
    }
    
}