// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Automotive{

    // variables
    address public owner;
    mapping (address=>bool) public buyers;
    string public vehicleMake;
    string public vehicleModel;
    uint public price;

    // Events 
    event Purchase(address buyer, string make, string model, uint price);


    // constructor
    constructor()    {
       owner  = msg.sender;
    }

    function buyVehicle(string memory _make, string memory _model) public payable {
        require(msg.value >= price, "Insufficient balance");
        require(buyers[msg.sender] == false, "Owner can't buy car");
            vehicleMake = _make;
            vehicleModel = _model;
            buyers[msg.sender] = true;
            emit Purchase(msg.sender, _make, _model, price);
    }

    function updatePrice(uint _price) public {
        require(msg.sender == owner);
        price = _price;
    }


    function checkOwnerShip() public view returns (bool){
        return buyers[msg.sender];
    }

}