// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Insurance {
    address payable public owner;

    address[] public policyHolders;
    mapping(address => uint256) public policies;
    mapping(address => uint256) public claims;
    uint256 public totalPremium;

    
    constructor() {
        owner = payable(msg.sender);
    }

    // Function to buy policies
    function buyPolicies(uint256 premium) public payable {
        require(msg.value == premium, "Incorrect Premium amount");
        policyHolders.push(msg.sender);
        policies[msg.sender] = premium;
        totalPremium += premium;
    }

    // Function to file a claim
    function claimPolicy(uint256 amount) public {
        require(policies[msg.sender] > 0, "You don't have any policy to claim");
        require(amount > 0, "Amount should be greater than 0");
        require(amount <= policies[msg.sender], "Claim amount exceeds policy coverage");
        claims[msg.sender] += amount;
    }

    // Function for owner to approve claims
    function approveClaim(address policyHolder) public payable {
        require(msg.sender == owner, "Only owner can approve the claim");
        require(claims[policyHolder] > 0, "No claims available for this policyholder");

        uint256 claimAmount = claims[policyHolder];
        require(claimAmount <= address(this).balance, "Contract doesn't have enough funds");

        payable(policyHolder).transfer(claimAmount);
        claims[policyHolder] = 0;

        totalPremium -= claimAmount;  // Deduct from total premium after approving claim
    }

    // Function to get policy details for a holder
    function getPolicy(address policyHolder) public view returns (uint256) {
        return policies[policyHolder];
    }

    // Function to get claim details for a holder
    function getClaims(address policyHolder) public view returns (uint256) {
        return claims[policyHolder];
    }

    // Function to get total premium collected
    function getTotalPremium() public view returns (uint256) {
        return totalPremium;
    }
}
