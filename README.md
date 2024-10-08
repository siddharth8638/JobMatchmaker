# Graduate-Recruiter Matchmaking System

## Vision
Our project aims to bridge the gap between new graduates and recruiters by providing an efficient and transparent matchmaking system. Recruiters can assess candidates through skill tests and find the best matches based on their specific requirements and the candidate’s work preferences. Test results and matchmaking data are securely stored on-chain for transparency and accountability.

## Flowchart
```plaintext
Candidate -> [Add Profile]
                |
Recruiter -> [Add Job Requirements]
                |
Skill Test -> [Recruiter sets test levels]
                |
Matchmaking Algorithm -> [Skills, Preferences, Test Scores]
                |
[Store Match Results On-Chain] <- Smart Contract
                |
Recruiter <--> Candidate [Matched!]
```


Use this contract address to interact with the system and retrieve matchmaking results.

## How it Works
1. **Candidate Registration**: Candidates register their profiles, including skillsets, work preferences, and test scores.
2. **Recruiter Registration**: Recruiters define their job requirements and desired candidate skills.
3. **Skill Testing**: Recruiters set up tests from basic to advanced levels, and candidates take these tests. Test scores are stored on-chain.
4. **Matchmaking Algorithm**: The system matches candidates and recruiters based on skill compatibility, work preference alignment, and test scores.
5. **On-chain Results**: Match results, including the match score, are stored on the Ethereum blockchain, ensuring transparency and immutability.

## Smart Contract Breakdown
- **Candidate Profiles**: Stores candidates' skills, test scores, and work preferences.
- **Recruiter Requirements**: Stores job-related data, including required skills and job preferences.
- **Matchmaking**: Calculates a match score based on the skill match, work preference compatibility, and test results.
- **On-Chain Storage**: Match results are securely stored on-chain, accessible by both recruiters and candidates.

## Future Scope
1. **Data Privacy**: Implement advanced encryption and privacy mechanisms (e.g., zk-SNARKs) to protect sensitive candidate and recruiter data.
2. **Decentralized Testing**: Enable decentralized storage and retrieval of test results using decentralized file storage systems (e.g., IPFS).
3. **Dynamic Matching**: Allow continuous updates to recruiter needs and candidate preferences to dynamically adjust match scores.
4. **Integration with Layer 2 Solutions**: To scale the application and reduce gas fees, the system will be optimized for Layer 2 networks like Arbitrum or Optimism.
5. **Analytics**: Add analytical insights for recruiters to evaluate the performance of the candidates over time and track hiring efficiency.

## Contact Details
For inquiries, collaboration, or any feedback, feel free to reach out:

- **Developer**: [Siddharth Darjee]
- **Email**: [siddharthdarjee@gmail.com]
- **GitHub**: [github.com/siddharth8638]
- **LinkedIn**: [linkedin.com/in/siddharth-darjee]


## Deployment

Contract Address: 0x89cf3faeaed5d40ac67b63ce5ca55b6612229f68
![Screenshot 2024-08-27 161533](https://github.com/user-attachments/assets/bf75e713-47a5-4dc6-876e-e371d9ff8236)






