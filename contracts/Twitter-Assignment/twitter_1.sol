// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract TweetContract {
    //    <====== 1 =======>
    // Tweeting
    struct Tweet {
        address author;
        string content;
        uint256 createdAt;
    }

    mapping(address => Tweet[]) public tweets;

    function postTweet(string memory _content) public {
        tweets[msg.sender].push(Tweet(msg.sender, _content, block.timestamp));
        // emit TweetPosted(msg.sender, _content, block.timestamp);
    }

    //    <====== 2 =======>
    // Messaging:

    // struct Messaging{
    //     address sender;
    //     address recipient;
    //     string content;
    //     uint createdAt;
    // }

    // mapping (address => Messaging[]) public message;

    // function doMessage (address _recipient, string memory _content) public {
    //     message[_recipient].push(Messaging(msg.sender, _recipient,_content, block.timestamp ));
    // }

    //    <====== 3 =======>
    // Following Users:

    mapping(address => address[]) public following;

    function follow(address _add) public {
        following[msg.sender].push(_add);
    }

    //    <====== 4 =======>
    // Access Control

    mapping(address => mapping(address => bool)) public isAuthorized;

    // function to give authorization
    function giveAuthorize(address _user) public {
        isAuthorized[msg.sender][_user] = true;
    }

    // function to revoke authorization
    function revokeAuthorization(address _user) public {
        isAuthorized[msg.sender][_user] = false;
    }

    function postTweetOnBehalf(string memory _content, address _author) public {
        require(
            isAuthorized[_author][msg.sender],
            "Not authorized to post on behalf"
        );
        tweets[_author].push(Tweet(_author, _content, block.timestamp));
    }

    //    <====== 5 =======>
    // Retrieving Data

    function retrieveLatestTweet(address _user, uint256 count)
        public
        view
        returns (Tweet[] memory)
    {
        uint256 totalTweets = tweets[_user].length;
        require(count <= totalTweets, "Count is biiger that totalTweets");

        Tweet[] memory latestTweets = new Tweet[](count);

        for (uint256 i = 0; i < count; i++) {
            latestTweets[i] = tweets[_user][totalTweets - count + i];
        }

        return latestTweets;
    }

    // get own latest tweet 
    function getOwnLatestTweet(uint _count) public view returns (Tweet[] memory)  {
      return retrieveLatestTweet(msg.sender, _count);
    }
}
