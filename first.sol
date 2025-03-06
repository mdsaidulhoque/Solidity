// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract firstcontract{

     string public myName = "MD SAIDUL HOQUE";

     uint16 public Roll = 190;

     address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

     bool public isActive = true;
 



     function getBool() public view returns(bool){
      return isActive;
     }






}
