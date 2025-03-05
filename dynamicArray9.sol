// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DynamicArray{
    uint[] public dynamicArray;

    function addElement(uint _element) public {
        dynamicArray.push(_element);
    }
    function getArrNumber() public view returns(uint){
      return  dynamicArray.length;
    }
}