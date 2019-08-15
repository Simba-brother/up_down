Processing contract: /home/jiaming/slither_fp_files/out15049.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15049.sol:token
[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |}
    |
  > |contract Crowdsale {
    |
    |    address public beneficiary; 
  at /home/jiaming/slither_fp_files/out15049.sol(7)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint public price;
    |    token public tokenReward; 
  > |    mapping(address => uint256) public balanceOf;
    |    
    |    bool crowdsaleClosed = false; 
  at /home/jiaming/slither_fp_files/out15049.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |contract Crowdsale {
    |
  > |    address public beneficiary; 
    |    uint public fundingGoal; 
    |    uint public amountRaised; 
  at /home/jiaming/slither_fp_files/out15049.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    address public beneficiary; 
  > |    uint public fundingGoal; 
    |    uint public amountRaised; 
    |    uint public deadline; 
  at /home/jiaming/slither_fp_files/out15049.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    address public beneficiary; 
    |    uint public fundingGoal; 
  > |    uint public amountRaised; 
    |    uint public deadline; 
    |    
  at /home/jiaming/slither_fp_files/out15049.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint public fundingGoal; 
    |    uint public amountRaised; 
  > |    uint public deadline; 
    |    
    |    uint public price;
  at /home/jiaming/slither_fp_files/out15049.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint public deadline; 
    |    
  > |    uint public price;
    |    token public tokenReward; 
    |    mapping(address => uint256) public balanceOf;
  at /home/jiaming/slither_fp_files/out15049.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    
    |    uint public price;
  > |    token public tokenReward; 
    |    mapping(address => uint256) public balanceOf;
    |    
  at /home/jiaming/slither_fp_files/out15049.sol(15)


