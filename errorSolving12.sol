// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract errorSolving{
    uint public minimumAge = 18;
    mapping (address => uint) public userAge;


  function setAge(uint _age) public {
    require(_age > 0,"Age must be positive");
    require(_age < 100, "Invalid age");
    userAge[msg.sender] = _age;
  }



//  revert{}
function registerForAdultSeminar(uint _age) public {
   if (_age < minimumAge){
    revert("You must have to be 18 or older");
   }
  userAge[msg.sender] = _age;
}

//assert
    uint public total = 100;

function subtractFromTotal(uint amount) public {
   uint newTotal = total - amount;
   assert(newTotal <= total);
   total = newTotal ;
}


}