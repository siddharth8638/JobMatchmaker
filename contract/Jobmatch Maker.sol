// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract JobMatchmaker {

    // Struct for recruiters' needs
    struct Recruiter {
        uint id;
        string companyName;
        string requiredSkills;
        string jobType; // e.g., Remote, On-site, Hybrid
    }

    // Struct for candidates' preferences
    struct Candidate {
        uint id;
        string name;
        string skillset;
        string desiredJobType;
    }

    // Struct to store matchmaking results
    struct MatchResult {
        uint recruiterId;
        uint candidateId;
        uint matchScore;
        bool exists; // For checking existence of a match
    }

    uint public recruiterCount;
    uint public candidateCount;

    // Mapping of recruiter and candidate
    mapping(uint => Recruiter) public recruiters;
    mapping(uint => Candidate) public candidates;

    // Mapping to store matchmaking results
    mapping(bytes32 => MatchResult) public matchResults;

    // Event to log new match results
    event MatchMade(uint recruiterId, uint candidateId, uint matchScore);

    // Function to add recruiters
    function addRecruiter(string memory _companyName, string memory _requiredSkills, string memory _jobType) public {
        recruiterCount++;
        recruiters[recruiterCount] = Recruiter(recruiterCount, _companyName, _requiredSkills, _jobType);
    }

    // Function to add candidates
    function addCandidate(string memory _name, string memory _skillset, string memory _desiredJobType) public {
        candidateCount++;
        candidates[candidateCount] = Candidate(candidateCount, _name, _skillset, _desiredJobType);
    }

    // Function to calculate match score (simplified)
    function calculateMatchScore(uint _recruiterId, uint _candidateId) internal view returns (uint) {
        // Add custom logic here based on skills, job type, etc.
        // Placeholder logic, e.g., if job types match, score is 80, else 50.
        if (keccak256(abi.encodePacked(recruiters[_recruiterId].jobType)) == keccak256(abi.encodePacked(candidates[_candidateId].desiredJobType))) {
            return 80;
        } else {
            return 50;
        }
    }

    // Function to create a match and store it on-chain
    function createMatch(uint _recruiterId, uint _candidateId) public {
        require(_recruiterId > 0 && _recruiterId <= recruiterCount, "Invalid recruiter ID");
        require(_candidateId > 0 && _candidateId <= candidateCount, "Invalid candidate ID");

        bytes32 matchKey = keccak256(abi.encodePacked(_recruiterId, _candidateId));

        // Ensure the match hasn't been made already
        require(!matchResults[matchKey].exists, "Match already exists");

        uint matchScore = calculateMatchScore(_recruiterId, _candidateId);

        // Store the match result on-chain
        matchResults[matchKey] = MatchResult(_recruiterId, _candidateId, matchScore, true);

        emit MatchMade(_recruiterId, _candidateId, matchScore);
    }

    // Function to get match results
    function getMatch(uint _recruiterId, uint _candidateId) public view returns (MatchResult memory) {
        bytes32 matchKey = keccak256(abi.encodePacked(_recruiterId, _candidateId));
        require(matchResults[matchKey].exists, "Match does not exist");
        return matchResults[matchKey];
    }
}
