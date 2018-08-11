pragma solidity ^0.4.24;

contract Election {
    
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    uint public candidateCount;
    mapping(uint => Candidate) public Candidates;
    
    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate(string _name) private {
        candidateCount++;
        Candidates[candidateCount] = Candidate(candidateCount, _name, 0);
    }

}