// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Assignment {
    // function getValues() public payable returns(address,uint,uint) {
    //    return (msg.sender, msg.value, block.timestamp);
    // }


    // 1st approach ======>>>>>

    // struct value {
    //     address userAddress;
    //     uint256 Timestamp;
    //     uint256 price;
    // }

    // value[] public user;

    // function getInfo() public payable {
    //     user.push(value(msg.sender, msg.value, block.timestamp));
    // }


    // 2nd approach =======>>>>>>

    struct User{
        uint balance;
        uint time;
    }

    mapping (address => User) public Users;

    function userInfo() public payable  {
        // 1st type
        // Users[msg.sender].balance = msg.value;
        // Users[msg.sender].time = block.timestamp;

        // 2nd type
        // Users[msg.sender] = User(msg.value,block.timestamp);

        // 3rd type
        Users[msg.sender] = User({
            // we can change the occurance here
            time:block.timestamp,
            balance:msg.value
        });

    }


    function getInfo(address add) public view returns (uint, uint) {
        return (Users[add].balance, Users[add].time);
    }
}
