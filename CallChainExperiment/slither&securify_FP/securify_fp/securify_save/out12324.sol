Processing contract: /home/jiaming/slither_fp_files/out12324.sol:HourglassInterface
Processing contract: /home/jiaming/slither_fp_files/out12324.sol:StrongHand
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out12324.sol:StrongHandsManager
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out12324.sol:StrongHandsManagerInterface
[31mViolation[0m for DAO in contract 'StrongHand':
    |        private
    |    {
  > |        p3dContract.buy.value(_amount)(_referrer);
    |        uint256 balance = p3dContract.balanceOf(address(this));
    |        
  at /home/jiaming/slither_fp_files/out12324.sol(102)

[33mWarning[0m for DAO in contract 'StrongHand':
    |        p3dBalance = balance;
    |        
  > |        strongHandManager.mint(owner, diff);
    |    }
    |
  at /home/jiaming/slither_fp_files/out12324.sol(108)

[33mWarning[0m for DAOConstantGas in contract 'StrongHand':
    |    {
    |        p3dContract.withdraw();
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out12324.sol(116)

[33mWarning[0m for LockedEther in contract 'StrongHand':
    |}
    |
  > |contract StrongHand {
    |
    |    HourglassInterface constant p3dContract = HourglassInterface(0xB3775fB83F7D12A36E0475aBdD1FCA35c091efBe);
  at /home/jiaming/slither_fp_files/out12324.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'StrongHand':
    |    function() public payable {}
    |   
  > |    function buy(address _referrer)
    |        external
    |        payable
  at /home/jiaming/slither_fp_files/out12324.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'StrongHand':
    |    StrongHandsManagerInterface strongHandManager;
    |    
  > |    address public owner;
    |    uint256 private p3dBalance = 0;
    |    
  at /home/jiaming/slither_fp_files/out12324.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'StrongHand':
    |    }
    |    
  > |    function purchase(uint256 _amount, address _referrer)
    |        private
    |    {
  at /home/jiaming/slither_fp_files/out12324.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'StrongHand':
    |    }
    |
  > |    function withdraw()
    |        external
    |        onlyOwner
  at /home/jiaming/slither_fp_files/out12324.sol(111)

[31mViolation[0m for TODAmount in contract 'StrongHand':
    |    {
    |        p3dContract.withdraw();
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out12324.sol(116)

[33mWarning[0m for TODReceiver in contract 'StrongHand':
    |        private
    |    {
  > |        p3dContract.buy.value(_amount)(_referrer);
    |        uint256 balance = p3dContract.balanceOf(address(this));
    |        
  at /home/jiaming/slither_fp_files/out12324.sol(102)

[33mWarning[0m for TODReceiver in contract 'StrongHand':
    |    {
    |        p3dContract.withdraw();
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out12324.sol(116)

[33mWarning[0m for UnhandledException in contract 'StrongHand':
    |        private
    |    {
  > |        p3dContract.buy.value(_amount)(_referrer);
    |        uint256 balance = p3dContract.balanceOf(address(this));
    |        
  at /home/jiaming/slither_fp_files/out12324.sol(102)

[33mWarning[0m for UnhandledException in contract 'StrongHand':
    |    {
    |        p3dContract.buy.value(_amount)(_referrer);
  > |        uint256 balance = p3dContract.balanceOf(address(this));
    |        
    |        uint256 diff = balance - p3dBalance;
  at /home/jiaming/slither_fp_files/out12324.sol(103)

[33mWarning[0m for UnhandledException in contract 'StrongHand':
    |        p3dBalance = balance;
    |        
  > |        strongHandManager.mint(owner, diff);
    |    }
    |
  at /home/jiaming/slither_fp_files/out12324.sol(108)

[33mWarning[0m for UnhandledException in contract 'StrongHand':
    |        onlyOwner
    |    {
  > |        p3dContract.withdraw();
    |        owner.transfer(address(this).balance);
    |    }
  at /home/jiaming/slither_fp_files/out12324.sol(115)

[33mWarning[0m for UnhandledException in contract 'StrongHand':
    |    {
    |        p3dContract.withdraw();
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out12324.sol(116)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrongHand':
    |        private
    |    {
  > |        p3dContract.buy.value(_amount)(_referrer);
    |        uint256 balance = p3dContract.balanceOf(address(this));
    |        
  at /home/jiaming/slither_fp_files/out12324.sol(102)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrongHand':
    |    {
    |        p3dContract.buy.value(_amount)(_referrer);
  > |        uint256 balance = p3dContract.balanceOf(address(this));
    |        
    |        uint256 diff = balance - p3dBalance;
  at /home/jiaming/slither_fp_files/out12324.sol(103)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrongHand':
    |        p3dBalance = balance;
    |        
  > |        strongHandManager.mint(owner, diff);
    |    }
    |
  at /home/jiaming/slither_fp_files/out12324.sol(108)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrongHand':
    |        onlyOwner
    |    {
  > |        p3dContract.withdraw();
    |        owner.transfer(address(this).balance);
    |    }
  at /home/jiaming/slither_fp_files/out12324.sol(115)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrongHand':
    |    {
    |        p3dContract.withdraw();
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out12324.sol(116)

[31mViolation[0m for UnrestrictedWrite in contract 'StrongHand':
    |        
    |        uint256 diff = balance - p3dBalance;
  > |        p3dBalance = balance;
    |        
    |        strongHandManager.mint(owner, diff);
  at /home/jiaming/slither_fp_files/out12324.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'StrongHand':
    |        
    |        uint256 diff = balance - p3dBalance;
  > |        p3dBalance = balance;
    |        
    |        strongHandManager.mint(owner, diff);
  at /home/jiaming/slither_fp_files/out12324.sol(106)

[33mWarning[0m for LockedEther in contract 'StrongHandsManager':
    |}
    |
  > |contract StrongHandsManager {
    |    
    |    event CreateStrongHand(address indexed owner, address indexed strongHand);
  at /home/jiaming/slither_fp_files/out12324.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'StrongHandsManager':
    |    event CreateStrongHand(address indexed owner, address indexed strongHand);
    |    
  > |    mapping (address => address) public strongHands;
    |    mapping (address => uint256) public ownerToBalance;
    |    
  at /home/jiaming/slither_fp_files/out12324.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'StrongHandsManager':
    |    
    |    mapping (address => address) public strongHands;
  > |    mapping (address => uint256) public ownerToBalance;
    |    
    |    //ERC20
  at /home/jiaming/slither_fp_files/out12324.sol(18)

[31mViolation[0m for MissingInputValidation in contract 'StrongHandsManager':
    |    }
    |    
  > |    function mint(address _owner, uint256 _amount)
    |        external
    |    {
  at /home/jiaming/slither_fp_files/out12324.sol(39)

[31mViolation[0m for MissingInputValidation in contract 'StrongHandsManager':
    |    }
    |    
  > |    function balanceOf(address _owner)
    |        public
    |        view
  at /home/jiaming/slither_fp_files/out12324.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'StrongHandsManager':
    |}
    |
  > |contract StrongHandsManager {
    |    
    |    event CreateStrongHand(address indexed owner, address indexed strongHand);
  at /home/jiaming/slither_fp_files/out12324.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'StrongHandsManager':
    |    event Transfer(address indexed from, address indexed to, uint256 tokens);
    |    
  > |    string public constant name = "Stronghands3D";
    |    string public constant symbol = "S3D";
    |    uint8 public constant decimals = 18;
  at /home/jiaming/slither_fp_files/out12324.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'StrongHandsManager':
    |    
    |    string public constant name = "Stronghands3D";
  > |    string public constant symbol = "S3D";
    |    uint8 public constant decimals = 18;
    |    
  at /home/jiaming/slither_fp_files/out12324.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'StrongHandsManager':
    |    string public constant name = "Stronghands3D";
    |    string public constant symbol = "S3D";
  > |    uint8 public constant decimals = 18;
    |    
    |    uint256 internal tokenSupply = 0;
  at /home/jiaming/slither_fp_files/out12324.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'StrongHandsManager':
    |    uint256 internal tokenSupply = 0;
    |
  > |    function getStrong()
    |        public
    |    {
  at /home/jiaming/slither_fp_files/out12324.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'StrongHandsManager':
    |    
    |    //ERC20
  > |    function totalSupply()
    |        public
    |        view
  at /home/jiaming/slither_fp_files/out12324.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'StrongHandsManager':
    |        require(strongHands[msg.sender] == address(0), "you already became a Stronghand");
    |        
  > |        strongHands[msg.sender] = new StrongHand(msg.sender);
    |        
    |        emit CreateStrongHand(msg.sender, strongHands[msg.sender]);
  at /home/jiaming/slither_fp_files/out12324.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'StrongHandsManager':
    |        require(strongHands[_owner] == msg.sender);
    |        
  > |        tokenSupply+= _amount;
    |        ownerToBalance[_owner]+= _amount;
    |        
  at /home/jiaming/slither_fp_files/out12324.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'StrongHandsManager':
    |        
    |        tokenSupply+= _amount;
  > |        ownerToBalance[_owner]+= _amount;
    |        
    |        emit Transfer(address(0), _owner, _amount);
  at /home/jiaming/slither_fp_files/out12324.sol(45)


