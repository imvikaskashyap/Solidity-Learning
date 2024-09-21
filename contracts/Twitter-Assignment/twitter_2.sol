// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

//   2. Messaging:
// Implement a function that enables users to send messages to other users. It should record
// the sender, recipient, message content, and creation timestamp.

contract Twitter {
    struct User2 {
        address sender;
        // address recipient;
        string[] messages;
        uint256 time;
    }

    mapping(address => User2) public users2;

    function sendMessage( address _sender,address _recipient, string[] calldata _message ) public {
        // send message
        users2[_recipient] = User2({
            sender: _sender,
            messages: _message,
            time: block.timestamp
        });
    }
}
