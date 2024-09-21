// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

// 3. Following Users:
// Develop a function that enables a user to follow another user by adding their address to a
// list of followed users.

contract Twitter {
   address[] public User;

    function Follow(address _add) public   {
        User.push(_add);
    }
}
