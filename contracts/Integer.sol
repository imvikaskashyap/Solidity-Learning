// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract integer{
    // uint256 public  num1 = 256; // support 
    // uint8 public num2 = uint8(num1); // it is being 0 because uint range is 0 to 255

    uint8 public  num = 254;

    function uncheck() public  {
       unchecked{
        num++;
       }
    }    
}