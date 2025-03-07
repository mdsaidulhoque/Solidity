// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleWallet{
    uint public balance = 0;
    address public Owner;

    constructor(){
      Owner = msg.sender;
    }

    function deposit(uint amount) public{
        balance = balance + amount;
    } 

    function withdraw(uint amount) public {
        require(msg.sender == Owner ,"Only owner can withdraw");
        balance = balance - amount;
    }
}