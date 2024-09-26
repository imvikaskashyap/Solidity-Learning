// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Assignment {
    

//1. The address which will deploy the contract will become the owner of the wallet contract

    address public owner ;
    uint  ownerBlnc;

    constructor() {

     owner = msg.sender;

    }

    modifier ownerCheck(){
        require(owner == msg.sender, "You are not owner");
        _;
    }

    event captureData(address sender, address reciver,uint amount);

    // 2 owner of the contract can send ehter to any of the ETH EOA Account.

    function sendEth(address payable  _receiver) public payable ownerCheck()  {
        
       _receiver.transfer(msg.value);
       emit captureData(msg.sender, _receiver, msg.value);
    }


    // 3. anyone can send the ether to owner account.
     // 5. create one event which get emmited whenever owner recieve ether from some other EOA account


    event captureOwnerReceiveEthData(address sender, address reciver,uint amount);

   function sendEthToOwner() public payable {
    ownerBlnc += msg.value;
    payable(owner).transfer(msg.value);  // Send ether to the owner
    emit captureOwnerReceiveEthData(msg.sender, owner, msg.value);  // Correct event
}


    // 4. Owner of the contract can see the balance of your own account

  
   function checkBalance() public view ownerCheck returns (uint) {
        return ownerBlnc;  // Return the contract's balance
    }


}