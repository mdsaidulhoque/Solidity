// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract InvestmentCalculator{
    function calculatorIn(uint investment,uint returnAmount) public pure returns(uint){
        return (returnAmount * 100) / investment;
    }
    function Calculatorinterest(uint principal,uint rate) public pure returns (uint){
        return (principal * rate) / 100;
    }
}