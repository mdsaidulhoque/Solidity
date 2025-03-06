// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract visibility{
    //Properties
    //Behaviours

    //Public -> Anywhere accesible;
    //Private -> only withing the contract we can access it'
    //Internal -> Contract, + derived contract
    //External -> Only from outside -> gas efficient;

    uint private privateVar;
    uint internal internalVar;
    uint public publicVar;

    function externalFunction() external {

    }

    function publicFunction() public {

    }

    function privateFunction() private {
             internalFunction();
             publicFunction();
    }

    function internalFunction() internal {
   
    }
}


contract derivedContract is visibility{
    function testAccess() public {
        publicVar = 2;
        internalVar = 7;
        internalFunction();
        publicFunction();
    }
}