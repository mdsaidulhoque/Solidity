// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping{
    //    syntax of mapping in solidity          
    //  mapping (keyType => valueType) public  mappingName

    mapping (address => uint) public balance;

    function updateBalances(uint _Amount) public {
         balance[msg.sender] = _Amount ;
    }


}