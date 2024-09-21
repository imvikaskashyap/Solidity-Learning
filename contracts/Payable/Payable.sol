// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Payabale {

    function PayableCheck() public payable  {
        // payable keyword give the power to transfer or receive the Ether
    }

    function tranferEthertoOtherAddress(address receiver) public payable  {
        payable (receiver).transfer(msg.value);
    }
    
    function checkEtherBalance() public view returns (uint) {
       return address(this).balance;
    }
}
 