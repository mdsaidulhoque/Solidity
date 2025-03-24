// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract studentProfile{
    string public studentName;

    int public studentAge;

    string public courseName;


    function getProfile(string memory name, int age,  string memory course) public {
      studentName = name;

      studentAge = age;
       
      courseName = course;

    }
}