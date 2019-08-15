Processing contract: /home/jiaming/slither_fp_files/out12326.sol:HourglassInterface
Processing contract: /home/jiaming/slither_fp_files/out12326.sol:StrongHand
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out12326.sol:StrongHandsManager
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out12326.sol:StrongHandsManagerInterface
[31mViolation[0m for DAO in contract 'StrongHand':
    |        private
    |    {
  > |        p3dContract.buy.value(_amount)(_referrer);
    |        uint256 balance = p3dContract.balanceOf(address(this));
    |        
  at /home/jiaming/slither_fp_files/out12326.sol(101)

[33mWarning[0m for DAO in contract 'StrongHand':
    |        p3dBalance = balance;
    |        
  > |        strongHandManager.mint(owner, diff);
    |    }
    |
  at /home/jiaming/slither_fp_files/out12326.sol(107)

[33mWarning[0m for DAOConstantGas in contract 'StrongHand':
    |    {
    |        p3dContract.withdraw();
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out12326.sol(115)

[33mWarning[0m for LockedEther in contract 'StrongHand':
    |}
    |
  > |contract StrongHand {
    |
    |    HourglassInterface constant p3dContract = HourglassInterface(0xB3775fB83F7D12A36E0475aBdD1FCA35c091efBe);
  at /home/jiaming/slither_fp_files/out12326.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'StrongHand':
    |    function() public payable {}
    |   
  > |    function buy(address _referrer)
    |        external
    |        payable
  at /home/jiaming/slither_fp_files/out12326.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'StrongHand':
    |    StrongHandsManagerInterface strongHandManager;
    |    
  > |    address public owner;
    |    uint256 private p3dBalance = 0;
    |    
  at /home/jiaming/slither_fp_files/out12326.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'StrongHand':
    |    }
    |    
  > |    function purchase(uint256 _amount, address _referrer)
    |        private
    |    {
  at /home/jiaming/slither_fp_files/out12326.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'StrongHand':
    |    }
    |
  > |    function withdraw()
    |        external
    |        onlyOwner
  at /home/jiaming/slither_fp_files/out12326.sol(110)

[31mViolation[0m for TODAmount in contract 'StrongHand':
    |    {
    |        p3dContract.withdraw();
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out12326.sol(115)

[33mWarning[0m for TODReceiver in contract 'StrongHand':
    |        private
    |    {
  > |        p3dContract.buy.value(_amount)(_referrer);
    |        uint256 balance = p3dContract.balanceOf(address(this));
    |        
  at /home/jiaming/slither_fp_files/out12326.sol(101)

[33mWarning[0m for TODReceiver in contract 'StrongHand':
    |    {
    |        p3dContract.withdraw();
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out12326.sol(115)

[33mWarning[0m for UnhandledException in contract 'StrongHand':
    |        private
    |    {
  > |        p3dContract.buy.value(_amount)(_referrer);
    |        uint256 balance = p3dContract.balanceOf(address(this));
    |        
  at /home/jiaming/slither_fp_files/out12326.sol(101)

[33mWarning[0m for UnhandledException in contract 'StrongHand':
    |    {
    |        p3dContract.buy.value(_amount)(_referrer);
  > |        uint256 balance = p3dContract.balanceOf(address(this));
    |        
    |        uint256 diff = balance - p3dBalance;
  at /home/jiaming/slither_fp_files/out12326.sol(102)

[33mWarning[0m for UnhandledException in contract 'StrongHand':
    |        p3dBalance = balance;
    |        
  > |        strongHandManager.mint(owner, diff);
    |    }
    |
  at /home/jiaming/slither_fp_files/out12326.sol(107)

[33mWarning[0m for UnhandledException in contract 'StrongHand':
    |        onlyOwner
    |    {
  > |        p3dContract.withdraw();
    |        owner.transfer(address(this).balance);
    |    }
  at /home/jiaming/slither_fp_files/out12326.sol(114)

[33mWarning[0m for UnhandledException in contract 'StrongHand':
    |    {
    |        p3dContract.withdraw();
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out12326.sol(115)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrongHand':
    |        private
    |    {
  > |        p3dContract.buy.value(_amount)(_referrer);
    |        uint256 balance = p3dContract.balanceOf(address(this));
    |        
  at /home/jiaming/slither_fp_files/out12326.sol(101)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrongHand':
    |    {
    |        p3dContract.buy.value(_amount)(_referrer);
  > |        uint256 balance = p3dContract.balanceOf(address(this));
    |        
    |        uint256 diff = balance - p3dBalance;
  at /home/jiaming/slither_fp_files/out12326.sol(102)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrongHand':
    |        p3dBalance = balance;
    |        
  > |        strongHandManager.mint(owner, diff);
    |    }
    |
  at /home/jiaming/slither_fp_files/out12326.sol(107)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrongHand':
    |        onlyOwner
    |    {
  > |        p3dContract.withdraw();
    |        owner.transfer(address(this).balance);
    |    }
  at /home/jiaming/slither_fp_files/out12326.sol(114)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrongHand':
    |    {
    |        p3dContract.withdraw();
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out12326.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'StrongHand':
    |        
    |        uint256 diff = balance - p3dBalance;
  > |        p3dBalance = balance;
    |        
    |        strongHandManager.mint(owner, diff);
  at /home/jiaming/slither_fp_files/out12326.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'StrongHand':
    |        
    |        uint256 diff = balance - p3dBalance;
  > |        p3dBalance = balance;
    |        
    |        strongHandManager.mint(owner, diff);
  at /home/jiaming/slither_fp_files/out12326.sol(105)

[33mWarning[0m for LockedEther in contract 'StrongHandsManager':
    |}
    |
  > |contract StrongHandsManager {
    |    
    |    event CreateStrongHand(address indexed owner, address indexed strongHand);
  at /home/jiaming/slither_fp_files/out12326.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'StrongHandsManager':
    |    event MintToken(address indexed owner, uint256 indexed amount);
    |    
  > |    mapping (address => address) public strongHands;
    |    mapping (address => uint256) public ownerToBalance;
    |    
  at /home/jiaming/slither_fp_files/out12326.sol(18)

[31mViolation[0m for MissingInputValidation in contract 'StrongHandsManager':
    |    
    |    mapping (address => address) public strongHands;
  > |    mapping (address => uint256) public ownerToBalance;
    |    
    |    //ERC20
  at /home/jiaming/slither_fp_files/out12326.sol(19)

[31mViolation[0m for MissingInputValidation in contract 'StrongHandsManager':
    |    }
    |    
  > |    function mint(address _owner, uint256 _amount)
    |        external
    |    {
  at /home/jiaming/slither_fp_files/out12326.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'StrongHandsManager':
    |    }
    |    
  > |    function balanceOf(address _owner)
    |        public
    |        view
  at /home/jiaming/slither_fp_files/out12326.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'StrongHandsManager':
    |}
    |
  > |contract StrongHandsManager {
    |    
    |    event CreateStrongHand(address indexed owner, address indexed strongHand);
  at /home/jiaming/slither_fp_files/out12326.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'StrongHandsManager':
    |    
    |    //ERC20
  > |    string public constant name = "Stronghands3D";
    |    string public constant symbol = "S3D";
    |    uint8 public constant decimals = 18;
  at /home/jiaming/slither_fp_files/out12326.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'StrongHandsManager':
    |    //ERC20
    |    string public constant name = "Stronghands3D";
  > |    string public constant symbol = "S3D";
    |    uint8 public constant decimals = 18;
    |    
  at /home/jiaming/slither_fp_files/out12326.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'StrongHandsManager':
    |    string public constant name = "Stronghands3D";
    |    string public constant symbol = "S3D";
  > |    uint8 public constant decimals = 18;
    |    
    |    uint256 internal tokenSupply = 0;
  at /home/jiaming/slither_fp_files/out12326.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'StrongHandsManager':
    |    uint256 internal tokenSupply = 0;
    |
  > |    function getStrong()
    |        public
    |    {
  at /home/jiaming/slither_fp_files/out12326.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'StrongHandsManager':
    |    
    |    //ERC20
  > |    function totalSupply()
    |        public
    |        view
  at /home/jiaming/slither_fp_files/out12326.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'StrongHandsManager':
    |        require(strongHands[msg.sender] == address(0), "you already became a Stronghand");
    |        
  > |        strongHands[msg.sender] = new StrongHand(msg.sender);
    |        
    |        emit CreateStrongHand(msg.sender, strongHands[msg.sender]);
  at /home/jiaming/slither_fp_files/out12326.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'StrongHandsManager':
    |        require(strongHands[_owner] == msg.sender);
    |        
  > |        tokenSupply+= _amount;
    |        ownerToBalance[_owner]+= _amount;
    |        
  at /home/jiaming/slither_fp_files/out12326.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'StrongHandsManager':
    |        
    |        tokenSupply+= _amount;
  > |        ownerToBalance[_owner]+= _amount;
    |        
    |        emit MintToken(_owner, _amount);
  at /home/jiaming/slither_fp_files/out12326.sol(44)


