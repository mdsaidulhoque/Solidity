// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract  Animal{
    string public species;

    function makesound() public pure virtual  returns(string memory){
        return ".....";
    }
}


contract Dog is Animal{
    constructor() {
        species = "Dog";
    }
    function makesound() public pure override  returns(string memory){
        return "Woof";
    }
}


contract Cat is Animal{
    constructor(){
        species = "Cat";
    }
    function makesound() public pure override  returns (string memory){
        return "Meaw";
    }
}