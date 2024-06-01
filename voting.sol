// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleVoting {
    mapping(string => uint256) public votes;

    function vote(string calldata candidate) public {
        votes[candidate] += 1;
    }

    function viewVotes(string calldata candidate) public view returns (uint256) {
        return votes[candidate];
    }
}
