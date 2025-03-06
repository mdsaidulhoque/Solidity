// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract secondclassContract{
        string public  studentName;
        uint public studentAge;
        bool public isRegistered;
        address public  studentAddress;


        function registerStudent(string memory name,uint age) public{
            studentName = name;
            studentAge = age;
            isRegistered = true;
            studentAddress = msg.sender;
        }
    function isValidAge() public view returns(bool){
        return studentAge >= 18 && studentAge <= 100;
    }

}