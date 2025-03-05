// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract gradeCalculator{
    function calculateGrade(uint Physics,uint Chemistry,uint Math,uint Biology) public pure returns(uint){
        return (Physics + Chemistry + Math + Biology) / 4;
    }
    function checkpassGrade(uint average,uint attendence) public pure returns(bool) {
         return (average > 60 && attendence >= 20);
    }
}