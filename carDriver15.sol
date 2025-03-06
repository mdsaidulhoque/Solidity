// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./interface14.sol";

contract carDriver{
        Icar public car;
    
    constructor(address carAddress){
        car = Icar(carAddress);
    }

    function startCar() public {
        car.start();
    }
    function stopCar() public {
        car.stop();
    }
    function speedCar() public view returns (uint){
      return  car.getSpeed();
    }
}
