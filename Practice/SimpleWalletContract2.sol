// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleWallet{
    uint public balance;
    address public Owner;

    constructor(){
        Owner = msg.sender;
    }
    function deposit(uint amount) public {
        balance += amount;
    }

    function withdraw(uint amount) public {
        require(msg.sender == Owner,"Only Owner can withdraw");
        require(amount <= balance,"Not enough balance");
        balance -= amount;
    }

    function getBalance() public view returns(uint){
        return balance;
    }
}