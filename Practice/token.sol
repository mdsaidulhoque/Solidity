// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Token{
    string public name = "hardhat";
    string public symbol = "SHK";
    uint256 public totalSupply = 1000;

    address public owner;

    mapping (address => uint256) balances;

    constructor(){
        balances[msg.sender]=totalSupply;
        owner = msg.sender;
    }

    function transferToken(address to,uint256 amount) external{
        require(balances[msg.sender] >= amount,"Not enough tokens");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address account) external view returns(uint){
        return balances[account];
    }
}