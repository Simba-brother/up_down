Processing contract: /home/jiaming/slither_fp_files/out7463.sol:Dividends
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out7463.sol:token
[33mWarning[0m for DAOConstantGas in contract 'Dividends':
    |        require(msg.sender == owner);
    |        
  > |        owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out7463.sol(53)

[33mWarning[0m for LockedEther in contract 'Dividends':
    |}
    |
  > |contract Dividends {
    |    address private maintoken = 0x2f7823aaf1ad1df0d5716e8f18e1764579f4abe6;
    |    address private owner = msg.sender;
  at /home/jiaming/slither_fp_files/out7463.sol(7)

[31mViolation[0m for MissingInputValidation in contract 'Dividends':
    |    uint256 public dividends1token = 3521126760563;
    |    uint256 public dividendstart = 1538051599;
  > |    mapping (address => uint256) public users;
    |    mapping (address => uint256) public admins;
    |    token public tokenReward;
  at /home/jiaming/slither_fp_files/out7463.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'Dividends':
    |    uint256 public dividendstart = 1538051599;
    |    mapping (address => uint256) public users;
  > |    mapping (address => uint256) public admins;
    |    token public tokenReward;
    |    
  at /home/jiaming/slither_fp_files/out7463.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'Dividends':
    |    }
    |    
  > |    function admin(address _admin, uint8 _value) public {
    |        require(msg.sender == owner);
    |        
  at /home/jiaming/slither_fp_files/out7463.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Dividends':
    |    uint256 private usertoken;
    |    uint256 private userether;
  > |    uint256 public dividends1token = 3521126760563;
    |    uint256 public dividendstart = 1538051599;
    |    mapping (address => uint256) public users;
  at /home/jiaming/slither_fp_files/out7463.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'Dividends':
    |    uint256 private userether;
    |    uint256 public dividends1token = 3521126760563;
  > |    uint256 public dividendstart = 1538051599;
    |    mapping (address => uint256) public users;
    |    mapping (address => uint256) public admins;
  at /home/jiaming/slither_fp_files/out7463.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Dividends':
    |    mapping (address => uint256) public users;
    |    mapping (address => uint256) public admins;
  > |    token public tokenReward;
    |    
    |    function Dividends() public {
  at /home/jiaming/slither_fp_files/out7463.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Dividends':
    |    }
    |    
  > |    function out() public {
    |        require(msg.sender == owner);
    |        
  at /home/jiaming/slither_fp_files/out7463.sol(50)

[31mViolation[0m for TODAmount in contract 'Dividends':
    |        require(msg.sender == owner);
    |        
  > |        owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out7463.sol(53)

[33mWarning[0m for TODReceiver in contract 'Dividends':
    |        require(msg.sender == owner);
    |        
  > |        owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out7463.sol(53)

[33mWarning[0m for UnhandledException in contract 'Dividends':
    |        require(msg.sender == owner);
    |        
  > |        owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out7463.sol(53)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dividends':
    |        require(msg.sender == owner);
    |        
  > |        owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out7463.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'Dividends':
    |        require(msg.sender == owner);
    |        
  > |        admins[_admin] = _value;
    |    }
    |    
  at /home/jiaming/slither_fp_files/out7463.sol(47)

