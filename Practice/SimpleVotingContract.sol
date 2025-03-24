// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleVoting{
    address public owner;

    bytes32 public candidate1 = "Faruk";
    bytes32 public candidate2 = "Minhaj";

    uint public voteforFaruk;
    uint public voteforMinhaj;

    mapping (address => bool) public hasVoted;

    event Voted(address indexed voter,bytes32 candidate);

    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner{
        require(msg.sender == owner,"Only owner can perform this function");
        _;
    }

    function vote(bytes32 candidate) public {
        require(!hasVoted[msg.sender],"You already voted");
        require(candidate == candidate1 || candidate == candidate2,"Invalid vote");
        if(candidate == candidate1){
            voteforFaruk++;
        }
        else{
            voteforMinhaj++;         
        }

        hasVoted[msg.sender] = true;

        emit Voted(msg.sender, candidate);

    }
    
        function getvoteforFaruk() public view returns (uint){
            return voteforFaruk;
        }

        
        function getvoteforMinhaj() public view returns (uint){
            return voteforMinhaj;
        }
}