Processing contract: /home/jiaming/slither_fp_files/out8205.sol:BRBasketballControl
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8205.sol:IConfigData
Processing contract: /home/jiaming/slither_fp_files/out8205.sol:MobaBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'BRBasketballControl':
    |          return ;
    |        }
  > |        address inviteAddr = mConfig.GetAddressByName(inviteName);
    |        if(inviteAddr != address(0)) {
    |           uint giveToEth   = msg.value * mConfig.getInviteRate() / 100;
  at /home/jiaming/slither_fp_files/out8205.sol(150)

[33mWarning[0m for DAO in contract 'BRBasketballControl':
    |        address inviteAddr = mConfig.GetAddressByName(inviteName);
    |        if(inviteAddr != address(0)) {
  > |           uint giveToEth   = msg.value * mConfig.getInviteRate() / 100;
    |           inviteAddr.transfer(giveToEth);
    |        }
  at /home/jiaming/slither_fp_files/out8205.sol(152)

[33mWarning[0m for DAO in contract 'BRBasketballControl':
    |     
    |        bytes32 curRandom = keccak256(abi.encodePacked(msg.sender,mRandomValue));
  > |        curRandom = mConfig.getRandom(curRandom);
    |        curRandom = keccak256(abi.encodePacked(msg.sender,mRandomValue));
    |        uint value1 = (uint(curRandom) % maxNum);
  at /home/jiaming/slither_fp_files/out8205.sol(159)

[31mViolation[0m for DAOConstantGas in contract 'BRBasketballControl':
    |          uint giveToOwn   = totalBalace * pumpRate / 100;
    |          uint giveToActor = totalBalace - giveToOwn;
  > |          owner.transfer(giveToOwn);
    |          mWinner.addr.transfer(giveToActor);
    |            
  at /home/jiaming/slither_fp_files/out8205.sol(128)

[31mViolation[0m for DAOConstantGas in contract 'BRBasketballControl':
    |          uint giveToActor = totalBalace - giveToOwn;
    |          owner.transfer(giveToOwn);
  > |          mWinner.addr.transfer(giveToActor);
    |            
    |         emit gameOverEvent(gameIndex, mWinner.addr,mConfig.getPrice(),giveToActor);
  at /home/jiaming/slither_fp_files/out8205.sol(129)

[33mWarning[0m for DAOConstantGas in contract 'BRBasketballControl':
    |    public {
    |        uint256 totalBalace = address(this).balance;
  > |        owner.transfer(totalBalace);
    |        emit transferToOwnerEvent(totalBalace);
    |    }
  at /home/jiaming/slither_fp_files/out8205.sol(41)

[33mWarning[0m for DAOConstantGas in contract 'BRBasketballControl':
    |        if(inviteAddr != address(0)) {
    |           uint giveToEth   = msg.value * mConfig.getInviteRate() / 100;
  > |           inviteAddr.transfer(giveToEth);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out8205.sol(153)

[33mWarning[0m for LockedEther in contract 'BRBasketballControl':
    |}
    |
  > |contract BRBasketballControl is MobaBase {
    |    
    |    Winner public mWinner;
  at /home/jiaming/slither_fp_files/out8205.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'BRBasketballControl':
    |    }
    |    
  > |    function updateConfig(address newAddr)
    |    onlyOwner 
    |    public{
  at /home/jiaming/slither_fp_files/out8205.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'BRBasketballControl':
    |pragma solidity ^0.4.7;
    |contract MobaBase {
  > |    address public owner = 0x0;
    |    bool public isLock = false;
    |    constructor ()  public  {
  at /home/jiaming/slither_fp_files/out8205.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'BRBasketballControl':
    |contract MobaBase {
    |    address public owner = 0x0;
  > |    bool public isLock = false;
    |    constructor ()  public  {
    |        owner = msg.sender;
  at /home/jiaming/slither_fp_files/out8205.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'BRBasketballControl':
    |    }
    |    
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/slither_fp_files/out8205.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'BRBasketballControl':
    |    }
    |    
  > |    function transferToOwner()    
    |    onlyOwner 
    |    msgSendFilter 
  at /home/jiaming/slither_fp_files/out8205.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'BRBasketballControl':
    |    }
    |    
  > |    function updateLock(bool b) onlyOwner public {
    |        
    |        require(isLock != b," updateLock new status == old status");
  at /home/jiaming/slither_fp_files/out8205.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'BRBasketballControl':
    |contract BRBasketballControl is MobaBase {
    |    
  > |    Winner public mWinner;
    |    bytes32 mRandomValue;
    |
  at /home/jiaming/slither_fp_files/out8205.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'BRBasketballControl':
    |
    |    uint gameIndex;
  > |    IConfigData public mConfig;
    |    IConfigData public mNewConfig;
    |   
  at /home/jiaming/slither_fp_files/out8205.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'BRBasketballControl':
    |    uint gameIndex;
    |    IConfigData public mConfig;
  > |    IConfigData public mNewConfig;
    |   
    |    constructor(address config) public {
  at /home/jiaming/slither_fp_files/out8205.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'BRBasketballControl':
    |    }
    |    
  > |    function startNewGame() private {
    |        
    |        gameIndex++;
  at /home/jiaming/slither_fp_files/out8205.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'BRBasketballControl':
    |    }
    |    
  > |    function inviteHandler(bytes32 inviteName) private {
    |        
    |        if(mConfig == address(0)) {
  at /home/jiaming/slither_fp_files/out8205.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'BRBasketballControl':
    |        }
    |    }
  > |    function getRandom(uint maxNum) private returns(uint,uint) {
    |     
    |        bytes32 curRandom = keccak256(abi.encodePacked(msg.sender,mRandomValue));
  at /home/jiaming/slither_fp_files/out8205.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'BRBasketballControl':
    |    }
    |    
  > |    function getGameInfo() public view returns (uint index,uint price,uint256 balace, 
    |                                          uint winNum,uint winCount,address WinAddr,uint winRate,uint winOverRate,
    |                                          uint pkOverRate
  at /home/jiaming/slither_fp_files/out8205.sol(169)

[31mViolation[0m for TODAmount in contract 'BRBasketballControl':
    |    public {
    |        uint256 totalBalace = address(this).balance;
  > |        owner.transfer(totalBalace);
    |        emit transferToOwnerEvent(totalBalace);
    |    }
  at /home/jiaming/slither_fp_files/out8205.sol(41)

[31mViolation[0m for TODAmount in contract 'BRBasketballControl':
    |          uint giveToOwn   = totalBalace * pumpRate / 100;
    |          uint giveToActor = totalBalace - giveToOwn;
  > |          owner.transfer(giveToOwn);
    |          mWinner.addr.transfer(giveToActor);
    |            
  at /home/jiaming/slither_fp_files/out8205.sol(128)

[31mViolation[0m for TODAmount in contract 'BRBasketballControl':
    |          uint giveToActor = totalBalace - giveToOwn;
    |          owner.transfer(giveToOwn);
  > |          mWinner.addr.transfer(giveToActor);
    |            
    |         emit gameOverEvent(gameIndex, mWinner.addr,mConfig.getPrice(),giveToActor);
  at /home/jiaming/slither_fp_files/out8205.sol(129)

[31mViolation[0m for TODReceiver in contract 'BRBasketballControl':
    |    public {
    |        uint256 totalBalace = address(this).balance;
  > |        owner.transfer(totalBalace);
    |        emit transferToOwnerEvent(totalBalace);
    |    }
  at /home/jiaming/slither_fp_files/out8205.sol(41)

[31mViolation[0m for TODReceiver in contract 'BRBasketballControl':
    |          uint giveToOwn   = totalBalace * pumpRate / 100;
    |          uint giveToActor = totalBalace - giveToOwn;
  > |          owner.transfer(giveToOwn);
    |          mWinner.addr.transfer(giveToActor);
    |            
  at /home/jiaming/slither_fp_files/out8205.sol(128)

[31mViolation[0m for TODReceiver in contract 'BRBasketballControl':
    |          uint giveToActor = totalBalace - giveToOwn;
    |          owner.transfer(giveToOwn);
  > |          mWinner.addr.transfer(giveToActor);
    |            
    |         emit gameOverEvent(gameIndex, mWinner.addr,mConfig.getPrice(),giveToActor);
  at /home/jiaming/slither_fp_files/out8205.sol(129)

[33mWarning[0m for TODReceiver in contract 'BRBasketballControl':
    |        if(inviteAddr != address(0)) {
    |           uint giveToEth   = msg.value * mConfig.getInviteRate() / 100;
  > |           inviteAddr.transfer(giveToEth);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out8205.sol(153)

[33mWarning[0m for UnhandledException in contract 'BRBasketballControl':
    |    public {
    |        uint256 totalBalace = address(this).balance;
  > |        owner.transfer(totalBalace);
    |        emit transferToOwnerEvent(totalBalace);
    |    }
  at /home/jiaming/slither_fp_files/out8205.sol(41)

[33mWarning[0m for UnhandledException in contract 'BRBasketballControl':
    |    public payable {
    |        
  > |        require(msg.value == mConfig.getPrice(),"msg.value is error");
    |        require(msg.sender != mWinner.addr,"msg.sender != winner");
    |        uint winRate  = mConfig.getWinRate(mWinner.winCount);
  at /home/jiaming/slither_fp_files/out8205.sol(98)

[33mWarning[0m for UnhandledException in contract 'BRBasketballControl':
    |        require(msg.value == mConfig.getPrice(),"msg.value is error");
    |        require(msg.sender != mWinner.addr,"msg.sender != winner");
  > |        uint winRate  = mConfig.getWinRate(mWinner.winCount);
    |
    |        uint curWinRate ; uint curOverRate;
  at /home/jiaming/slither_fp_files/out8205.sol(100)

[33mWarning[0m for UnhandledException in contract 'BRBasketballControl':
    |            mWinner.winCount = mWinner.winCount + 1;
    |        }
  > |        uint overRate = mConfig.getOverRate(mWinner.winCount);
    |        emit pkEvent(mWinner.addr,msg.sender,name, winRate, overRate, curWinRate, curOverRate,msg.sender == mWinner.addr, mConfig.getPrice());
    |        if(oldWinAddr != address(0) && curOverRate < overRate  ) {
  at /home/jiaming/slither_fp_files/out8205.sol(118)

[33mWarning[0m for UnhandledException in contract 'BRBasketballControl':
    |        }
    |        uint overRate = mConfig.getOverRate(mWinner.winCount);
  > |        emit pkEvent(mWinner.addr,msg.sender,name, winRate, overRate, curWinRate, curOverRate,msg.sender == mWinner.addr, mConfig.getPrice());
    |        if(oldWinAddr != address(0) && curOverRate < overRate  ) {
    |        
  at /home/jiaming/slither_fp_files/out8205.sol(119)

[33mWarning[0m for UnhandledException in contract 'BRBasketballControl':
    |          require(mWinner.addr != address(0),"Winner.addr is null");
    |          
  > |          uint pumpRate = mConfig.getPumpRate();
    |          uint totalBalace = address(this).balance;
    |          uint giveToOwn   = totalBalace * pumpRate / 100;
  at /home/jiaming/slither_fp_files/out8205.sol(124)

[33mWarning[0m for UnhandledException in contract 'BRBasketballControl':
    |          uint giveToOwn   = totalBalace * pumpRate / 100;
    |          uint giveToActor = totalBalace - giveToOwn;
  > |          owner.transfer(giveToOwn);
    |          mWinner.addr.transfer(giveToActor);
    |            
  at /home/jiaming/slither_fp_files/out8205.sol(128)

[33mWarning[0m for UnhandledException in contract 'BRBasketballControl':
    |          uint giveToActor = totalBalace - giveToOwn;
    |          owner.transfer(giveToOwn);
  > |          mWinner.addr.transfer(giveToActor);
    |            
    |         emit gameOverEvent(gameIndex, mWinner.addr,mConfig.getPrice(),giveToActor);
  at /home/jiaming/slither_fp_files/out8205.sol(129)

[33mWarning[0m for UnhandledException in contract 'BRBasketballControl':
    |          mWinner.addr.transfer(giveToActor);
    |            
  > |         emit gameOverEvent(gameIndex, mWinner.addr,mConfig.getPrice(),giveToActor);
    |          startNewGame();
    |        }
  at /home/jiaming/slither_fp_files/out8205.sol(131)

[33mWarning[0m for UnhandledException in contract 'BRBasketballControl':
    |          return ;
    |        }
  > |        address inviteAddr = mConfig.GetAddressByName(inviteName);
    |        if(inviteAddr != address(0)) {
    |           uint giveToEth   = msg.value * mConfig.getInviteRate() / 100;
  at /home/jiaming/slither_fp_files/out8205.sol(150)

[33mWarning[0m for UnhandledException in contract 'BRBasketballControl':
    |        address inviteAddr = mConfig.GetAddressByName(inviteName);
    |        if(inviteAddr != address(0)) {
  > |           uint giveToEth   = msg.value * mConfig.getInviteRate() / 100;
    |           inviteAddr.transfer(giveToEth);
    |        }
  at /home/jiaming/slither_fp_files/out8205.sol(152)

[33mWarning[0m for UnhandledException in contract 'BRBasketballControl':
    |        if(inviteAddr != address(0)) {
    |           uint giveToEth   = msg.value * mConfig.getInviteRate() / 100;
  > |           inviteAddr.transfer(giveToEth);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out8205.sol(153)

[33mWarning[0m for UnhandledException in contract 'BRBasketballControl':
    |     
    |        bytes32 curRandom = keccak256(abi.encodePacked(msg.sender,mRandomValue));
  > |        curRandom = mConfig.getRandom(curRandom);
    |        curRandom = keccak256(abi.encodePacked(msg.sender,mRandomValue));
    |        uint value1 = (uint(curRandom) % maxNum);
  at /home/jiaming/slither_fp_files/out8205.sol(159)

[33mWarning[0m for UnhandledException in contract 'BRBasketballControl':
    |        uint winnercount = mWinner.winCount;
    |        address winneraddr  = mWinner.addr;
  > |        uint curWinRate  = mConfig.getWinRate(mWinner.winCount);
    |        uint curOverRate = mConfig.getOverRate(mWinner.winCount);
    |        uint curPkOverRate= mConfig.getOverRate(1);
  at /home/jiaming/slither_fp_files/out8205.sol(177)

[33mWarning[0m for UnhandledException in contract 'BRBasketballControl':
    |        address winneraddr  = mWinner.addr;
    |        uint curWinRate  = mConfig.getWinRate(mWinner.winCount);
  > |        uint curOverRate = mConfig.getOverRate(mWinner.winCount);
    |        uint curPkOverRate= mConfig.getOverRate(1);
    |        return (gameIndex, mConfig.getPrice(), curbalace,
  at /home/jiaming/slither_fp_files/out8205.sol(178)

[33mWarning[0m for UnhandledException in contract 'BRBasketballControl':
    |        uint curWinRate  = mConfig.getWinRate(mWinner.winCount);
    |        uint curOverRate = mConfig.getOverRate(mWinner.winCount);
  > |        uint curPkOverRate= mConfig.getOverRate(1);
    |        return (gameIndex, mConfig.getPrice(), curbalace,
    |                winnernum,winnercount,winneraddr,curWinRate,curOverRate,
  at /home/jiaming/slither_fp_files/out8205.sol(179)

[33mWarning[0m for UnhandledException in contract 'BRBasketballControl':
    |        uint curOverRate = mConfig.getOverRate(mWinner.winCount);
    |        uint curPkOverRate= mConfig.getOverRate(1);
  > |        return (gameIndex, mConfig.getPrice(), curbalace,
    |                winnernum,winnercount,winneraddr,curWinRate,curOverRate,
    |                curPkOverRate);
  at /home/jiaming/slither_fp_files/out8205.sol(180)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BRBasketballControl':
    |    public {
    |        uint256 totalBalace = address(this).balance;
  > |        owner.transfer(totalBalace);
    |        emit transferToOwnerEvent(totalBalace);
    |    }
  at /home/jiaming/slither_fp_files/out8205.sol(41)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BRBasketballControl':
    |    public payable {
    |        
  > |        require(msg.value == mConfig.getPrice(),"msg.value is error");
    |        require(msg.sender != mWinner.addr,"msg.sender != winner");
    |        uint winRate  = mConfig.getWinRate(mWinner.winCount);
  at /home/jiaming/slither_fp_files/out8205.sol(98)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BRBasketballControl':
    |        require(msg.value == mConfig.getPrice(),"msg.value is error");
    |        require(msg.sender != mWinner.addr,"msg.sender != winner");
  > |        uint winRate  = mConfig.getWinRate(mWinner.winCount);
    |
    |        uint curWinRate ; uint curOverRate;
  at /home/jiaming/slither_fp_files/out8205.sol(100)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BRBasketballControl':
    |            mWinner.winCount = mWinner.winCount + 1;
    |        }
  > |        uint overRate = mConfig.getOverRate(mWinner.winCount);
    |        emit pkEvent(mWinner.addr,msg.sender,name, winRate, overRate, curWinRate, curOverRate,msg.sender == mWinner.addr, mConfig.getPrice());
    |        if(oldWinAddr != address(0) && curOverRate < overRate  ) {
  at /home/jiaming/slither_fp_files/out8205.sol(118)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BRBasketballControl':
    |        }
    |        uint overRate = mConfig.getOverRate(mWinner.winCount);
  > |        emit pkEvent(mWinner.addr,msg.sender,name, winRate, overRate, curWinRate, curOverRate,msg.sender == mWinner.addr, mConfig.getPrice());
    |        if(oldWinAddr != address(0) && curOverRate < overRate  ) {
    |        
  at /home/jiaming/slither_fp_files/out8205.sol(119)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BRBasketballControl':
    |          require(mWinner.addr != address(0),"Winner.addr is null");
    |          
  > |          uint pumpRate = mConfig.getPumpRate();
    |          uint totalBalace = address(this).balance;
    |          uint giveToOwn   = totalBalace * pumpRate / 100;
  at /home/jiaming/slither_fp_files/out8205.sol(124)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BRBasketballControl':
    |          mWinner.addr.transfer(giveToActor);
    |            
  > |         emit gameOverEvent(gameIndex, mWinner.addr,mConfig.getPrice(),giveToActor);
    |          startNewGame();
    |        }
  at /home/jiaming/slither_fp_files/out8205.sol(131)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BRBasketballControl':
    |          return ;
    |        }
  > |        address inviteAddr = mConfig.GetAddressByName(inviteName);
    |        if(inviteAddr != address(0)) {
    |           uint giveToEth   = msg.value * mConfig.getInviteRate() / 100;
  at /home/jiaming/slither_fp_files/out8205.sol(150)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BRBasketballControl':
    |        address inviteAddr = mConfig.GetAddressByName(inviteName);
    |        if(inviteAddr != address(0)) {
  > |           uint giveToEth   = msg.value * mConfig.getInviteRate() / 100;
    |           inviteAddr.transfer(giveToEth);
    |        }
  at /home/jiaming/slither_fp_files/out8205.sol(152)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BRBasketballControl':
    |     
    |        bytes32 curRandom = keccak256(abi.encodePacked(msg.sender,mRandomValue));
  > |        curRandom = mConfig.getRandom(curRandom);
    |        curRandom = keccak256(abi.encodePacked(msg.sender,mRandomValue));
    |        uint value1 = (uint(curRandom) % maxNum);
  at /home/jiaming/slither_fp_files/out8205.sol(159)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BRBasketballControl':
    |        uint winnercount = mWinner.winCount;
    |        address winneraddr  = mWinner.addr;
  > |        uint curWinRate  = mConfig.getWinRate(mWinner.winCount);
    |        uint curOverRate = mConfig.getOverRate(mWinner.winCount);
    |        uint curPkOverRate= mConfig.getOverRate(1);
  at /home/jiaming/slither_fp_files/out8205.sol(177)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BRBasketballControl':
    |        address winneraddr  = mWinner.addr;
    |        uint curWinRate  = mConfig.getWinRate(mWinner.winCount);
  > |        uint curOverRate = mConfig.getOverRate(mWinner.winCount);
    |        uint curPkOverRate= mConfig.getOverRate(1);
    |        return (gameIndex, mConfig.getPrice(), curbalace,
  at /home/jiaming/slither_fp_files/out8205.sol(178)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BRBasketballControl':
    |        uint curWinRate  = mConfig.getWinRate(mWinner.winCount);
    |        uint curOverRate = mConfig.getOverRate(mWinner.winCount);
  > |        uint curPkOverRate= mConfig.getOverRate(1);
    |        return (gameIndex, mConfig.getPrice(), curbalace,
    |                winnernum,winnercount,winneraddr,curWinRate,curOverRate,
  at /home/jiaming/slither_fp_files/out8205.sol(179)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BRBasketballControl':
    |        uint curOverRate = mConfig.getOverRate(mWinner.winCount);
    |        uint curPkOverRate= mConfig.getOverRate(1);
  > |        return (gameIndex, mConfig.getPrice(), curbalace,
    |                winnernum,winnercount,winneraddr,curWinRate,curOverRate,
    |                curPkOverRate);
  at /home/jiaming/slither_fp_files/out8205.sol(180)

[31mViolation[0m for UnrestrictedWrite in contract 'BRBasketballControl':
    |        address oldWinAddr = mWinner.addr;
    |        if(mWinner.addr == address(0) ) {
  > |            mWinner = Winner(num,0,msg.sender);
    |        }
    |        else if( winRate < curWinRate ) {
  at /home/jiaming/slither_fp_files/out8205.sol(110)

[31mViolation[0m for UnrestrictedWrite in contract 'BRBasketballControl':
    |    function startNewGame() private {
    |        
  > |        gameIndex++;
    |        mWinner = Winner(0,1,address(0));
    |        if(mNewConfig != address(0) && mNewConfig != mConfig){
  at /home/jiaming/slither_fp_files/out8205.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'BRBasketballControl':
    |        
    |        gameIndex++;
  > |        mWinner = Winner(0,1,address(0));
    |        if(mNewConfig != address(0) && mNewConfig != mConfig){
    |            mConfig = mNewConfig;
  at /home/jiaming/slither_fp_files/out8205.sol(139)

[31mViolation[0m for UnrestrictedWrite in contract 'BRBasketballControl':
    |        mWinner = Winner(0,1,address(0));
    |        if(mNewConfig != address(0) && mNewConfig != mConfig){
  > |            mConfig = mNewConfig;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out8205.sol(141)

[31mViolation[0m for UnrestrictedWrite in contract 'BRBasketballControl':
    |        curRandom  = keccak256(abi.encodePacked(msg.sender,curRandom,value1));
    |        uint value2 = (uint(curRandom) % maxNum);
  > |        mRandomValue = curRandom;
    |        return (value1,value2);
    |    }
  at /home/jiaming/slither_fp_files/out8205.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'BRBasketballControl':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out8205.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'BRBasketballControl':
    |        
    |        require(isLock != b," updateLock new status == old status");
  > |        isLock = b;
    |    }
    |    
  at /home/jiaming/slither_fp_files/out8205.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'BRBasketballControl':
    |    onlyOwner 
    |    public{
  > |        mNewConfig = IConfigData(newAddr);
    |  
    |    }
  at /home/jiaming/slither_fp_files/out8205.sol(89)

[33mWarning[0m for DAOConstantGas in contract 'MobaBase':
    |    public {
    |        uint256 totalBalace = address(this).balance;
  > |        owner.transfer(totalBalace);
    |        emit transferToOwnerEvent(totalBalace);
    |    }
  at /home/jiaming/slither_fp_files/out8205.sol(41)

[33mWarning[0m for LockedEther in contract 'MobaBase':
    |pragma solidity ^0.4.7;
  > |contract MobaBase {
    |    address public owner = 0x0;
    |    bool public isLock = false;
  at /home/jiaming/slither_fp_files/out8205.sol(2)

[33mWarning[0m for MissingInputValidation in contract 'MobaBase':
    |pragma solidity ^0.4.7;
    |contract MobaBase {
  > |    address public owner = 0x0;
    |    bool public isLock = false;
    |    constructor ()  public  {
  at /home/jiaming/slither_fp_files/out8205.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'MobaBase':
    |contract MobaBase {
    |    address public owner = 0x0;
  > |    bool public isLock = false;
    |    constructor ()  public  {
    |        owner = msg.sender;
  at /home/jiaming/slither_fp_files/out8205.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'MobaBase':
    |    }
    |    
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/slither_fp_files/out8205.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'MobaBase':
    |    }
    |    
  > |    function transferToOwner()    
    |    onlyOwner 
    |    msgSendFilter 
  at /home/jiaming/slither_fp_files/out8205.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'MobaBase':
    |    }
    |    
  > |    function updateLock(bool b) onlyOwner public {
    |        
    |        require(isLock != b," updateLock new status == old status");
  at /home/jiaming/slither_fp_files/out8205.sol(45)

[31mViolation[0m for TODAmount in contract 'MobaBase':
    |    public {
    |        uint256 totalBalace = address(this).balance;
  > |        owner.transfer(totalBalace);
    |        emit transferToOwnerEvent(totalBalace);
    |    }
  at /home/jiaming/slither_fp_files/out8205.sol(41)

[31mViolation[0m for TODReceiver in contract 'MobaBase':
    |    public {
    |        uint256 totalBalace = address(this).balance;
  > |        owner.transfer(totalBalace);
    |        emit transferToOwnerEvent(totalBalace);
    |    }
  at /home/jiaming/slither_fp_files/out8205.sol(41)

[33mWarning[0m for UnhandledException in contract 'MobaBase':
    |    public {
    |        uint256 totalBalace = address(this).balance;
  > |        owner.transfer(totalBalace);
    |        emit transferToOwnerEvent(totalBalace);
    |    }
  at /home/jiaming/slither_fp_files/out8205.sol(41)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MobaBase':
    |    public {
    |        uint256 totalBalace = address(this).balance;
  > |        owner.transfer(totalBalace);
    |        emit transferToOwnerEvent(totalBalace);
    |    }
  at /home/jiaming/slither_fp_files/out8205.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'MobaBase':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out8205.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'MobaBase':
    |        
    |        require(isLock != b," updateLock new status == old status");
  > |        isLock = b;
    |    }
    |    
  at /home/jiaming/slither_fp_files/out8205.sol(48)


