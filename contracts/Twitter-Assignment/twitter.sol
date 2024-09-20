// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;


// Tweeting:
// Create a function to allow users to post a tweet. This function should store the tweet's
// content, the author's address, and the timestamp of creation.

contract Twitter {

    struct User {
        string post;
        address userAdd;
        uint time;

    }

    mapping (address=>User) public users;

    function Tweet(string calldata _post, address _userAdd) public {
        users[_userAdd] = User({
            post:_post,
            userAdd:_userAdd,
            time:block.timestamp
        });
    }
    
}