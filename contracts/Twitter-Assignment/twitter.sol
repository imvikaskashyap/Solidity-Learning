// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Twitter {
    struct Tweet {
        string content;
        address author;
        uint256 createdAt;
    }

    struct Message {
        address from;
        address to;
        string message;
        uint256 time;
    }

    mapping(uint256 => Tweet) public Tweeting;
    mapping(address => Message[]) public conversation;

    uint256 nextId;
    uint256 nextMessageId;

    function tweet(string memory _content, address _author) public {
        Tweeting[nextId] = Tweet({
            content: _content,
            author: _author,
            createdAt: block.timestamp
        });
    }

    function Chat(
        address _from,
        address _to,
        string memory _message
    ) public {
        conversation[_from].push(
            Message(_from, _to, _message, block.timestamp)
        );
    }
}
