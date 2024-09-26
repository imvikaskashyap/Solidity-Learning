// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;


// event is used to store the history of contract ex - what user have sent the token or recieve the toke etc.

contract Demo {


event sendEther(address sender, address reciever, uint amount);

function sendEth(address payable _receiver) public  payable  {
    _receiver.transfer(msg.value);
    emit sendEther(msg.sender, _receiver, msg.value);
    // return (msg.sender, _receiver, msg.value)
}


}