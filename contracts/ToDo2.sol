// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

// Create Task
// Get task
// Reward after task completion

contract ToDo {
    struct task {
        string work;
        bool status;
    }

    uint revenue;

    address owner;

    mapping(address => task[]) taskList;
    mapping(address => uint) rewardList;

    event taskCreated(uint id, string task, bool status);
    event taskToggled(uint id, string task, bool status);
    event TaskCompleted(address addr);
    event WithdrawComplete(uint value);

    error TaskNotExist(uint id);
    error TaskNotCompleted(uint i);
    error TransactionFailed(uint reward);
    error NotOwner(address add);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        if (msg.sender != owner) {
            revert NotOwner(msg.sender);
        }
        _;
    }

    modifier taskExist(uint _id) {
        if (taskList[msg.sender].length <= _id) {
            revert TaskNotExist(_id);
        }
        _;
    }

  


    function createTask(string calldata _work) external payable {
        require(msg.value == 0.1 ether, "You have to pay atleas 0.1 eth");

        taskList[msg.sender].push(task(_work, false));
        rewardList[msg.sender] += msg.value;

        emit taskCreated(taskList[msg.sender].length - 1, _work, false);
    }

    function toggleTask(uint _id) external taskExist(_id) {
        taskList[msg.sender][_id].status = !taskList[msg.sender][_id].status;
        emit taskToggled(
            _id,
            taskList[msg.sender][_id].work,
            taskList[msg.sender][_id].status
        );
    }





    function taskCompleted() external payable {
        for (uint i = 0; i < taskList[msg.sender].length; i++) {
            if (taskList[msg.sender][i].status == false) {
                revert TaskNotCompleted(i);
            }
        }

        uint reward = rewardList[msg.sender];
        uint charges = reward * 1/100;

        (bool sent, bytes memory data) = payable(msg.sender).call{
            value: reward - charges
        }("");

      require(sent,"Tx Failed");

        revenue += charges;

        delete taskList[msg.sender];
        rewardList[msg.sender] = 0;

        emit TaskCompleted(msg.sender);
    }

    function getTask() external view returns (task[] memory) {
        return taskList[msg.sender];
    }

    function getReward() external view returns (uint) {
        return rewardList[msg.sender];
    }

    function getRevenue() external view onlyOwner returns (uint) {
        return revenue;
    }

    function setOwner(address _owner) external onlyOwner {
        owner = _owner;
    }

    function revenueWithdrawl() external payable onlyOwner {
        (bool sent, bytes memory data) = payable (owner).call{value:revenue}("");
        emit WithdrawComplete(revenue);
        revenue=0;
    }
}
