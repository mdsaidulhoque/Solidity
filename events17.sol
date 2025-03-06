// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Events {
    struct User {
        string userFullName;
        uint totalPoints;
        bool hasRegistered;
    }

    mapping(address => User) public registeredUsers;

    event UserRegistered(address indexed userAddress, string userFullName, uint registrationTime);
    event PointsAwarded(address indexed userAddress, uint pointsEarned, string activityDetails);

    // Function to register a new user
    function registerNewUser(string memory fullName) public {
        require(bytes(fullName).length > 0, "Name cannot be empty");
        require(!registeredUsers[msg.sender].hasRegistered, "User already registered");

        registeredUsers[msg.sender] = User(fullName, 0, true);
        emit UserRegistered(msg.sender, fullName, block.timestamp);
    }

    // Function to award points to a user
    function awardPoints(uint points, string memory activity) public {
        require(registeredUsers[msg.sender].hasRegistered, "User not registered");
        require(points > 0, "Points must be greater than zero");

        registeredUsers[msg.sender].totalPoints += points;
        emit PointsAwarded(msg.sender, points, activity);
    }

    // Function to get the total points of a specific user
    function getTotalPoints(address userAddress) public view returns (uint) {
        require(registeredUsers[userAddress].hasRegistered, "User not registered");
        return registeredUsers[userAddress].totalPoints;
    }

    // Fallback function to reject unintended ETH transfers
    fallback() external payable {
        revert("Contract does not accept ETH");
    }

    // Optional: receive function if ETH should be handled
    receive() external payable {
        // Custom logic if needed
    }
}
