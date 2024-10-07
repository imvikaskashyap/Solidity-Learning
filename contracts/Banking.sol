// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Banking {
    mapping(address => uint256) public balance;
    address payable owner;

    mapping(address => bool) public accessGranted;

    constructor() {
        owner = payable(msg.sender);
    }

    // deposit money to your account
    function deposit() public payable {
        require(msg.value > 0, "deposit amount should be greater than 0");
        balance[msg.sender] += msg.value;
    }

    function withdrawl(uint256 _amount) public payable {
        require(msg.sender == owner, "You are not the owner");
        require(
            address(this).balance >= _amount,
            "Insufficient contract funds"
        );
        require(_amount > 0, "Withdrawl amount should be greater than 0");

        owner.transfer(_amount); // we are not using payable because we have already declared owner as payable

        balance[msg.sender] -= _amount;
    }

    // Send Ether to another address
    function transfer(uint256 _amount, address payable _receiver) public payable  {
        require(_amount > 0, "transfer amount should be greater than 0");

         
        require(balance[msg.sender] >= _amount, "Insufficient user funds");
        balance[msg.sender] -= _amount;

        
        _receiver.transfer(_amount);
        balance[_receiver] += _amount;

    }

    // check contract balance
    function checkBalance(address user) public view returns (uint256) {
        return balance[user];
    }

    // Check a user's balance
    function checkUserBalance(address user) public view returns (uint256) {
        return balance[user];
    }

    // To give the access to User
    function grantAccess(address _user) public {
        require(msg.sender == owner, "only owner can give the access");
        accessGranted[_user] = true;
    }

    // Revoke the access
    function revokeAccess(address _user) public {
        require(msg.sender == owner, "only owner can revoke the access");
        accessGranted[_user] = false;
    }

    // destroy the contract
    // function destroy() public {
    //     require(msg.sender == owner, "only owner can destroy the contract");
    //     selfdestruct(owner);
    // }
}
