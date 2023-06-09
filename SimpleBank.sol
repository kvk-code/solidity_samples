// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract SimpleBank {
    uint256 public balance;

    // Initialize the balance at contract deployment
    constructor() {
        balance = 0;
    }

    function deposit(uint256 amount) public {
        balance += amount;
    }

    function withdraw(uint256 amount) public {
        // Ensure there are enough funds to withdraw
        if (balance >= amount) {
            balance -= amount;
        }
    }

    function viewBalance() public view returns (uint256) {
        return balance;
    }
}
