// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

// interface is just like a blue print. which is neccessary to create ERC20 token and many more.
// means differnet tokens have their some procedure which you have to follow if you want to deploy
// on your token on that tokens.

// interface is not iterable
// interface only supports expernally function.

interface Calculator {
    function add(uint256 a, uint256 b) external returns (uint256);

    function sub(uint256 a, uint256 b) external returns (uint256);
}

contract otherCalc is Calculator {
    function add(uint256 a, uint256 b) external pure returns (uint256) {
        return a + b;
    }

    function sub(uint256 a, uint256 b) external pure returns (uint256) {
        return a - b;
    }
}
