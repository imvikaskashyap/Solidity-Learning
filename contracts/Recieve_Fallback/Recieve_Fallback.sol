// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;


contract EtherReceiver {
    
    // Receive function - accepts Ether with no data
    receive() external payable {
        // Log Ether received
        emit Received(msg.sender, msg.value, "Ether received without data");
    }
    
    // Fallback function - accepts Ether with data
    fallback() external payable {
        // Log Ether received with data
        emit Received(msg.sender, msg.value, "Ether received with data");
    }

    // Event to log received Ether
    event Received(address sender, uint amount, string message);
    
    // Function to check contract balance
    function checkBalance() public view returns (uint) {
        return address(this).balance;
    }
}
