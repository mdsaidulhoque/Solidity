// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleWallet{
    uint public balance;
    address public Owner;

    constructor(){
        Owner = msg.sender;
    }

    event Deposit(address indexed sender,uint amount);
    event Withdrawal(address indexed recipent,uint amount);

    modifier onlyOwner(){
         require(msg.sender == Owner,"Only owner can perform this function");
         _;
    }
     
     function deposit(uint amount) public {
        balance += amount;
        emit Deposit(msg.sender, amount);
     }

     function withdrawal(uint amount) public onlyOwner{ 
        require(amount <= balance,"Not enough balance");
        balance -= amount;
        emit Withdrawal(msg.sender,amount);
     }

     function getBalance() public view returns(uint){
        return balance;
     }
}