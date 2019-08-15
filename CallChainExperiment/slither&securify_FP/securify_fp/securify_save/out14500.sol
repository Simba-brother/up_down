Processing contract: /home/jiaming/slither_fp_files/out14500.sol:F3DKeysCalcLong
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14500.sol:F3Ddatasets
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14500.sol:F3Devents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14500.sol:F3DexternalSettingsInterface
Processing contract: /home/jiaming/slither_fp_files/out14500.sol:FoMo3DlongUnlimited
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14500.sol:FundForwarder
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14500.sol:FundForwarderInterface
Processing contract: /home/jiaming/slither_fp_files/out14500.sol:FundInterfaceForForwarder
Processing contract: /home/jiaming/slither_fp_files/out14500.sol:HourglassInterface
Processing contract: /home/jiaming/slither_fp_files/out14500.sol:MSFun
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14500.sol:ModularLong
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14500.sol:NameFilter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14500.sol:PlayerBook
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14500.sol:PlayerBookInterface
Processing contract: /home/jiaming/slither_fp_files/out14500.sol:PlayerBookReceiverInterface
Processing contract: /home/jiaming/slither_fp_files/out14500.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14500.sol:Team
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14500.sol:TeamInterface
Processing contract: /home/jiaming/slither_fp_files/out14500.sol:UintCompressor
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14500.sol:otherFoMo3D
[33mWarning[0m for LockedEther in contract 'F3DKeysCalcLong':
    |//  |<(/_\/  (_(_||(_  .
    |//=======/======================================================================
  > |library F3DKeysCalcLong {
    |    using SafeMath for *;
    |    /**
  at /home/jiaming/slither_fp_files/out14500.sol(594)

[33mWarning[0m for LockedEther in contract 'F3Ddatasets':
    |//  _\ | | |_|(_ | _\  .
    |//==============================================================================
  > |library F3Ddatasets {
    |    //compressedData key
    |    // [76-33][32][31][30][29][28-18][17][16-6][5-3][2][1][0]
  at /home/jiaming/slither_fp_files/out14500.sol(72)

[33mWarning[0m for LockedEther in contract 'F3Devents':
    |}
    |
  > |contract F3Devents {
    |    // fired whenever a player registers a name
    |    event onNewName
  at /home/jiaming/slither_fp_files/out14500.sol(703)

[33mWarning[0m for DAO in contract 'FundForwarder':
    |        require(needsBank_ == false, "Forwarder Deposit failed - no registered bank");
    |        //wallet.transfer(toFund);
  > |        if (currentCorpBank_.deposit.value(msg.value)(msg.sender) == true)
    |            return(true);
    |        else
  at /home/jiaming/slither_fp_files/out14500.sol(846)

[33mWarning[0m for LockedEther in contract 'FundForwarder':
    |
    |
  > |contract FundForwarder {
    |    string public name = "FundForwarder";
    |    FundInterfaceForForwarder private currentCorpBank_;
  at /home/jiaming/slither_fp_files/out14500.sol(817)

[31mViolation[0m for MissingInputValidation in contract 'FundForwarder':
    |//    || || | |(_||  _\(/_ | |_||_)  .  (this only runs once ever)
    |//==============================|===============================================
  > |    function setup(address _firstCorpBank)
    |        external
    |    {
  at /home/jiaming/slither_fp_files/out14500.sol(914)

[33mWarning[0m for MissingInputValidation in contract 'FundForwarder':
    |
    |contract FundForwarder {
  > |    string public name = "FundForwarder";
    |    FundInterfaceForForwarder private currentCorpBank_;
    |    address private newCorpBank_;
  at /home/jiaming/slither_fp_files/out14500.sol(818)

[33mWarning[0m for MissingInputValidation in contract 'FundForwarder':
    |    }
    |    
  > |    function deposit()
    |        public 
    |        payable
  at /home/jiaming/slither_fp_files/out14500.sol(838)

[33mWarning[0m for MissingInputValidation in contract 'FundForwarder':
    |//    | | ||(_|| (_| | |(_)| |  .
    |//===========_|=================================================================    
  > |    function status()
    |        public
    |        view
  at /home/jiaming/slither_fp_files/out14500.sol(855)

[33mWarning[0m for MissingInputValidation in contract 'FundForwarder':
    |    }
    |
  > |    function startMigration(address _newCorpBank)
    |        external
    |        returns(bool)
  at /home/jiaming/slither_fp_files/out14500.sol(863)

[33mWarning[0m for MissingInputValidation in contract 'FundForwarder':
    |    }
    |    
  > |    function cancelMigration()
    |        external
    |        returns(bool)
  at /home/jiaming/slither_fp_files/out14500.sol(881)

[33mWarning[0m for MissingInputValidation in contract 'FundForwarder':
    |    }
    |    
  > |    function finishMigration()
    |        external
    |        returns(bool)
  at /home/jiaming/slither_fp_files/out14500.sol(895)

[31mViolation[0m for TODReceiver in contract 'FundForwarder':
    |        require(needsBank_ == false, "Forwarder Deposit failed - no registered bank");
    |        //wallet.transfer(toFund);
  > |        if (currentCorpBank_.deposit.value(msg.value)(msg.sender) == true)
    |            return(true);
    |        else
  at /home/jiaming/slither_fp_files/out14500.sol(846)

[33mWarning[0m for UnhandledException in contract 'FundForwarder':
    |        require(needsBank_ == false, "Forwarder Deposit failed - no registered bank");
    |        //wallet.transfer(toFund);
  > |        if (currentCorpBank_.deposit.value(msg.value)(msg.sender) == true)
    |            return(true);
    |        else
  at /home/jiaming/slither_fp_files/out14500.sol(846)

[33mWarning[0m for UnhandledException in contract 'FundForwarder':
    |        // communicate with the new corp bank and make sure it has the forwarder 
    |        // registered 
  > |        if(FundInterfaceForForwarder(_newCorpBank).migrationReceiver_setup() == true)
    |        {
    |            // save our new corp bank address
  at /home/jiaming/slither_fp_files/out14500.sol(872)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FundForwarder':
    |        // communicate with the new corp bank and make sure it has the forwarder 
    |        // registered 
  > |        if(FundInterfaceForForwarder(_newCorpBank).migrationReceiver_setup() == true)
    |        {
    |            // save our new corp bank address
  at /home/jiaming/slither_fp_files/out14500.sol(872)

[31mViolation[0m for UnrestrictedWrite in contract 'FundForwarder':
    |    {
    |        require(needsBank_ == true, "Forwarder setup failed - corp bank already registered");
  > |        currentCorpBank_ = FundInterfaceForForwarder(_firstCorpBank);
    |        needsBank_ = false;
    |    }
  at /home/jiaming/slither_fp_files/out14500.sol(918)

[31mViolation[0m for UnrestrictedWrite in contract 'FundForwarder':
    |        require(needsBank_ == true, "Forwarder setup failed - corp bank already registered");
    |        currentCorpBank_ = FundInterfaceForForwarder(_firstCorpBank);
  > |        needsBank_ = false;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out14500.sol(919)

[33mWarning[0m for UnrestrictedWrite in contract 'FundForwarder':
    |        {
    |            // save our new corp bank address
  > |            newCorpBank_ = _newCorpBank;
    |            return (true);
    |        } else 
  at /home/jiaming/slither_fp_files/out14500.sol(875)

[33mWarning[0m for UnrestrictedWrite in contract 'FundForwarder':
    |        
    |        // erase stored new corp bank address;
  > |        newCorpBank_ = address(0x0);
    |        
    |        return (true);
  at /home/jiaming/slither_fp_files/out14500.sol(890)

[33mWarning[0m for UnrestrictedWrite in contract 'FundForwarder':
    |
    |        // update corp bank address        
  > |        currentCorpBank_ = (FundInterfaceForForwarder(newCorpBank_));
    |        
    |        // erase new corp bank address
  at /home/jiaming/slither_fp_files/out14500.sol(903)

[33mWarning[0m for UnrestrictedWrite in contract 'FundForwarder':
    |        
    |        // erase new corp bank address
  > |        newCorpBank_ = address(0x0);
    |        
    |        return (true);
  at /home/jiaming/slither_fp_files/out14500.sol(906)

[33mWarning[0m for LockedEther in contract 'MSFun':
    | */
    |
  > |library MSFun {
    |    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    |    // DATA SETS
  at /home/jiaming/slither_fp_files/out14500.sol(420)

[33mWarning[0m for LockedEther in contract 'ModularLong':
    |}
    |
  > |contract ModularLong is F3Devents {}
    |
    |
  at /home/jiaming/slither_fp_files/out14500.sol(923)

[33mWarning[0m for LockedEther in contract 'NameFilter':
    |}
    |
  > |library NameFilter {
    |    /**
    |     * @dev filters name strings
  at /home/jiaming/slither_fp_files/out14500.sol(256)

[33mWarning[0m for DAO in contract 'PlayerBook':
    |    MSFun.Data private msData;
    |
  > |    function multiSigDev(bytes32 _whatFunction) private returns (bool) {return(MSFun.multiSig(msData, TeamJust.requiredDevSignatures(), _whatFunction));}
    |    function deleteProposal(bytes32 _whatFunction) private {MSFun.deleteProposal(msData, _whatFunction);}
    |    function deleteAnyProposal(bytes32 _whatFunction) onlyDevs() public {MSFun.deleteProposal(msData, _whatFunction);}
  at /home/jiaming/slither_fp_files/out14500.sol(939)

[33mWarning[0m for DAO in contract 'PlayerBook':
    |    function checkData(bytes32 _whatFunction) onlyDevs() public view returns(bytes32, uint256) {return(MSFun.checkMsgData(msData, _whatFunction), MSFun.checkCount(msData, _whatFunction));}
    |    function checkSignersByAddress(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyDevs() public view returns(address, address, address) {return(MSFun.checkSigner(msData, _whatFunction, _signerA), MSFun.checkSigner(msData, _whatFunction, _signerB), MSFun.checkSigner(msData, _whatFunction, _signerC));}
  > |    function checkSignersByName(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyDevs() public view returns(bytes32, bytes32, bytes32) {return(TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerA)), TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerB)), TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerC)));}
    |//==============================================================================
    |//     _| _ _|_ _    _ _ _|_    _   .
  at /home/jiaming/slither_fp_files/out14500.sol(944)

[33mWarning[0m for DAO in contract 'PlayerBook':
    |        
    |        // registration fee goes directly to community rewards
  > |        FundForwarderConst.deposit.value(address(this).balance)();
    |        
    |        // push player info to games
  at /home/jiaming/slither_fp_files/out14500.sol(1283)

[33mWarning[0m for DAO in contract 'PlayerBook':
    |        if (_all == true)
    |            for (uint256 i = 1; i <= gID_; i++)
  > |                games_[i].receivePlayerInfo(_pID, _addr, _name, _affID);
    |        
    |        // fire event
  at /home/jiaming/slither_fp_files/out14500.sol(1288)

[33mWarning[0m for DAO in contract 'PlayerBook':
    |            games_[gID_] = PlayerBookReceiverInterface(_gameAddress);
    |        
  > |            games_[gID_].receivePlayerInfo(1, plyr_[1].addr, plyr_[1].name, 0);
    |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
    |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
  at /home/jiaming/slither_fp_files/out14500.sol(1477)

[33mWarning[0m for DAO in contract 'PlayerBook':
    |        
    |            games_[gID_].receivePlayerInfo(1, plyr_[1].addr, plyr_[1].name, 0);
  > |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
    |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
    |            games_[gID_].receivePlayerInfo(4, plyr_[4].addr, plyr_[4].name, 0);
  at /home/jiaming/slither_fp_files/out14500.sol(1478)

[33mWarning[0m for DAO in contract 'PlayerBook':
    |            games_[gID_].receivePlayerInfo(1, plyr_[1].addr, plyr_[1].name, 0);
    |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
  > |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
    |            games_[gID_].receivePlayerInfo(4, plyr_[4].addr, plyr_[4].name, 0);
    |        }
  at /home/jiaming/slither_fp_files/out14500.sol(1479)

[33mWarning[0m for DAO in contract 'PlayerBook':
    |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
    |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
  > |            games_[gID_].receivePlayerInfo(4, plyr_[4].addr, plyr_[4].name, 0);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out14500.sol(1480)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    function multiSigDev(bytes32 _whatFunction) private returns (bool) {return(MSFun.multiSig(msData, TeamJust.requiredDevSignatures(), _whatFunction));}
    |    function deleteProposal(bytes32 _whatFunction) private {MSFun.deleteProposal(msData, _whatFunction);}
  > |    function deleteAnyProposal(bytes32 _whatFunction) onlyDevs() public {MSFun.deleteProposal(msData, _whatFunction);}
    |    function checkData(bytes32 _whatFunction) onlyDevs() public view returns(bytes32, uint256) {return(MSFun.checkMsgData(msData, _whatFunction), MSFun.checkCount(msData, _whatFunction));}
    |    function checkSignersByAddress(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyDevs() public view returns(address, address, address) {return(MSFun.checkSigner(msData, _whatFunction, _signerA), MSFun.checkSigner(msData, _whatFunction, _signerB), MSFun.checkSigner(msData, _whatFunction, _signerC));}
  at /home/jiaming/slither_fp_files/out14500.sol(941)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    function deleteProposal(bytes32 _whatFunction) private {MSFun.deleteProposal(msData, _whatFunction);}
    |    function deleteAnyProposal(bytes32 _whatFunction) onlyDevs() public {MSFun.deleteProposal(msData, _whatFunction);}
  > |    function checkData(bytes32 _whatFunction) onlyDevs() public view returns(bytes32, uint256) {return(MSFun.checkMsgData(msData, _whatFunction), MSFun.checkCount(msData, _whatFunction));}
    |    function checkSignersByAddress(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyDevs() public view returns(address, address, address) {return(MSFun.checkSigner(msData, _whatFunction, _signerA), MSFun.checkSigner(msData, _whatFunction, _signerB), MSFun.checkSigner(msData, _whatFunction, _signerC));}
    |    function checkSignersByName(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyDevs() public view returns(bytes32, bytes32, bytes32) {return(TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerA)), TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerB)), TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerC)));}
  at /home/jiaming/slither_fp_files/out14500.sol(942)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    function deleteAnyProposal(bytes32 _whatFunction) onlyDevs() public {MSFun.deleteProposal(msData, _whatFunction);}
    |    function checkData(bytes32 _whatFunction) onlyDevs() public view returns(bytes32, uint256) {return(MSFun.checkMsgData(msData, _whatFunction), MSFun.checkCount(msData, _whatFunction));}
  > |    function checkSignersByAddress(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyDevs() public view returns(address, address, address) {return(MSFun.checkSigner(msData, _whatFunction, _signerA), MSFun.checkSigner(msData, _whatFunction, _signerB), MSFun.checkSigner(msData, _whatFunction, _signerC));}
    |    function checkSignersByName(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyDevs() public view returns(bytes32, bytes32, bytes32) {return(TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerA)), TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerB)), TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerC)));}
    |//==============================================================================
  at /home/jiaming/slither_fp_files/out14500.sol(943)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    function checkData(bytes32 _whatFunction) onlyDevs() public view returns(bytes32, uint256) {return(MSFun.checkMsgData(msData, _whatFunction), MSFun.checkCount(msData, _whatFunction));}
    |    function checkSignersByAddress(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyDevs() public view returns(address, address, address) {return(MSFun.checkSigner(msData, _whatFunction, _signerA), MSFun.checkSigner(msData, _whatFunction, _signerB), MSFun.checkSigner(msData, _whatFunction, _signerC));}
  > |    function checkSignersByName(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyDevs() public view returns(bytes32, bytes32, bytes32) {return(TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerA)), TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerB)), TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerC)));}
    |//==============================================================================
    |//     _| _ _|_ _    _ _ _|_    _   .
  at /home/jiaming/slither_fp_files/out14500.sol(944)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |
    |    // game 需要实现PlayerBookReceiverInterface的接口
  > |    mapping(uint256 => PlayerBookReceiverInterface) public games_;  // mapping of our game interfaces for sending your account info to games
    |    mapping(address => bytes32) public gameNames_;          // lookup a games name
    |    mapping(address => uint256) public gameIDs_;            // lokup a games ID
  at /home/jiaming/slither_fp_files/out14500.sol(952)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    // game 需要实现PlayerBookReceiverInterface的接口
    |    mapping(uint256 => PlayerBookReceiverInterface) public games_;  // mapping of our game interfaces for sending your account info to games
  > |    mapping(address => bytes32) public gameNames_;          // lookup a games name
    |    mapping(address => uint256) public gameIDs_;            // lokup a games ID
    |    uint256 public gID_;        // total number of games
  at /home/jiaming/slither_fp_files/out14500.sol(953)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    mapping(uint256 => PlayerBookReceiverInterface) public games_;  // mapping of our game interfaces for sending your account info to games
    |    mapping(address => bytes32) public gameNames_;          // lookup a games name
  > |    mapping(address => uint256) public gameIDs_;            // lokup a games ID
    |    uint256 public gID_;        // total number of games
    |    uint256 public pID_;        // total number of players
  at /home/jiaming/slither_fp_files/out14500.sol(954)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    uint256 public gID_;        // total number of games
    |    uint256 public pID_;        // total number of players
  > |    mapping (address => uint256) public pIDxAddr_;          // (addr => pID) returns player id by address
    |    mapping (bytes32 => uint256) public pIDxName_;          // (name => pID) returns player id by name
    |    mapping (uint256 => Player) public plyr_;               // (pID => data) player data
  at /home/jiaming/slither_fp_files/out14500.sol(957)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    uint256 public pID_;        // total number of players
    |    mapping (address => uint256) public pIDxAddr_;          // (addr => pID) returns player id by address
  > |    mapping (bytes32 => uint256) public pIDxName_;          // (name => pID) returns player id by name
    |    mapping (uint256 => Player) public plyr_;               // (pID => data) player data
    |    mapping (uint256 => mapping (bytes32 => bool)) public plyrNames_; // (pID => name => bool) list of names a player owns.  (used so you can change your display name amoungst any name you own)
  at /home/jiaming/slither_fp_files/out14500.sol(958)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    mapping (address => uint256) public pIDxAddr_;          // (addr => pID) returns player id by address
    |    mapping (bytes32 => uint256) public pIDxName_;          // (name => pID) returns player id by name
  > |    mapping (uint256 => Player) public plyr_;               // (pID => data) player data
    |    mapping (uint256 => mapping (bytes32 => bool)) public plyrNames_; // (pID => name => bool) list of names a player owns.  (used so you can change your display name amoungst any name you own)
    |    mapping (uint256 => mapping (uint256 => bytes32)) public plyrNameList_; // (pID => nameNum => name) list of names a player owns
  at /home/jiaming/slither_fp_files/out14500.sol(959)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    mapping (bytes32 => uint256) public pIDxName_;          // (name => pID) returns player id by name
    |    mapping (uint256 => Player) public plyr_;               // (pID => data) player data
  > |    mapping (uint256 => mapping (bytes32 => bool)) public plyrNames_; // (pID => name => bool) list of names a player owns.  (used so you can change your display name amoungst any name you own)
    |    mapping (uint256 => mapping (uint256 => bytes32)) public plyrNameList_; // (pID => nameNum => name) list of names a player owns
    |    struct Player {
  at /home/jiaming/slither_fp_files/out14500.sol(960)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    mapping (uint256 => Player) public plyr_;               // (pID => data) player data
    |    mapping (uint256 => mapping (bytes32 => bool)) public plyrNames_; // (pID => name => bool) list of names a player owns.  (used so you can change your display name amoungst any name you own)
  > |    mapping (uint256 => mapping (uint256 => bytes32)) public plyrNameList_; // (pID => nameNum => name) list of names a player owns
    |    struct Player {
    |        address addr;
  at /home/jiaming/slither_fp_files/out14500.sol(961)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |//  (/_>< | (/_| | |(_||  (_(_|||_\  .
    |//==============================================================================
  > |    function getPlayerID(address _addr)
    |        isRegisteredGame()
    |        external
  at /home/jiaming/slither_fp_files/out14500.sol(1317)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |        return (pIDxAddr_[_addr]);
    |    }
  > |    function getPlayerName(uint256 _pID)
    |        external
    |        view
  at /home/jiaming/slither_fp_files/out14500.sol(1325)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |        return (plyr_[_pID].name);
    |    }
  > |    function getPlayerLAff(uint256 _pID)
    |        external
    |        view
  at /home/jiaming/slither_fp_files/out14500.sol(1332)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |        return (plyr_[_pID].laff);
    |    }
  > |    function getPlayerAddr(uint256 _pID)
    |        external
    |        view
  at /home/jiaming/slither_fp_files/out14500.sol(1339)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |        return(registrationFee_);
    |    }
  > |    function registerNameXIDFromDapp(address _addr, bytes32 _name, uint256 _affCode, bool _all)
    |        isRegisteredGame()
    |        external
  at /home/jiaming/slither_fp_files/out14500.sol(1353)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |        return(_isNewPlayer, _affID);
    |    }
  > |    function registerNameXnameFromDapp(address _addr, bytes32 _name, bytes32 _affCode, bool _all)
    |        isRegisteredGame()
    |        external
  at /home/jiaming/slither_fp_files/out14500.sol(1421)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |//  _\(/_ | |_||_)  .
    |//=============|================================================================
  > |    function addGame(address _gameAddress, string _gameNameStr)
    |        onlyDevs()
    |        public
  at /home/jiaming/slither_fp_files/out14500.sol(1462)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |     * @return reprocessed string in bytes32 format
    |     */
  > |    function nameFilter(string _input)
    |        internal
    |        pure
  at /home/jiaming/slither_fp_files/out14500.sol(267)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |    // MULTI SIG FUNCTIONS
    |    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  > |    function multiSig(Data storage self, uint256 _requiredSignatures, bytes32 _whatFunction)
    |        internal
    |        returns(bool) 
  at /home/jiaming/slither_fp_files/out14500.sol(444)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |    
    |    // deletes proposal signature data after successfully executing a multiSig function
  > |    function deleteProposal(Data storage self, bytes32 _whatFunction)
    |        internal
    |    {
  at /home/jiaming/slither_fp_files/out14500.sol(524)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    |
  > |    function whatProposal(bytes32 _whatFunction)
    |        private
    |        view
  at /home/jiaming/slither_fp_files/out14500.sol(546)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    |    // returns a hashed version of msg.data sent by original signer for any given function
  > |    function checkMsgData (Data storage self, bytes32 _whatFunction)
    |        internal
    |        view
  at /home/jiaming/slither_fp_files/out14500.sol(558)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |    
    |    // returns number of signers for any given function
  > |    function checkCount (Data storage self, bytes32 _whatFunction)
    |        internal
    |        view
  at /home/jiaming/slither_fp_files/out14500.sol(568)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |    
    |    // returns address of an admin who signed for any given function
  > |    function checkSigner (Data storage self, bytes32 _whatFunction, uint256 _signer)
    |        internal
    |        view
  at /home/jiaming/slither_fp_files/out14500.sol(578)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |    MSFun.Data private msData;
    |
  > |    function multiSigDev(bytes32 _whatFunction) private returns (bool) {return(MSFun.multiSig(msData, TeamJust.requiredDevSignatures(), _whatFunction));}
    |    function deleteProposal(bytes32 _whatFunction) private {MSFun.deleteProposal(msData, _whatFunction);}
    |    function deleteAnyProposal(bytes32 _whatFunction) onlyDevs() public {MSFun.deleteProposal(msData, _whatFunction);}
  at /home/jiaming/slither_fp_files/out14500.sol(939)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |
    |    function multiSigDev(bytes32 _whatFunction) private returns (bool) {return(MSFun.multiSig(msData, TeamJust.requiredDevSignatures(), _whatFunction));}
  > |    function deleteProposal(bytes32 _whatFunction) private {MSFun.deleteProposal(msData, _whatFunction);}
    |    function deleteAnyProposal(bytes32 _whatFunction) onlyDevs() public {MSFun.deleteProposal(msData, _whatFunction);}
    |    function checkData(bytes32 _whatFunction) onlyDevs() public view returns(bytes32, uint256) {return(MSFun.checkMsgData(msData, _whatFunction), MSFun.checkCount(msData, _whatFunction));}
  at /home/jiaming/slither_fp_files/out14500.sol(940)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |//    (_|(_| | (_|  _\(/_ | |_||_)  .
    |//=============================|================================================    
  > |    uint256 public registrationFee_ = 10 finney;            // price to register a name
    |
    |    // game 需要实现PlayerBookReceiverInterface的接口
  at /home/jiaming/slither_fp_files/out14500.sol(949)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |    mapping(address => bytes32) public gameNames_;          // lookup a games name
    |    mapping(address => uint256) public gameIDs_;            // lokup a games ID
  > |    uint256 public gID_;        // total number of games
    |    uint256 public pID_;        // total number of players
    |    mapping (address => uint256) public pIDxAddr_;          // (addr => pID) returns player id by address
  at /home/jiaming/slither_fp_files/out14500.sol(955)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |    mapping(address => uint256) public gameIDs_;            // lokup a games ID
    |    uint256 public gID_;        // total number of games
  > |    uint256 public pID_;        // total number of players
    |    mapping (address => uint256) public pIDxAddr_;          // (addr => pID) returns player id by address
    |    mapping (bytes32 => uint256) public pIDxName_;          // (name => pID) returns player id by name
  at /home/jiaming/slither_fp_files/out14500.sol(956)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |//    (_|(/_ |  | (/_| _\  . (for UI & viewing things on etherscan)
    |//=====_|=======================================================================
  > |    function checkIfNameValid(string _nameStr)
    |        public
    |        view
  at /home/jiaming/slither_fp_files/out14500.sol(1036)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |     * -functionhash- 0x0c6940ea
    |     */
  > |    function addMeToAllGames()
    |        isHuman()
    |        public
  at /home/jiaming/slither_fp_files/out14500.sol(1219)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |     * @param _nameString the name you want to use 
    |     */
  > |    function useMyOldName(string _nameString)
    |        isHuman()
    |        public 
  at /home/jiaming/slither_fp_files/out14500.sol(1246)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |//    (_(_)| (/_  |(_)(_||(_  . 
    |//=====================_|=======================================================    
  > |    function registerNameCore(uint256 _pID, address _addr, uint256 _affID, bytes32 _name, bool _isNewPlayer, bool _all)
    |        private
    |    {
  at /home/jiaming/slither_fp_files/out14500.sol(1265)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |//     | (_)(_)|_\  .
    |//==============================================================================    
  > |    function determinePID(address _addr)
    |        private
    |        returns (bool)
  at /home/jiaming/slither_fp_files/out14500.sol(1297)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |        return (plyr_[_pID].addr);
    |    }
  > |    function getNameFee()
    |        external
    |        view
  at /home/jiaming/slither_fp_files/out14500.sol(1346)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |    MSFun.Data private msData;
    |
  > |    function multiSigDev(bytes32 _whatFunction) private returns (bool) {return(MSFun.multiSig(msData, TeamJust.requiredDevSignatures(), _whatFunction));}
    |    function deleteProposal(bytes32 _whatFunction) private {MSFun.deleteProposal(msData, _whatFunction);}
    |    function deleteAnyProposal(bytes32 _whatFunction) onlyDevs() public {MSFun.deleteProposal(msData, _whatFunction);}
  at /home/jiaming/slither_fp_files/out14500.sol(939)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |    function checkData(bytes32 _whatFunction) onlyDevs() public view returns(bytes32, uint256) {return(MSFun.checkMsgData(msData, _whatFunction), MSFun.checkCount(msData, _whatFunction));}
    |    function checkSignersByAddress(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyDevs() public view returns(address, address, address) {return(MSFun.checkSigner(msData, _whatFunction, _signerA), MSFun.checkSigner(msData, _whatFunction, _signerB), MSFun.checkSigner(msData, _whatFunction, _signerC));}
  > |    function checkSignersByName(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyDevs() public view returns(bytes32, bytes32, bytes32) {return(TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerA)), TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerB)), TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerC)));}
    |//==============================================================================
    |//     _| _ _|_ _    _ _ _|_    _   .
  at /home/jiaming/slither_fp_files/out14500.sol(944)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |    modifier onlyDevs() 
    |    {
  > |        require(TeamJust.isDev(msg.sender) == true, "msg sender is not a dev");
    |        _;
    |    }
  at /home/jiaming/slither_fp_files/out14500.sol(1006)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |        
    |        // add players profile and most recent name
  > |        games_[_gameID].receivePlayerInfo(_pID, _addr, plyr_[_pID].name, plyr_[_pID].laff);
    |        
    |        // add list of all names
  at /home/jiaming/slither_fp_files/out14500.sol(1207)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |        if (_totalNames > 1)
    |            for (uint256 ii = 1; ii <= _totalNames; ii++)
  > |                games_[_gameID].receivePlayerNameList(_pID, plyrNameList_[_pID][ii]);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out14500.sol(1212)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |        for (uint256 i = 1; i <= gID_; i++)
    |        {
  > |            games_[i].receivePlayerInfo(_pID, _addr, _name, _laff);
    |            if (_totalNames > 1)
    |                for (uint256 ii = 1; ii <= _totalNames; ii++)
  at /home/jiaming/slither_fp_files/out14500.sol(1232)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |            if (_totalNames > 1)
    |                for (uint256 ii = 1; ii <= _totalNames; ii++)
  > |                    games_[i].receivePlayerNameList(_pID, plyrNameList_[_pID][ii]);
    |        }
    |                
  at /home/jiaming/slither_fp_files/out14500.sol(1235)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |        
    |        // registration fee goes directly to community rewards
  > |        FundForwarderConst.deposit.value(address(this).balance)();
    |        
    |        // push player info to games
  at /home/jiaming/slither_fp_files/out14500.sol(1283)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |        if (_all == true)
    |            for (uint256 i = 1; i <= gID_; i++)
  > |                games_[i].receivePlayerInfo(_pID, _addr, _name, _affID);
    |        
    |        // fire event
  at /home/jiaming/slither_fp_files/out14500.sol(1288)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |            games_[gID_] = PlayerBookReceiverInterface(_gameAddress);
    |        
  > |            games_[gID_].receivePlayerInfo(1, plyr_[1].addr, plyr_[1].name, 0);
    |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
    |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
  at /home/jiaming/slither_fp_files/out14500.sol(1477)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |        
    |            games_[gID_].receivePlayerInfo(1, plyr_[1].addr, plyr_[1].name, 0);
  > |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
    |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
    |            games_[gID_].receivePlayerInfo(4, plyr_[4].addr, plyr_[4].name, 0);
  at /home/jiaming/slither_fp_files/out14500.sol(1478)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |            games_[gID_].receivePlayerInfo(1, plyr_[1].addr, plyr_[1].name, 0);
    |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
  > |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
    |            games_[gID_].receivePlayerInfo(4, plyr_[4].addr, plyr_[4].name, 0);
    |        }
  at /home/jiaming/slither_fp_files/out14500.sol(1479)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
    |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
  > |            games_[gID_].receivePlayerInfo(4, plyr_[4].addr, plyr_[4].name, 0);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out14500.sol(1480)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlayerBook':
    |    MSFun.Data private msData;
    |
  > |    function multiSigDev(bytes32 _whatFunction) private returns (bool) {return(MSFun.multiSig(msData, TeamJust.requiredDevSignatures(), _whatFunction));}
    |    function deleteProposal(bytes32 _whatFunction) private {MSFun.deleteProposal(msData, _whatFunction);}
    |    function deleteAnyProposal(bytes32 _whatFunction) onlyDevs() public {MSFun.deleteProposal(msData, _whatFunction);}
  at /home/jiaming/slither_fp_files/out14500.sol(939)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlayerBook':
    |    modifier onlyDevs() 
    |    {
  > |        require(TeamJust.isDev(msg.sender) == true, "msg sender is not a dev");
    |        _;
    |    }
  at /home/jiaming/slither_fp_files/out14500.sol(1006)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlayerBook':
    |        
    |        // add players profile and most recent name
  > |        games_[_gameID].receivePlayerInfo(_pID, _addr, plyr_[_pID].name, plyr_[_pID].laff);
    |        
    |        // add list of all names
  at /home/jiaming/slither_fp_files/out14500.sol(1207)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlayerBook':
    |        if (_totalNames > 1)
    |            for (uint256 ii = 1; ii <= _totalNames; ii++)
  > |                games_[_gameID].receivePlayerNameList(_pID, plyrNameList_[_pID][ii]);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out14500.sol(1212)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlayerBook':
    |        for (uint256 i = 1; i <= gID_; i++)
    |        {
  > |            games_[i].receivePlayerInfo(_pID, _addr, _name, _laff);
    |            if (_totalNames > 1)
    |                for (uint256 ii = 1; ii <= _totalNames; ii++)
  at /home/jiaming/slither_fp_files/out14500.sol(1232)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlayerBook':
    |            if (_totalNames > 1)
    |                for (uint256 ii = 1; ii <= _totalNames; ii++)
  > |                    games_[i].receivePlayerNameList(_pID, plyrNameList_[_pID][ii]);
    |        }
    |                
  at /home/jiaming/slither_fp_files/out14500.sol(1235)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        {
    |            // if it is, lets record the original signers data
  > |            self.proposal_[_whatProposal].msgData = _msgData;
    |            
    |            // record original senders signature
  at /home/jiaming/slither_fp_files/out14500.sol(472)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |            
    |            // record original senders signature
  > |            self.proposal_[_whatProposal].admin[_whichAdmin] = true;        
    |            
    |            // update log (used to delete records later, and easy way to view signers)
  at /home/jiaming/slither_fp_files/out14500.sol(475)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |            // also useful if the calling function wants to give something to a 
    |            // specific signer.  
  > |            self.proposal_[_whatProposal].log[_currentCount] = _whichAdmin;  
    |            
    |            // track number of signatures
  at /home/jiaming/slither_fp_files/out14500.sol(480)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |            
    |            // track number of signatures
  > |            self.proposal_[_whatProposal].count += 1;  
    |            
    |            // if we now have enough signatures to execute the function, lets
  at /home/jiaming/slither_fp_files/out14500.sol(483)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |            {
    |                // record their signature
  > |                self.proposal_[_whatProposal].admin[_whichAdmin] = true;        
    |                
    |                // update log (used to delete records later, and easy way to view signers)
  at /home/jiaming/slither_fp_files/out14500.sol(498)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |                
    |                // update log (used to delete records later, and easy way to view signers)
  > |                self.proposal_[_whatProposal].log[_currentCount] = _whichAdmin;  
    |                
    |                // track number of signatures
  at /home/jiaming/slither_fp_files/out14500.sol(501)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |                
    |                // track number of signatures
  > |                self.proposal_[_whatProposal].count += 1;  
    |            }
    |            
  at /home/jiaming/slither_fp_files/out14500.sol(504)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        for (uint256 i=0; i < self.proposal_[_whatProposal].count; i++) {
    |            _whichAdmin = self.proposal_[_whatProposal].log[i];
  > |            delete self.proposal_[_whatProposal].admin[_whichAdmin];
    |            delete self.proposal_[_whatProposal].log[i];
    |        }
  at /home/jiaming/slither_fp_files/out14500.sol(535)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |            _whichAdmin = self.proposal_[_whatProposal].log[i];
    |            delete self.proposal_[_whatProposal].admin[_whichAdmin];
  > |            delete self.proposal_[_whatProposal].log[i];
    |        }
    |        //delete the rest of the data in the record
  at /home/jiaming/slither_fp_files/out14500.sol(536)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        }
    |        //delete the rest of the data in the record
  > |        delete self.proposal_[_whatProposal];
    |    }
    |    
  at /home/jiaming/slither_fp_files/out14500.sol(539)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        {
    |            // update last affiliate 
  > |            plyr_[_pID].laff = _affCode;
    |        } else if (_affCode == _pID) {
    |            _affCode = 0;
  at /home/jiaming/slither_fp_files/out14500.sol(1099)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        
    |        // add name to player profile, registry, and name book
  > |        plyr_[_pID].name = _name;
    |        pIDxName_[_name] = _pID;
    |        if (plyrNames_[_pID][_name] == false)
  at /home/jiaming/slither_fp_files/out14500.sol(1273)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        // add name to player profile, registry, and name book
    |        plyr_[_pID].name = _name;
  > |        pIDxName_[_name] = _pID;
    |        if (plyrNames_[_pID][_name] == false)
    |        {
  at /home/jiaming/slither_fp_files/out14500.sol(1274)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        if (plyrNames_[_pID][_name] == false)
    |        {
  > |            plyrNames_[_pID][_name] = true;
    |            plyr_[_pID].names++;
    |            plyrNameList_[_pID][plyr_[_pID].names] = _name;
  at /home/jiaming/slither_fp_files/out14500.sol(1277)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        {
    |            plyrNames_[_pID][_name] = true;
  > |            plyr_[_pID].names++;
    |            plyrNameList_[_pID][plyr_[_pID].names] = _name;
    |        }
  at /home/jiaming/slither_fp_files/out14500.sol(1278)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |            plyrNames_[_pID][_name] = true;
    |            plyr_[_pID].names++;
  > |            plyrNameList_[_pID][plyr_[_pID].names] = _name;
    |        }
    |        
  at /home/jiaming/slither_fp_files/out14500.sol(1279)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        if (pIDxAddr_[_addr] == 0)
    |        {
  > |            pID_++;
    |            pIDxAddr_[_addr] = pID_;
    |            plyr_[pID_].addr = _addr;
  at /home/jiaming/slither_fp_files/out14500.sol(1303)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        {
    |            pID_++;
  > |            pIDxAddr_[_addr] = pID_;
    |            plyr_[pID_].addr = _addr;
    |            
  at /home/jiaming/slither_fp_files/out14500.sol(1304)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |            pID_++;
    |            pIDxAddr_[_addr] = pID_;
  > |            plyr_[pID_].addr = _addr;
    |            
    |            // set the new player bool to true
  at /home/jiaming/slither_fp_files/out14500.sol(1305)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        {
    |            // update last affiliate 
  > |            plyr_[_pID].laff = _affID;
    |        } else if (_affID == _pID) {
    |            _affID = 0;
  at /home/jiaming/slither_fp_files/out14500.sol(1375)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |            {
    |                // update last affiliate
  > |                plyr_[_pID].laff = _affID;
    |            }
    |        }
  at /home/jiaming/slither_fp_files/out14500.sol(1412)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |            {
    |                // update last affiliate
  > |                plyr_[_pID].laff = _affID;
    |            }
    |        }
  at /home/jiaming/slither_fp_files/out14500.sol(1448)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        {
    |            deleteProposal("addGame");
  > |            gID_++;
    |            bytes32 _name = _gameNameStr.nameFilter();
    |            gameIDs_[_gameAddress] = gID_;
  at /home/jiaming/slither_fp_files/out14500.sol(1471)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        if (multiSigDev("setRegistrationFee") == true)
    |        {deleteProposal("setRegistrationFee");
  > |            registrationFee_ = _fee;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out14500.sol(1490)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * - removed div, its useless
    | */
  > |library SafeMath {
    |    
    |    /**
  at /home/jiaming/slither_fp_files/out14500.sol(153)

[33mWarning[0m for DAO in contract 'Team':
    |    function deleteAnyProposal(bytes32 _whatFunction) onlyDevs() public {MSFun.deleteProposal(msData, _whatFunction);}
    |    function checkData(bytes32 _whatFunction) onlyAdmins() public view returns(bytes32 message_data, uint256 signature_count) {return(MSFun.checkMsgData(msData, _whatFunction), MSFun.checkCount(msData, _whatFunction));}
  > |    function checkSignersByName(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyAdmins() public view returns(bytes32, bytes32, bytes32) {return(this.adminName(MSFun.checkSigner(msData, _whatFunction, _signerA)), this.adminName(MSFun.checkSigner(msData, _whatFunction, _signerB)), this.adminName(MSFun.checkSigner(msData, _whatFunction, _signerC)));}
    |
    |    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  at /home/jiaming/slither_fp_files/out14500.sol(1510)

[33mWarning[0m for LockedEther in contract 'Team':
    |}
    |
  > |contract Team {
    |
    |    // set dev1
  at /home/jiaming/slither_fp_files/out14500.sol(1496)

[31mViolation[0m for MissingInputValidation in contract 'Team':
    |    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    |    MSFun.Data private msData;
  > |    function deleteAnyProposal(bytes32 _whatFunction) onlyDevs() public {MSFun.deleteProposal(msData, _whatFunction);}
    |    function checkData(bytes32 _whatFunction) onlyAdmins() public view returns(bytes32 message_data, uint256 signature_count) {return(MSFun.checkMsgData(msData, _whatFunction), MSFun.checkCount(msData, _whatFunction));}
    |    function checkSignersByName(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyAdmins() public view returns(bytes32, bytes32, bytes32) {return(this.adminName(MSFun.checkSigner(msData, _whatFunction, _signerA)), this.adminName(MSFun.checkSigner(msData, _whatFunction, _signerB)), this.adminName(MSFun.checkSigner(msData, _whatFunction, _signerC)));}
  at /home/jiaming/slither_fp_files/out14500.sol(1508)

[31mViolation[0m for MissingInputValidation in contract 'Team':
    |    MSFun.Data private msData;
    |    function deleteAnyProposal(bytes32 _whatFunction) onlyDevs() public {MSFun.deleteProposal(msData, _whatFunction);}
  > |    function checkData(bytes32 _whatFunction) onlyAdmins() public view returns(bytes32 message_data, uint256 signature_count) {return(MSFun.checkMsgData(msData, _whatFunction), MSFun.checkCount(msData, _whatFunction));}
    |    function checkSignersByName(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyAdmins() public view returns(bytes32, bytes32, bytes32) {return(this.adminName(MSFun.checkSigner(msData, _whatFunction, _signerA)), this.adminName(MSFun.checkSigner(msData, _whatFunction, _signerB)), this.adminName(MSFun.checkSigner(msData, _whatFunction, _signerC)));}
    |
  at /home/jiaming/slither_fp_files/out14500.sol(1509)

[31mViolation[0m for MissingInputValidation in contract 'Team':
    |    function deleteAnyProposal(bytes32 _whatFunction) onlyDevs() public {MSFun.deleteProposal(msData, _whatFunction);}
    |    function checkData(bytes32 _whatFunction) onlyAdmins() public view returns(bytes32 message_data, uint256 signature_count) {return(MSFun.checkMsgData(msData, _whatFunction), MSFun.checkCount(msData, _whatFunction));}
  > |    function checkSignersByName(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyAdmins() public view returns(bytes32, bytes32, bytes32) {return(this.adminName(MSFun.checkSigner(msData, _whatFunction, _signerA)), this.adminName(MSFun.checkSigner(msData, _whatFunction, _signerB)), this.adminName(MSFun.checkSigner(msData, _whatFunction, _signerC)));}
    |
    |    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  at /home/jiaming/slither_fp_files/out14500.sol(1510)

[31mViolation[0m for MissingInputValidation in contract 'Team':
    |    }
    |    
  > |    function setup(address _addr)
    |        onlyDevs()
    |        public
  at /home/jiaming/slither_fp_files/out14500.sol(1554)

[31mViolation[0m for MissingInputValidation in contract 'Team':
    |    * @param _who - address of the admin you wish to remove
    |    */
  > |    function removeAdmin(address _who)
    |        public
    |        onlyDevs()
  at /home/jiaming/slither_fp_files/out14500.sol(1635)

[31mViolation[0m for MissingInputValidation in contract 'Team':
    |    function adminCount() external view returns(uint256) {return(adminCount_);}
    |    function devCount() external view returns(uint256) {return(devCount_);}
  > |    function adminName(address _who) external view returns(bytes32) {return(admins_[_who].name);}
    |    function isAdmin(address _who) external view returns(bool) {return(admins_[_who].isAdmin);}
    |    function isDev(address _who) external view returns(bool) {return(admins_[_who].isDev);}
  at /home/jiaming/slither_fp_files/out14500.sol(1734)

[31mViolation[0m for MissingInputValidation in contract 'Team':
    |    function devCount() external view returns(uint256) {return(devCount_);}
    |    function adminName(address _who) external view returns(bytes32) {return(admins_[_who].name);}
  > |    function isAdmin(address _who) external view returns(bool) {return(admins_[_who].isAdmin);}
    |    function isDev(address _who) external view returns(bool) {return(admins_[_who].isDev);}
    |}
  at /home/jiaming/slither_fp_files/out14500.sol(1735)

[31mViolation[0m for MissingInputValidation in contract 'Team':
    |    function adminName(address _who) external view returns(bytes32) {return(admins_[_who].name);}
    |    function isAdmin(address _who) external view returns(bool) {return(admins_[_who].isAdmin);}
  > |    function isDev(address _who) external view returns(bool) {return(admins_[_who].isDev);}
    |}
    |
  at /home/jiaming/slither_fp_files/out14500.sol(1736)

[33mWarning[0m for MissingInputValidation in contract 'Team':
    |    // MULTI SIG FUNCTIONS
    |    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  > |    function multiSig(Data storage self, uint256 _requiredSignatures, bytes32 _whatFunction)
    |        internal
    |        returns(bool) 
  at /home/jiaming/slither_fp_files/out14500.sol(444)

[33mWarning[0m for MissingInputValidation in contract 'Team':
    |    
    |    // deletes proposal signature data after successfully executing a multiSig function
  > |    function deleteProposal(Data storage self, bytes32 _whatFunction)
    |        internal
    |    {
  at /home/jiaming/slither_fp_files/out14500.sol(524)

[33mWarning[0m for MissingInputValidation in contract 'Team':
    |    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    |
  > |    function whatProposal(bytes32 _whatFunction)
    |        private
    |        view
  at /home/jiaming/slither_fp_files/out14500.sol(546)

[33mWarning[0m for MissingInputValidation in contract 'Team':
    |    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    |    // returns a hashed version of msg.data sent by original signer for any given function
  > |    function checkMsgData (Data storage self, bytes32 _whatFunction)
    |        internal
    |        view
  at /home/jiaming/slither_fp_files/out14500.sol(558)

[33mWarning[0m for MissingInputValidation in contract 'Team':
    |    
    |    // returns number of signers for any given function
  > |    function checkCount (Data storage self, bytes32 _whatFunction)
    |        internal
    |        view
  at /home/jiaming/slither_fp_files/out14500.sol(568)

[33mWarning[0m for MissingInputValidation in contract 'Team':
    |    
    |    // returns address of an admin who signed for any given function
  > |    function checkSigner (Data storage self, bytes32 _whatFunction, uint256 _signer)
    |        internal
    |        view
  at /home/jiaming/slither_fp_files/out14500.sol(578)

[33mWarning[0m for MissingInputValidation in contract 'Team':
    |    // EXTERNAL FUNCTIONS 
    |    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  > |    function requiredSignatures() external view returns(uint256) {return(requiredSignatures_);}
    |    function requiredDevSignatures() external view returns(uint256) {return(requiredDevSignatures_);}
    |    function adminCount() external view returns(uint256) {return(adminCount_);}
  at /home/jiaming/slither_fp_files/out14500.sol(1730)

[33mWarning[0m for MissingInputValidation in contract 'Team':
    |    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    |    function requiredSignatures() external view returns(uint256) {return(requiredSignatures_);}
  > |    function requiredDevSignatures() external view returns(uint256) {return(requiredDevSignatures_);}
    |    function adminCount() external view returns(uint256) {return(adminCount_);}
    |    function devCount() external view returns(uint256) {return(devCount_);}
  at /home/jiaming/slither_fp_files/out14500.sol(1731)

[33mWarning[0m for MissingInputValidation in contract 'Team':
    |    function requiredSignatures() external view returns(uint256) {return(requiredSignatures_);}
    |    function requiredDevSignatures() external view returns(uint256) {return(requiredDevSignatures_);}
  > |    function adminCount() external view returns(uint256) {return(adminCount_);}
    |    function devCount() external view returns(uint256) {return(devCount_);}
    |    function adminName(address _who) external view returns(bytes32) {return(admins_[_who].name);}
  at /home/jiaming/slither_fp_files/out14500.sol(1732)

[33mWarning[0m for MissingInputValidation in contract 'Team':
    |    function requiredDevSignatures() external view returns(uint256) {return(requiredDevSignatures_);}
    |    function adminCount() external view returns(uint256) {return(adminCount_);}
  > |    function devCount() external view returns(uint256) {return(devCount_);}
    |    function adminName(address _who) external view returns(bytes32) {return(admins_[_who].name);}
    |    function isAdmin(address _who) external view returns(bool) {return(admins_[_who].isAdmin);}
  at /home/jiaming/slither_fp_files/out14500.sol(1733)

[33mWarning[0m for UnhandledException in contract 'Team':
    |    function deleteAnyProposal(bytes32 _whatFunction) onlyDevs() public {MSFun.deleteProposal(msData, _whatFunction);}
    |    function checkData(bytes32 _whatFunction) onlyAdmins() public view returns(bytes32 message_data, uint256 signature_count) {return(MSFun.checkMsgData(msData, _whatFunction), MSFun.checkCount(msData, _whatFunction));}
  > |    function checkSignersByName(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyAdmins() public view returns(bytes32, bytes32, bytes32) {return(this.adminName(MSFun.checkSigner(msData, _whatFunction, _signerA)), this.adminName(MSFun.checkSigner(msData, _whatFunction, _signerB)), this.adminName(MSFun.checkSigner(msData, _whatFunction, _signerC)));}
    |
    |    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  at /home/jiaming/slither_fp_files/out14500.sol(1510)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |        {
    |            // if it is, lets record the original signers data
  > |            self.proposal_[_whatProposal].msgData = _msgData;
    |            
    |            // record original senders signature
  at /home/jiaming/slither_fp_files/out14500.sol(472)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |            
    |            // record original senders signature
  > |            self.proposal_[_whatProposal].admin[_whichAdmin] = true;        
    |            
    |            // update log (used to delete records later, and easy way to view signers)
  at /home/jiaming/slither_fp_files/out14500.sol(475)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |            // also useful if the calling function wants to give something to a 
    |            // specific signer.  
  > |            self.proposal_[_whatProposal].log[_currentCount] = _whichAdmin;  
    |            
    |            // track number of signatures
  at /home/jiaming/slither_fp_files/out14500.sol(480)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |            
    |            // track number of signatures
  > |            self.proposal_[_whatProposal].count += 1;  
    |            
    |            // if we now have enough signatures to execute the function, lets
  at /home/jiaming/slither_fp_files/out14500.sol(483)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |            {
    |                // record their signature
  > |                self.proposal_[_whatProposal].admin[_whichAdmin] = true;        
    |                
    |                // update log (used to delete records later, and easy way to view signers)
  at /home/jiaming/slither_fp_files/out14500.sol(498)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |                
    |                // update log (used to delete records later, and easy way to view signers)
  > |                self.proposal_[_whatProposal].log[_currentCount] = _whichAdmin;  
    |                
    |                // track number of signatures
  at /home/jiaming/slither_fp_files/out14500.sol(501)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |                
    |                // track number of signatures
  > |                self.proposal_[_whatProposal].count += 1;  
    |            }
    |            
  at /home/jiaming/slither_fp_files/out14500.sol(504)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |        for (uint256 i=0; i < self.proposal_[_whatProposal].count; i++) {
    |            _whichAdmin = self.proposal_[_whatProposal].log[i];
  > |            delete self.proposal_[_whatProposal].admin[_whichAdmin];
    |            delete self.proposal_[_whatProposal].log[i];
    |        }
  at /home/jiaming/slither_fp_files/out14500.sol(535)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |            _whichAdmin = self.proposal_[_whatProposal].log[i];
    |            delete self.proposal_[_whatProposal].admin[_whichAdmin];
  > |            delete self.proposal_[_whatProposal].log[i];
    |        }
    |        //delete the rest of the data in the record
  at /home/jiaming/slither_fp_files/out14500.sol(536)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |        }
    |        //delete the rest of the data in the record
  > |        delete self.proposal_[_whatProposal];
    |    }
    |    
  at /home/jiaming/slither_fp_files/out14500.sol(539)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |    {
    |        require( address(FundForwarderTeam) == address(0) );
  > |        FundForwarderTeam = FundForwarderInterface(_addr);
    |    }    
    |    
  at /home/jiaming/slither_fp_files/out14500.sol(1559)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |                
    |                // set admins flag to true in admin mapping
  > |                admins_[_who].isAdmin = true;
    |        
    |                // adjust admin count and required signatures
  at /home/jiaming/slither_fp_files/out14500.sol(1600)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |        
    |                // adjust admin count and required signatures
  > |                adminCount_ += 1;
    |                requiredSignatures_ += 1;
    |            }
  at /home/jiaming/slither_fp_files/out14500.sol(1603)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |                // adjust admin count and required signatures
    |                adminCount_ += 1;
  > |                requiredSignatures_ += 1;
    |            }
    |            
  at /home/jiaming/slither_fp_files/out14500.sol(1604)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |            {
    |                // bestow the honored dev status
  > |                admins_[_who].isDev = _isDev;
    |                
    |                // increase dev count and required dev signatures
  at /home/jiaming/slither_fp_files/out14500.sol(1613)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |                
    |                // increase dev count and required dev signatures
  > |                devCount_ += 1;
    |                requiredDevSignatures_ += 1;
    |            }
  at /home/jiaming/slither_fp_files/out14500.sol(1616)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |                // increase dev count and required dev signatures
    |                devCount_ += 1;
  > |                requiredDevSignatures_ += 1;
    |            }
    |        }
  at /home/jiaming/slither_fp_files/out14500.sol(1617)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |                
    |                //set admins flag to false in admin mapping
  > |                admins_[_who].isAdmin = false;
    |                
    |                //adjust admin count and required signatures
  at /home/jiaming/slither_fp_files/out14500.sol(1659)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |                
    |                //adjust admin count and required signatures
  > |                adminCount_ -= 1;
    |                if (requiredSignatures_ > 1) 
    |                {
  at /home/jiaming/slither_fp_files/out14500.sol(1662)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |                if (requiredSignatures_ > 1) 
    |                {
  > |                    requiredSignatures_ -= 1;
    |                }
    |            }
  at /home/jiaming/slither_fp_files/out14500.sol(1665)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |                
    |                //set dev flag to false
  > |                admins_[_who].isDev = false;
    |                
    |                //adjust dev count and required dev signatures
  at /home/jiaming/slither_fp_files/out14500.sol(1673)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |                
    |                //adjust dev count and required dev signatures
  > |                devCount_ -= 1;
    |                if (requiredDevSignatures_ > 1) 
    |                {
  at /home/jiaming/slither_fp_files/out14500.sol(1676)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |                if (requiredDevSignatures_ > 1) 
    |                {
  > |                    requiredDevSignatures_ -= 1;
    |                }
    |            }
  at /home/jiaming/slither_fp_files/out14500.sol(1679)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |            
    |            // store new setting.
  > |            requiredSignatures_ = _howMany;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out14500.sol(1702)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |            
    |            // store new setting.
  > |            requiredDevSignatures_ = _howMany;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out14500.sol(1723)

[33mWarning[0m for LockedEther in contract 'UintCompressor':
    |}
    |
  > |library UintCompressor {
    |    using SafeMath for *;
    |    
  at /home/jiaming/slither_fp_files/out14500.sol(651)


