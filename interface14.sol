// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Icar {
    function start() external;
    function stop() external ;
    function getSpeed() external view returns (uint);
    
}

contract Toyota is Icar{
    bool public isRunning;
    uint public currentSpeed;

   function start() external override {
    isRunning = true;
    currentSpeed = 0;
   }
   
   function stop() external override {
    isRunning = false;
    currentSpeed = 0;
   }
 
   function getSpeed() external view override returns (uint) {
   return currentSpeed;
   }
}