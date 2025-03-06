// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Memory{
    //Stored in permanent storage
    struct  User{
        string title;
        uint year;
    }
    //Stored in Storage
   User[] public clients;

   function addUser(string memory Name,uint age) public {
    //Creating in memory but saving to storage
    clients.push(User(Name,age));
   }

   function findUser(uint index) public view returns (string memory,uint){
    User storage member = clients[index];
       return (member.title,member.year);
   }

   function updateUser(uint index,string memory Name) public {
    User storage member = clients[index];
    member.title = Name;
   }

    
}