Processing contract: /home/jiaming/slither_fp_files/out5865.sol:IBCLottery
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5865.sol:IBCLotteryDatasets
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5865.sol:IBCLotteryEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5865.sol:IBCLotteryGame
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5865.sol:IBCLotteryKeysCalcLong
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5865.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5865.sol:Token
[33mWarning[0m for LockedEther in contract 'IBCLottery':
    | */
    |
  > |contract IBCLottery
    |{
    |    uint256 private ticketPrice_;
  at /home/jiaming/slither_fp_files/out5865.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'IBCLottery':
    |    uint256 public tokenRaised_;
    |    uint256 public actualTokenRaised_;
  > |    mapping(address => uint256) public userPaidIn_;
    |    
    |    // On mainnet:
  at /home/jiaming/slither_fp_files/out5865.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'IBCLottery':
    |    }
    |    
  > |    function getUserPaidIn(
    |        address _address
    |    )
  at /home/jiaming/slither_fp_files/out5865.sol(247)

[33mWarning[0m for MissingInputValidation in contract 'IBCLottery':
    |    mapping(address => Ticket) internal ticketRecord_;
    |    
  > |    Token public ibcToken_;
    |    
    |    address public officialWallet_;
  at /home/jiaming/slither_fp_files/out5865.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'IBCLottery':
    |    Token public ibcToken_;
    |    
  > |    address public officialWallet_;
    |    address public devATeamWallet_;
    |    address public devBTeamWallet_;
  at /home/jiaming/slither_fp_files/out5865.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'IBCLottery':
    |    
    |    address public officialWallet_;
  > |    address public devATeamWallet_;
    |    address public devBTeamWallet_;
    |    
  at /home/jiaming/slither_fp_files/out5865.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'IBCLottery':
    |    address public officialWallet_;
    |    address public devATeamWallet_;
  > |    address public devBTeamWallet_;
    |    
    |    // round => tokenRaised
  at /home/jiaming/slither_fp_files/out5865.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'IBCLottery':
    |    
    |    // round => tokenRaised
  > |    uint256 public tokenRaised_;
    |    uint256 public actualTokenRaised_;
    |    mapping(address => uint256) public userPaidIn_;
  at /home/jiaming/slither_fp_files/out5865.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'IBCLottery':
    |    // round => tokenRaised
    |    uint256 public tokenRaised_;
  > |    uint256 public actualTokenRaised_;
    |    mapping(address => uint256) public userPaidIn_;
    |    
  at /home/jiaming/slither_fp_files/out5865.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'IBCLottery':
    |    }
    |    
  > |    function getTokenRaised()
    |        view
    |        public
  at /home/jiaming/slither_fp_files/out5865.sol(232)

[33mWarning[0m for LockedEther in contract 'IBCLotteryDatasets':
    | * */
    |
  > |library IBCLotteryDatasets {
    |    struct EventReturns {
    |        address winnerAddr;         // winner address
  at /home/jiaming/slither_fp_files/out5865.sol(1548)

[33mWarning[0m for LockedEther in contract 'IBCLotteryEvents':
    | *  \/    |____/___,'\__/   \_/ \___|_| |_|\__|___/
    | * */
  > |contract IBCLotteryEvents {
    |    
    |    // fired at end of buy or reload
  at /home/jiaming/slither_fp_files/out5865.sol(272)

[33mWarning[0m for LockedEther in contract 'IBCLotteryKeysCalcLong':
    | *             |___/                                                     
    | * */
  > |library IBCLotteryKeysCalcLong {
    |    using SafeMath for *;
    |    /**
  at /home/jiaming/slither_fp_files/out5865.sol(1607)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * \__/\__,_|_|  \___\/    \/\__,_|\__|_| |_|
    | */
  > |library SafeMath {
    |    
    |    /**
  at /home/jiaming/slither_fp_files/out5865.sol(1671)


