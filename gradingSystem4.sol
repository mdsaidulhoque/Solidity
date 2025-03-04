// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract GradingSystem{
    mapping (address => uint) public scores;

    function addScore(uint score) public {
        require(score <= 100, "Score must be between 0 to 100"); 
        scores[msg.sender] = score;
    }

    // get letter grade based function

    function getletterGrade() public view returns(string memory){
      uint  score = scores[msg.sender];
        
    if (score >= 80){
        return "A+";
    }
    else if(score >= 60){
        return "A";
    }
    else {
       return "Z";
    }
}

//   Calculate if student passed or not
   function hadPassed() public view returns(bool){
    return scores[msg.sender] >= 60;
   }

function marksneededforNextGrade() public view  returns(uint){
    uint score = scores[msg.sender];

    if (score > 80) return 0;
    if (score > 60) return 80 - score;
    return 60 - score;
}



}