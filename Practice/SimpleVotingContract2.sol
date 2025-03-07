// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AdvancedVoting{
    address public owner;
    bool public votingActive;

  struct Candidate{
    string name;
    uint voteCount;
  }

  Candidate[] public candidates;
  mapping (address => bool) public hasVoted;

  event candidateAdded(string candidateName);
  event voteStarted();
  event voteEnded();
  event Voted(address indexed Voter,string candidates);

  constructor(){
    owner = msg.sender;
  }
  modifier onlyOwner(){
    require(msg.sender == owner,"Only owner can access this function");
    _;
  }
  modifier votingIsActive(){
    require(votingActive,"Voting is not Active");
    _;
  }

  function addCandidate(string memory _name ) public onlyOwner{
    require(bytes(_name).length > 0, "Name cannot be emty");
    candidates.push(Candidate(_name,0));
    emit candidateAdded(_name);
  }

  function startVoting() public onlyOwner{
    require(candidates.length > 1,"atleatst 2 candidate required for start voting");
    votingActive = true;
    emit voteStarted();
  }

 function endVoting() public onlyOwner votingIsActive{
    votingActive = false;
    emit voteEnded();
 }

 function vote(uint candidateIndex) public votingIsActive{
    require(!hasVoted[msg.sender],"You already voted");
    require(candidateIndex < candidates.length,"Invalid candidate index");
    candidates[candidateIndex].voteCount++;
    hasVoted[msg.sender] = true;
    emit Voted(msg.sender, candidates[candidateIndex].name);
 }

 function getCandidateCount() public view returns(uint){
    return candidates.length;
 }

 function getCandidateDetailes(uint index) public view returns (string memory name,uint voteCount){
    require(index < candidates.length,"invalid candidate index");
    Candidate memory candidate = candidates[index];
    return (candidate.name,candidate.voteCount);
 }
 

}