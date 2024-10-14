// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Government {
    address payable owner;

    address[] public citizens;
    address[] public officials;

    mapping(address => bool) public isOfficial;
    mapping(address => bool) public grantAccess;
    mapping(address => bool) public hasVoted;
    mapping(address => uint256) public votesReceived;

    struct Law {
        string description;
        bool    enacted;
    }

    Law[] public proposedLaws;

    constructor() {
        owner = payable(msg.sender);
    }

    // Public can register as a citizen
    function registerAsCitizen() public {
        require(
            !isOfficial[msg.sender],
            "You are alrady registerd as a Official"
        );
        citizens.push(msg.sender);
    }

    // Public can register as a Official
    function registerAsOfficials() public {
        require(
            !isOfficial[msg.sender],
            "You are already registerd as a official"
        );
        officials.push(msg.sender);
        isOfficial[msg.sender] = true;
    }

    // Citizens can vote but official can not vote
    function vote(address condidate) public {
        require(!isOfficial[msg.sender], "Officials can not vote");
        require(!isOfficial[condidate], "condidate should be a citizen");
        require(!hasVoted[msg.sender], "You have already voted");

        // marked as voted
        hasVoted[msg.sender] = true;

        // Increment the votes received by the candidate
        votesReceived[condidate] += 1;
    }

    // Propose law - only officials can propose the law
    function proposeLaw(string memory _description) public  {
        require(isOfficial[msg.sender], "Only Official can propose a law");

        proposedLaws.push(Law({
            description:_description,
            enacted:false
        }));

    }

    // enact the law
    function enactLaw(uint _lawIndex) public  {
        require(msg.sender == owner, "Only owner can enact a law");
        require(_lawIndex > proposedLaws.length, "Don't have the index");

        // enact the law
        proposedLaws[_lawIndex].enacted = true;
    }

    // Get the list of proposed laws
    function getProposedLaws() public view returns (Law[] memory) {
        return proposedLaws;
    }

    // Check if a specific law has been enacted
    function isLawEnacted(uint _lawIndex) public view returns (bool) {
        require(_lawIndex < proposedLaws.length, "Invalid law index");
        return proposedLaws[_lawIndex].enacted;
    }

    // give the permission
    function grantPermission(address _user) public {
        require(msg.sender == owner, "only owner can give the permission");
        grantAccess[_user] = true;
    }

    // revoke the permisson
    function revokePermission(address _user) public {
        require(msg.sender == owner, "only owner can give the permission");
        grantAccess[ _user] = false;
    }

    // get all citizens
    function getCitizens() public view returns (address[] memory) {
        return citizens;
    }

    function getOfficials() public view returns (address[] memory) {
        return officials;
    }
}
