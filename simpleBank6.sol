// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract simpleBank{
    uint public Balance = 0;

    function deposit(uint amount) public {
        Balance = Balance + amount;
    }
    
    function withdraw(uint amount) public {
        require(Balance >= amount, "You don't have sufficient amount of money");
        Balance = Balance - amount;
    }

    function checkBalance() public view  returns(uint){
        return Balance;
    }
}