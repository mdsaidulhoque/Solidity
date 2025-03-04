// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract mathOperators{
    uint public score = 20;

//    Addition
    function addScore(uint point) public{
        // score = score + point;   DRY = Dont't Repeat Yourself
        score += point;
    }
    // Subtraction
    function subtractScore(uint point) public {
          require(score >= point, "Point cannot be negative number");
        //   score = score - point;
          score -= point;
    }
    // Multification
    function multiflyScore(uint point) public {
        score *= point;
    }
    // Divition
    function divideScore(uint point) public {
        require(score > 0, "Cannot divided by 0");
        score /= point;
    }
}