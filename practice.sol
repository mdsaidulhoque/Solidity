// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Events{
  event newEvent(address indexed sender,string message);
  event emtyLog();
  function test() public {
    emit newEvent(msg.sender,"Hello sir");
    emit newEvent(msg.sender, "Thanks for your help");
    emit emtyLog();

  }
}