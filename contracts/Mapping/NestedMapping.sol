// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract NestedMapping {


    mapping (address =>mapping( address=>bool )) public ownerSShip;

    function giveOwnerShip(address sender, address reciever) public {
        ownerSShip[sender][reciever] = true;
    }

    function takeOwnerShip(address sender, address reciever) public {
        ownerSShip[sender][reciever] = false;
    }

    function checkOwnerShip(address sender, address reciever) public view  returns (bool) {
      return   ownerSShip[sender][reciever];
    }



}