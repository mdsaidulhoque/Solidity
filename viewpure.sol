// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract fourthClass{
    uint public score = 80;

   function changeScore(uint newScore) public {
    score = newScore;
   }

      // view , pure

   function readScore() public view returns(uint){
    return score;
   }

   function addtwoScore(uint x , uint y) public pure returns(uint){
    return x + y;
   }

}