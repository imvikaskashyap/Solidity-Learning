// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

// 4. Access Control:
// Implement mechanisms to control access:
// Allow users to authorize other users to post tweets or send messages on their behalf.
// Allow users to revoke these authorizations.


contract Twitter {
    struct User {
        address userAdd;
        bool status;
       
    }

    mapping(address => User) public users;

    function authorize(address _userAdd) public {
        if(_userAdd == User.userAdd && users[User.status] == true){

        }
    }
}
