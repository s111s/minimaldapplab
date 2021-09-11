pragma solidity 0.8.7;

// This code is for testing the timing lock mechanism. Do not use this code in production.
// Author: s111s

contract Fee {
    address public owner;
    uint public fee;
    uint public feeA;
    uint public feeB;
    
    constructor() {
        owner = msg.sender;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can execute this");
        _;
    }
    
    function changeOwner(address _owner) external {
        owner = _owner;
    }
    
    function setFee(uint _fee) external onlyOwner {
        fee = _fee;
    }
    
    function setFeeAB(uint _a, uint _b) external onlyOwner {
        feeA = _a;
        feeB = _b;
    }
}