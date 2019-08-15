Processing contract: /home/jiaming/slither_fp_files/out3485.sol:Buffer
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out3485.sol:CBOR
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out3485.sol:OraclizeAddrResolverI
Processing contract: /home/jiaming/slither_fp_files/out3485.sol:OraclizeI
Processing contract: /home/jiaming/slither_fp_files/out3485.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out3485.sol:PowerEther
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out3485.sol:PowerEtherBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out3485.sol:PowerEtherHelper
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out3485.sol:PowerFour
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out3485.sol:PowerOne
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out3485.sol:PowerTwo
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out3485.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out3485.sol:strings
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out3485.sol:usingOraclize
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Buffer':
    | */
    |
  > |library Buffer {
    |    struct buffer {
    |        bytes buf;
  at /home/jiaming/slither_fp_files/out3485.sol(85)

[33mWarning[0m for LockedEther in contract 'CBOR':
    |}
    |
  > |library CBOR {
    |    using Buffer for Buffer.buffer;
    |
  at /home/jiaming/slither_fp_files/out3485.sol(217)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | */
    |
  > |contract Ownable {
    |    address public owner;
    |    function Ownable() {
  at /home/jiaming/slither_fp_files/out3485.sol(1243)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    function Ownable() {
    |        owner = msg.sender;
  at /home/jiaming/slither_fp_files/out3485.sol(1244)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) owner = newOwner;
    |    }
  at /home/jiaming/slither_fp_files/out3485.sol(1254)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        if (newOwner != address(0)) owner = newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out3485.sol(1255)

[33mWarning[0m for LockedEther in contract 'PowerEtherBase':
    |//import "github.com/oraclize/ethereum-api/oraclizeAPI.sol";
    |
  > |contract PowerEtherBase is Ownable {
    |    
    |    /**
  at /home/jiaming/slither_fp_files/out3485.sol(1979)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |
    |contract Ownable {
  > |    address public owner;
    |    function Ownable() {
    |        owner = msg.sender;
  at /home/jiaming/slither_fp_files/out3485.sol(1244)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) owner = newOwner;
    |    }
  at /home/jiaming/slither_fp_files/out3485.sol(1254)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// Public constants for PromiseCoin contract.
  > |    string public constant NAME = "PowerEther";
    |    
    |    /// The bid amount for PowerOne game.
  at /home/jiaming/slither_fp_files/out3485.sol(2054)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// The bid amount for PowerOne game.
  > |    uint256 public powerOneBid = 0.03 ether;
    |    
    |    /// The fee amount for PowerOne game.
  at /home/jiaming/slither_fp_files/out3485.sol(2057)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// The fee amount for PowerOne game.
  > |    uint256 public powerOneFee = 0.01 ether;
    |    
    |    /// The bid amount for PowerTwo game.
  at /home/jiaming/slither_fp_files/out3485.sol(2060)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// The bid amount for PowerTwo game.
  > |    uint256 public powerTwoBid = 0.02 ether;
    |    
    |    /// The fee amount for PowerTwo game.
  at /home/jiaming/slither_fp_files/out3485.sol(2063)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// The fee amount for PowerTwo game.
  > |    uint256 public powerTwoFee = 0.01 ether;
    |    
    |    /// The bid amount for PowerFour game.
  at /home/jiaming/slither_fp_files/out3485.sol(2066)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// The bid amount for PowerFour game.
  > |    uint256 public powerFourBid = 0.01 ether;
    |    
    |    /// The fee amount for PowerTwo game.
  at /home/jiaming/slither_fp_files/out3485.sol(2069)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// The fee amount for PowerTwo game.
  > |    uint256 public powerFourFee = 0.01 ether;
    |    
    |    /// The jackpot of PowerOne game.
  at /home/jiaming/slither_fp_files/out3485.sol(2072)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// The jackpot of PowerOne game.
  > |    uint256 public powerOneJackpot = 0 ether;
    |    
    |    /// The jackpot of PowerTwo game.
  at /home/jiaming/slither_fp_files/out3485.sol(2075)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// The jackpot of PowerTwo game.
  > |    uint256 public powerTwoJackpot = 0 ether;
    |    
    |    /// The jackpot of PowerFour game.
  at /home/jiaming/slither_fp_files/out3485.sol(2078)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// The jackpot of PowerFour game.
  > |    uint256 public powerFourJackpot = 0 ether;
    |    
    |    /// The MegaJackpot that is won whenever a PowerFour game has been won.
  at /home/jiaming/slither_fp_files/out3485.sol(2081)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// The MegaJackpot that is won whenever a PowerFour game has been won.
  > |    uint256 public megaJackpot = 0 ether;
    |    
    |    /// The MegaJackpot that is won whenever a PowerFour game has been won.
  at /home/jiaming/slither_fp_files/out3485.sol(2084)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// The MegaJackpot that is won whenever a PowerFour game has been won.
  > |    uint256 public megaJackpotFee = 0.01 ether;
    |    
    |    /**
  at /home/jiaming/slither_fp_files/out3485.sol(2087)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |     * is split among the last 1000 players.
    |     */
  > |    uint256 public megaJackpotCap = 100 ether;
    |    
    |    /// Counts MegaJacpot wins.
  at /home/jiaming/slither_fp_files/out3485.sol(2093)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// Counts MegaJacpot wins.
  > |    uint256 public megaJackpotWinCount = 0;
    |    
    |    /// The counter for PowerOne game.
  at /home/jiaming/slither_fp_files/out3485.sol(2096)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// The counter for PowerOne game.
  > |    uint256 public powerOneWinCounter = 0;
    |    
    |    /// The counter for PowerTwo game.
  at /home/jiaming/slither_fp_files/out3485.sol(2099)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// The counter for PowerTwo game.
  > |    uint256 public powerTwoWinCounter = 0;
    |    
    |    /// The counter for PowerFour game.
  at /home/jiaming/slither_fp_files/out3485.sol(2102)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// The counter for PowerFour game.
  > |    uint256 public powerFourWinCounter = 0;
    |
    |    /// @dev The CEO address to transfer the cut.
  at /home/jiaming/slither_fp_files/out3485.sol(2105)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |
    |    /// @dev The CEO address to transfer the cut.
  > |    address public ceoAddress;
    |    
    |    /// @dev The platform cut (as denumenator in the calculation equation).
  at /home/jiaming/slither_fp_files/out3485.sol(2108)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// @dev The platform cut (as denumenator in the calculation equation).
  > |    uint256 public platformCut = 95;
    |    
    |    /// @dev Counts uncollected fees for PowerOne.
  at /home/jiaming/slither_fp_files/out3485.sol(2111)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// @dev Counts uncollected fees for PowerOne.
  > |    uint256 public powerOneFeesToCollect;
    |    
    |    /// @dev Counts uncollected fees for PowerTwo.
  at /home/jiaming/slither_fp_files/out3485.sol(2114)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// @dev Counts uncollected fees for PowerTwo.
  > |    uint256 public powerTwoFeesToCollect;
    |    
    |    /// @dev Counts uncollected fees for PowerFour.
  at /home/jiaming/slither_fp_files/out3485.sol(2117)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// @dev Counts uncollected fees for PowerFour.
  > |    uint256 public powerFourFeesToCollect;
    |    
    |    /// @dev Contract activation switch.
  at /home/jiaming/slither_fp_files/out3485.sol(2120)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// @dev Contract activation switch.
  > |    bool public activated_ = false;
    |    
    |    /// @dev Sanity check for maximum and minimum inputs.
  at /home/jiaming/slither_fp_files/out3485.sol(2123)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// @dev Sanity check for maximum and minimum inputs.
  > |    uint256 public minNumber;
    |    uint256 public maxNumber;
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2126)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    /// @dev Sanity check for maximum and minimum inputs.
    |    uint256 public minNumber;
  > |    uint256 public maxNumber;
    |    
    |    /// @dev Gas for Oraclize.
  at /home/jiaming/slither_fp_files/out3485.sol(2127)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// @dev Gas for Oraclize.
  > |    uint32 public gasForOraclize;
    |    
    |    /// @dev Oraclize random Query ID counter.
  at /home/jiaming/slither_fp_files/out3485.sol(2130)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |    
    |    /// @dev Oraclize random Query ID counter.
  > |    uint256 public randomQueryId;
    |
    |    /// @dev Stats - total Ether won.
  at /home/jiaming/slither_fp_files/out3485.sol(2133)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |
    |    /// @dev Stats - total Ether won.
  > |    uint256 public totalEtherWon;
    |
    |    /// @dev Stats - total games played.
  at /home/jiaming/slither_fp_files/out3485.sol(2136)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherBase':
    |
    |    /// @dev Stats - total games played.
  > |    uint256 public totalGamesPlayed;
    |    
    |    /// @dev A mapping form a queryId to the player's address.
  at /home/jiaming/slither_fp_files/out3485.sol(2139)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerEtherBase':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        if (newOwner != address(0)) owner = newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out3485.sol(1255)

[31mViolation[0m for DAO in contract 'PowerEtherHelper':
    |            playerFundsToWithdraw[msg.sender] = 0;
    |        
  > |            if (msg.sender.call.value(amount)()) {
    |                
    |                return true;
  at /home/jiaming/slither_fp_files/out3485.sol(2592)

[31mViolation[0m for DAOConstantGas in contract 'PowerEtherHelper':
    |            require(totalAll <= address(this).balance, "Insufficient funds!");
    |            
  > |            ceoAddress.transfer(totalAll);
    |            
    |            // reset the counters
  at /home/jiaming/slither_fp_files/out3485.sol(2484)

[33mWarning[0m for LockedEther in contract 'PowerEtherHelper':
    |}
    |
  > |contract PowerEtherHelper is PowerEtherBase {
    |    
    |    using SafeMath for *;
  at /home/jiaming/slither_fp_files/out3485.sol(2203)

[31mViolation[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     * Only available to the current CEO. 
    |     */
  > |    function setPlatformCut(uint256 _newPlatformCut)
    |        external
    |        onlyCEO
  at /home/jiaming/slither_fp_files/out3485.sol(2337)

[31mViolation[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     * current CEO.
    |     */
  > |    function setMegaJackpotCap(uint256 _newCap)
    |        external
    |        onlyCEO
  at /home/jiaming/slither_fp_files/out3485.sol(2350)

[31mViolation[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     * @dev Sets the new MegaJackpot fee.
    |     */
  > |    function setMegaJackpotFee(uint256 _newMegaJackpotFee)
    |        external
    |        onlyCEO
  at /home/jiaming/slither_fp_files/out3485.sol(2362)

[31mViolation[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     * @dev Sets the gas limit for Oraclize Query.
    |     */
  > |    function setGasForOraclize(uint32 _newGasLimit)
    |        external
    |        onlyCEO
  at /home/jiaming/slither_fp_files/out3485.sol(2374)

[31mViolation[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     * @dev Sets the new minNumber.
    |     */
  > |    function setMinNumber(uint256 _newMinNumber)
    |        external
    |        onlyCEO
  at /home/jiaming/slither_fp_files/out3485.sol(2386)

[31mViolation[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     * @dev Sets the new maxNumber.
    |     */
  > |    function setMaxNumber(uint256 _newMaxNumber)
    |        external
    |        onlyCEO
  at /home/jiaming/slither_fp_files/out3485.sol(2398)

[31mViolation[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     * @dev Updates the contract balance. Only available to the current CEO. 
    |     */
  > |    function updateBalance(uint256 etherToAdd)
    |        public
    |        payable
  at /home/jiaming/slither_fp_files/out3485.sol(2531)

[31mViolation[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     * @dev Updates the PowerOne balance. Only available to the current CEO. 
    |     */
  > |    function updatePowerOneBalance(uint256 etherToAdd)
    |        public
    |        payable
  at /home/jiaming/slither_fp_files/out3485.sol(2543)

[31mViolation[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     * @dev Updates the PowerTwo balance. Only available to the current CEO. 
    |     */
  > |    function updatePowerTwoBalance(uint256 etherToAdd)
    |        public
    |        payable
  at /home/jiaming/slither_fp_files/out3485.sol(2556)

[31mViolation[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     * @dev Updates the PowerFour balance. Only available to the current CEO. 
    |     */
  > |    function updatePowerFourBalance(uint256 etherToAdd)
    |        public
    |        payable
  at /home/jiaming/slither_fp_files/out3485.sol(2569)

[31mViolation[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     */
    |
  > |    function getPendingTransactions(address playerAddress) 
    |        public 
    |        constant 
  at /home/jiaming/slither_fp_files/out3485.sol(2609)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |
    |contract Ownable {
  > |    address public owner;
    |    function Ownable() {
    |        owner = msg.sender;
  at /home/jiaming/slither_fp_files/out3485.sol(1244)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) owner = newOwner;
    |    }
  at /home/jiaming/slither_fp_files/out3485.sol(1254)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    * @dev Multiplies two numbers, throws on overflow.
    |    */
  > |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
    |            return 0;
  at /home/jiaming/slither_fp_files/out3485.sol(1265)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    * @dev Adds two numbers, throws on overflow.
    |    */
  > |    function add(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a + b;
    |        assert(c >= a);
  at /home/jiaming/slither_fp_files/out3485.sol(1295)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// Public constants for PromiseCoin contract.
  > |    string public constant NAME = "PowerEther";
    |    
    |    /// The bid amount for PowerOne game.
  at /home/jiaming/slither_fp_files/out3485.sol(2054)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// The bid amount for PowerOne game.
  > |    uint256 public powerOneBid = 0.03 ether;
    |    
    |    /// The fee amount for PowerOne game.
  at /home/jiaming/slither_fp_files/out3485.sol(2057)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// The fee amount for PowerOne game.
  > |    uint256 public powerOneFee = 0.01 ether;
    |    
    |    /// The bid amount for PowerTwo game.
  at /home/jiaming/slither_fp_files/out3485.sol(2060)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// The bid amount for PowerTwo game.
  > |    uint256 public powerTwoBid = 0.02 ether;
    |    
    |    /// The fee amount for PowerTwo game.
  at /home/jiaming/slither_fp_files/out3485.sol(2063)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// The fee amount for PowerTwo game.
  > |    uint256 public powerTwoFee = 0.01 ether;
    |    
    |    /// The bid amount for PowerFour game.
  at /home/jiaming/slither_fp_files/out3485.sol(2066)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// The bid amount for PowerFour game.
  > |    uint256 public powerFourBid = 0.01 ether;
    |    
    |    /// The fee amount for PowerTwo game.
  at /home/jiaming/slither_fp_files/out3485.sol(2069)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// The fee amount for PowerTwo game.
  > |    uint256 public powerFourFee = 0.01 ether;
    |    
    |    /// The jackpot of PowerOne game.
  at /home/jiaming/slither_fp_files/out3485.sol(2072)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// The jackpot of PowerOne game.
  > |    uint256 public powerOneJackpot = 0 ether;
    |    
    |    /// The jackpot of PowerTwo game.
  at /home/jiaming/slither_fp_files/out3485.sol(2075)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// The jackpot of PowerTwo game.
  > |    uint256 public powerTwoJackpot = 0 ether;
    |    
    |    /// The jackpot of PowerFour game.
  at /home/jiaming/slither_fp_files/out3485.sol(2078)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// The jackpot of PowerFour game.
  > |    uint256 public powerFourJackpot = 0 ether;
    |    
    |    /// The MegaJackpot that is won whenever a PowerFour game has been won.
  at /home/jiaming/slither_fp_files/out3485.sol(2081)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// The MegaJackpot that is won whenever a PowerFour game has been won.
  > |    uint256 public megaJackpot = 0 ether;
    |    
    |    /// The MegaJackpot that is won whenever a PowerFour game has been won.
  at /home/jiaming/slither_fp_files/out3485.sol(2084)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// The MegaJackpot that is won whenever a PowerFour game has been won.
  > |    uint256 public megaJackpotFee = 0.01 ether;
    |    
    |    /**
  at /home/jiaming/slither_fp_files/out3485.sol(2087)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     * is split among the last 1000 players.
    |     */
  > |    uint256 public megaJackpotCap = 100 ether;
    |    
    |    /// Counts MegaJacpot wins.
  at /home/jiaming/slither_fp_files/out3485.sol(2093)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// Counts MegaJacpot wins.
  > |    uint256 public megaJackpotWinCount = 0;
    |    
    |    /// The counter for PowerOne game.
  at /home/jiaming/slither_fp_files/out3485.sol(2096)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// The counter for PowerOne game.
  > |    uint256 public powerOneWinCounter = 0;
    |    
    |    /// The counter for PowerTwo game.
  at /home/jiaming/slither_fp_files/out3485.sol(2099)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// The counter for PowerTwo game.
  > |    uint256 public powerTwoWinCounter = 0;
    |    
    |    /// The counter for PowerFour game.
  at /home/jiaming/slither_fp_files/out3485.sol(2102)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// The counter for PowerFour game.
  > |    uint256 public powerFourWinCounter = 0;
    |
    |    /// @dev The CEO address to transfer the cut.
  at /home/jiaming/slither_fp_files/out3485.sol(2105)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |
    |    /// @dev The CEO address to transfer the cut.
  > |    address public ceoAddress;
    |    
    |    /// @dev The platform cut (as denumenator in the calculation equation).
  at /home/jiaming/slither_fp_files/out3485.sol(2108)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// @dev The platform cut (as denumenator in the calculation equation).
  > |    uint256 public platformCut = 95;
    |    
    |    /// @dev Counts uncollected fees for PowerOne.
  at /home/jiaming/slither_fp_files/out3485.sol(2111)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// @dev Counts uncollected fees for PowerOne.
  > |    uint256 public powerOneFeesToCollect;
    |    
    |    /// @dev Counts uncollected fees for PowerTwo.
  at /home/jiaming/slither_fp_files/out3485.sol(2114)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// @dev Counts uncollected fees for PowerTwo.
  > |    uint256 public powerTwoFeesToCollect;
    |    
    |    /// @dev Counts uncollected fees for PowerFour.
  at /home/jiaming/slither_fp_files/out3485.sol(2117)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// @dev Counts uncollected fees for PowerFour.
  > |    uint256 public powerFourFeesToCollect;
    |    
    |    /// @dev Contract activation switch.
  at /home/jiaming/slither_fp_files/out3485.sol(2120)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// @dev Contract activation switch.
  > |    bool public activated_ = false;
    |    
    |    /// @dev Sanity check for maximum and minimum inputs.
  at /home/jiaming/slither_fp_files/out3485.sol(2123)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// @dev Sanity check for maximum and minimum inputs.
  > |    uint256 public minNumber;
    |    uint256 public maxNumber;
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2126)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    /// @dev Sanity check for maximum and minimum inputs.
    |    uint256 public minNumber;
  > |    uint256 public maxNumber;
    |    
    |    /// @dev Gas for Oraclize.
  at /home/jiaming/slither_fp_files/out3485.sol(2127)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// @dev Gas for Oraclize.
  > |    uint32 public gasForOraclize;
    |    
    |    /// @dev Oraclize random Query ID counter.
  at /home/jiaming/slither_fp_files/out3485.sol(2130)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |    
    |    /// @dev Oraclize random Query ID counter.
  > |    uint256 public randomQueryId;
    |
    |    /// @dev Stats - total Ether won.
  at /home/jiaming/slither_fp_files/out3485.sol(2133)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |
    |    /// @dev Stats - total Ether won.
  > |    uint256 public totalEtherWon;
    |
    |    /// @dev Stats - total games played.
  at /home/jiaming/slither_fp_files/out3485.sol(2136)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |
    |    /// @dev Stats - total games played.
  > |    uint256 public totalGamesPlayed;
    |    
    |    /// @dev A mapping form a queryId to the player's address.
  at /home/jiaming/slither_fp_files/out3485.sol(2139)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     * @dev Activates the contract.
    |     */
  > |    function activate() 
    |        external 
    |        onlyCEO {
  at /home/jiaming/slither_fp_files/out3485.sol(2221)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     * @dev Deactivates the contract.
    |     */    
  > |    function deactivate() 
    |        external 
    |        onlyCEO {
  at /home/jiaming/slither_fp_files/out3485.sol(2233)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     * @dev Sets the new CEO address. Only available to the current CFO. 
    |     */
  > |    function setCEO(address _newCEO) 
    |        external 
    |        onlyCEO 
  at /home/jiaming/slither_fp_files/out3485.sol(2245)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     * current CEO. 
    |     */
  > |    function setPowerOneBidPrice(uint256 _newBid) 
    |        external 
    |        onlyCEO 
  at /home/jiaming/slither_fp_files/out3485.sol(2259)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     * current CEO. 
    |     */
  > |    function setPowerOneFeePrice(uint256 _newFee) 
    |        external 
    |        onlyCEO 
  at /home/jiaming/slither_fp_files/out3485.sol(2272)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     * current CEO. 
    |     */
  > |    function setPowerTwoBidPrice(uint256 _newBid) 
    |        external 
    |        onlyCEO 
  at /home/jiaming/slither_fp_files/out3485.sol(2285)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     * current CEO. 
    |     */
  > |    function setPowerTwoFeePrice(uint256 _newFee) 
    |        external 
    |        onlyCEO 
  at /home/jiaming/slither_fp_files/out3485.sol(2298)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     * current CEO. 
    |     */
  > |    function setPowerFourBidPrice(uint256 _newBid) 
    |        external 
    |        onlyCEO 
  at /home/jiaming/slither_fp_files/out3485.sol(2311)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     * current CEO. 
    |     */
  > |    function setPowerFourFeePrice(uint256 _newFee) 
    |        external 
    |        onlyCEO 
  at /home/jiaming/slither_fp_files/out3485.sol(2324)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     * CEO.
    |     */
  > |    function collectFees()
    |        external
    |        onlyCEO
  at /home/jiaming/slither_fp_files/out3485.sol(2470)

[33mWarning[0m for MissingInputValidation in contract 'PowerEtherHelper':
    |     * @dev Player manually withdraws funds if there was a transaction error.
    |     */
  > |    function withdrawPendingTransactions() 
    |        public 
    |        isHuman
  at /home/jiaming/slither_fp_files/out3485.sol(2582)

[33mWarning[0m for TODReceiver in contract 'PowerEtherHelper':
    |            playerFundsToWithdraw[msg.sender] = 0;
    |        
  > |            if (msg.sender.call.value(amount)()) {
    |                
    |                return true;
  at /home/jiaming/slither_fp_files/out3485.sol(2592)

[33mWarning[0m for UnhandledException in contract 'PowerEtherHelper':
    |            require(totalAll <= address(this).balance, "Insufficient funds!");
    |            
  > |            ceoAddress.transfer(totalAll);
    |            
    |            // reset the counters
  at /home/jiaming/slither_fp_files/out3485.sol(2484)

[33mWarning[0m for UnhandledException in contract 'PowerEtherHelper':
    |            playerFundsToWithdraw[msg.sender] = 0;
    |        
  > |            if (msg.sender.call.value(amount)()) {
    |                
    |                return true;
  at /home/jiaming/slither_fp_files/out3485.sol(2592)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PowerEtherHelper':
    |            playerFundsToWithdraw[msg.sender] = 0;
    |        
  > |            if (msg.sender.call.value(amount)()) {
    |                
    |                return true;
  at /home/jiaming/slither_fp_files/out3485.sol(2592)

[31mViolation[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |            
    |            // reset the counters
  > |            powerOneFeesToCollect = 0;
    |            powerTwoFeesToCollect = 0;
    |            powerFourFeesToCollect = 0;
  at /home/jiaming/slither_fp_files/out3485.sol(2487)

[31mViolation[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |            // reset the counters
    |            powerOneFeesToCollect = 0;
  > |            powerTwoFeesToCollect = 0;
    |            powerFourFeesToCollect = 0;
    |            
  at /home/jiaming/slither_fp_files/out3485.sol(2488)

[31mViolation[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |            powerOneFeesToCollect = 0;
    |            powerTwoFeesToCollect = 0;
  > |            powerFourFeesToCollect = 0;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2489)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        if (newOwner != address(0)) owner = newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out3485.sol(1255)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |            uint256 amount = playerFundsToWithdraw[msg.sender];
    |            
  > |            playerFundsToWithdraw[msg.sender] = 0;
    |        
    |            if (msg.sender.call.value(amount)()) {
  at /home/jiaming/slither_fp_files/out3485.sol(2590)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |            
    |            // Can try to refund later if goes wrong.
  > |            playerFundsToWithdraw[msg.sender] = amount;
    |            
    |            return false;
  at /home/jiaming/slither_fp_files/out3485.sol(2599)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |            require(msg.sender != address(0));
    |        
  > |            activated_ = !activated_;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2227)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |            require(msg.sender != address(0));
    |        
  > |            activated_ = false;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2239)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |            require(_newCEO != address(0));
    |
  > |            ceoAddress = _newCEO;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2252)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |        isWithinLimits(_newBid) {
    |            
  > |            powerOneBid = _newBid;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2265)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |        isWithinLimits(_newFee) {
    |            
  > |            powerOneFee = _newFee;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2278)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |        isWithinLimits(_newBid) {
    |            
  > |            powerTwoBid = _newBid;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2291)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |        isWithinLimits(_newFee) {
    |            
  > |            powerTwoFee = _newFee;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2304)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |        isWithinLimits(_newBid) {
    |            
  > |            powerFourBid = _newBid;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2317)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |        isWithinLimits(_newFee) {
    |            
  > |            powerFourFee = _newFee;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2330)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |        isHuman {
    |            
  > |            platformCut = _newPlatformCut;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2342)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |        isHuman {
    |            
  > |            megaJackpotCap = _newCap;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2355)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |        isHuman {
    |            
  > |            megaJackpotFee = _newMegaJackpotFee;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2367)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |        isHuman {
    |            
  > |            gasForOraclize = _newGasLimit;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2379)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |        isHuman {
    |            
  > |            minNumber = _newMinNumber;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2391)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |        isHuman {
    |            
  > |            maxNumber = _newMaxNumber;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2403)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |        onlyCEO {
    |            
  > |            powerOneJackpot += etherToAdd;
    |            emit balanceUpdated(etherToAdd);
    |        
  at /home/jiaming/slither_fp_files/out3485.sol(2548)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |        onlyCEO {
    |            
  > |            powerTwoJackpot += etherToAdd;
    |            emit balanceUpdated(etherToAdd);
    |        
  at /home/jiaming/slither_fp_files/out3485.sol(2561)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerEtherHelper':
    |        onlyCEO {
    |            
  > |            powerFourJackpot += etherToAdd;
    |            emit balanceUpdated(etherToAdd);
    |        
  at /home/jiaming/slither_fp_files/out3485.sol(2574)

[31mViolation[0m for DAO in contract 'PowerFour':
    |            playerFundsToWithdraw[msg.sender] = 0;
    |        
  > |            if (msg.sender.call.value(amount)()) {
    |                
    |                return true;
  at /home/jiaming/slither_fp_files/out3485.sol(2592)

[31mViolation[0m for DAOConstantGas in contract 'PowerFour':
    |            require(totalAll <= address(this).balance, "Insufficient funds!");
    |            
  > |            ceoAddress.transfer(totalAll);
    |            
    |            // reset the counters
  at /home/jiaming/slither_fp_files/out3485.sol(2484)

[33mWarning[0m for LockedEther in contract 'PowerFour':
    |
    |
  > |contract PowerFour is PowerTwo {
    |    
    |    /**
  at /home/jiaming/slither_fp_files/out3485.sol(2953)

[31mViolation[0m for TODAmount in contract 'PowerFour':
    |            require(totalAll <= address(this).balance, "Insufficient funds!");
    |            
  > |            ceoAddress.transfer(totalAll);
    |            
    |            // reset the counters
  at /home/jiaming/slither_fp_files/out3485.sol(2484)

[31mViolation[0m for TODReceiver in contract 'PowerFour':
    |            require(totalAll <= address(this).balance, "Insufficient funds!");
    |            
  > |            ceoAddress.transfer(totalAll);
    |            
    |            // reset the counters
  at /home/jiaming/slither_fp_files/out3485.sol(2484)

[33mWarning[0m for TODReceiver in contract 'PowerFour':
    |            playerFundsToWithdraw[msg.sender] = 0;
    |        
  > |            if (msg.sender.call.value(amount)()) {
    |                
    |                return true;
  at /home/jiaming/slither_fp_files/out3485.sol(2592)

[33mWarning[0m for UnhandledException in contract 'PowerFour':
    |            oraclize_setNetwork(networkID_auto);
    |
  > |        if(address(oraclize) != OAR.getAddress())
    |            oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/slither_fp_files/out3485.sol(312)

[33mWarning[0m for UnhandledException in contract 'PowerFour':
    |
    |        if(address(oraclize) != OAR.getAddress())
  > |            oraclize = OraclizeI(OAR.getAddress());
    |
    |        _;
  at /home/jiaming/slither_fp_files/out3485.sol(313)

[33mWarning[0m for UnhandledException in contract 'PowerFour':
    |    }
    |    function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
  at /home/jiaming/slither_fp_files/out3485.sol(394)

[33mWarning[0m for UnhandledException in contract 'PowerFour':
    |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
  > |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
    |    }
    |    function oraclize_query(string datasource, string arg1, string arg2) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/slither_fp_files/out3485.sol(396)

[33mWarning[0m for UnhandledException in contract 'PowerFour':
    |            require(totalAll <= address(this).balance, "Insufficient funds!");
    |            
  > |            ceoAddress.transfer(totalAll);
    |            
    |            // reset the counters
  at /home/jiaming/slither_fp_files/out3485.sol(2484)

[33mWarning[0m for UnhandledException in contract 'PowerFour':
    |            playerFundsToWithdraw[msg.sender] = 0;
    |        
  > |            if (msg.sender.call.value(amount)()) {
    |                
    |                return true;
  at /home/jiaming/slither_fp_files/out3485.sol(2592)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PowerFour':
    |            oraclize_setNetwork(networkID_auto);
    |
  > |        if(address(oraclize) != OAR.getAddress())
    |            oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/slither_fp_files/out3485.sol(312)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PowerFour':
    |
    |        if(address(oraclize) != OAR.getAddress())
  > |            oraclize = OraclizeI(OAR.getAddress());
    |
    |        _;
  at /home/jiaming/slither_fp_files/out3485.sol(313)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PowerFour':
    |    }
    |    function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
  at /home/jiaming/slither_fp_files/out3485.sol(394)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PowerFour':
    |            require(totalAll <= address(this).balance, "Insufficient funds!");
    |            
  > |            ceoAddress.transfer(totalAll);
    |            
    |            // reset the counters
  at /home/jiaming/slither_fp_files/out3485.sol(2484)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PowerFour':
    |            playerFundsToWithdraw[msg.sender] = 0;
    |        
  > |            if (msg.sender.call.value(amount)()) {
    |                
    |                return true;
  at /home/jiaming/slither_fp_files/out3485.sol(2592)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        if (newOwner != address(0)) owner = newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out3485.sol(1255)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |            require(msg.sender != address(0));
    |        
  > |            activated_ = !activated_;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2227)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |            require(msg.sender != address(0));
    |        
  > |            activated_ = false;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2239)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |            require(_newCEO != address(0));
    |
  > |            ceoAddress = _newCEO;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2252)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |        isWithinLimits(_newBid) {
    |            
  > |            powerOneBid = _newBid;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2265)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |        isWithinLimits(_newFee) {
    |            
  > |            powerOneFee = _newFee;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2278)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |        isWithinLimits(_newBid) {
    |            
  > |            powerTwoBid = _newBid;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2291)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |        isWithinLimits(_newFee) {
    |            
  > |            powerTwoFee = _newFee;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2304)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |        isWithinLimits(_newBid) {
    |            
  > |            powerFourBid = _newBid;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2317)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |        isWithinLimits(_newFee) {
    |            
  > |            powerFourFee = _newFee;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2330)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |        isHuman {
    |            
  > |            platformCut = _newPlatformCut;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2342)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |        isHuman {
    |            
  > |            megaJackpotCap = _newCap;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2355)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |        isHuman {
    |            
  > |            megaJackpotFee = _newMegaJackpotFee;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2367)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |        isHuman {
    |            
  > |            gasForOraclize = _newGasLimit;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2379)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |        isHuman {
    |            
  > |            minNumber = _newMinNumber;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2391)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |        isHuman {
    |            
  > |            maxNumber = _newMaxNumber;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2403)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |            
    |            // reset the counters
  > |            powerOneFeesToCollect = 0;
    |            powerTwoFeesToCollect = 0;
    |            powerFourFeesToCollect = 0;
  at /home/jiaming/slither_fp_files/out3485.sol(2487)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |            // reset the counters
    |            powerOneFeesToCollect = 0;
  > |            powerTwoFeesToCollect = 0;
    |            powerFourFeesToCollect = 0;
    |            
  at /home/jiaming/slither_fp_files/out3485.sol(2488)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |            powerOneFeesToCollect = 0;
    |            powerTwoFeesToCollect = 0;
  > |            powerFourFeesToCollect = 0;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2489)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |        onlyCEO {
    |            
  > |            powerOneJackpot += etherToAdd;
    |            emit balanceUpdated(etherToAdd);
    |        
  at /home/jiaming/slither_fp_files/out3485.sol(2548)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |        onlyCEO {
    |            
  > |            powerTwoJackpot += etherToAdd;
    |            emit balanceUpdated(etherToAdd);
    |        
  at /home/jiaming/slither_fp_files/out3485.sol(2561)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |        onlyCEO {
    |            
  > |            powerFourJackpot += etherToAdd;
    |            emit balanceUpdated(etherToAdd);
    |        
  at /home/jiaming/slither_fp_files/out3485.sol(2574)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |            uint256 amount = playerFundsToWithdraw[msg.sender];
    |            
  > |            playerFundsToWithdraw[msg.sender] = 0;
    |        
    |            if (msg.sender.call.value(amount)()) {
  at /home/jiaming/slither_fp_files/out3485.sol(2590)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |            
    |            // Can try to refund later if goes wrong.
  > |            playerFundsToWithdraw[msg.sender] = amount;
    |            
    |            return false;
  at /home/jiaming/slither_fp_files/out3485.sol(2599)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |            require(msg.value == totalPayment, "Wrong payment value!");
    |            
  > |            randomQueryId += 1;
    |            
    |            powerOneFeesToCollect ++;
  at /home/jiaming/slither_fp_files/out3485.sol(2644)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |            randomQueryId += 1;
    |            
  > |            powerOneFeesToCollect ++;
    |            
    |            // Compose the Oraclize query
  at /home/jiaming/slither_fp_files/out3485.sol(2646)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |            require(msg.value == totalPayment, "Wrong payment value!");
    |            
  > |            randomQueryId += 1;
    |            
    |            powerTwoFeesToCollect ++;
  at /home/jiaming/slither_fp_files/out3485.sol(2803)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |            randomQueryId += 1;
    |            
  > |            powerTwoFeesToCollect ++;
    |            
    |            // Compose the Oraclize query
  at /home/jiaming/slither_fp_files/out3485.sol(2805)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |            require(msg.value == totalPayment, "Wrong payment value!");
    |            
  > |            randomQueryId += 1;
    |            
    |            powerFourFeesToCollect ++;
  at /home/jiaming/slither_fp_files/out3485.sol(2979)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerFour':
    |            randomQueryId += 1;
    |            
  > |            powerFourFeesToCollect ++;
    |            
    |            // Compose the Oraclize query
  at /home/jiaming/slither_fp_files/out3485.sol(2981)

[31mViolation[0m for DAO in contract 'PowerOne':
    |            playerFundsToWithdraw[msg.sender] = 0;
    |        
  > |            if (msg.sender.call.value(amount)()) {
    |                
    |                return true;
  at /home/jiaming/slither_fp_files/out3485.sol(2592)

[31mViolation[0m for DAOConstantGas in contract 'PowerOne':
    |            require(totalAll <= address(this).balance, "Insufficient funds!");
    |            
  > |            ceoAddress.transfer(totalAll);
    |            
    |            // reset the counters
  at /home/jiaming/slither_fp_files/out3485.sol(2484)

[33mWarning[0m for LockedEther in contract 'PowerOne':
    |
    |
  > |contract PowerOne is PowerEtherHelper, usingOraclize {
    |    
    |    /// @dev checks only Oraclize address is calling
  at /home/jiaming/slither_fp_files/out3485.sol(2620)

[31mViolation[0m for TODAmount in contract 'PowerOne':
    |            require(totalAll <= address(this).balance, "Insufficient funds!");
    |            
  > |            ceoAddress.transfer(totalAll);
    |            
    |            // reset the counters
  at /home/jiaming/slither_fp_files/out3485.sol(2484)

[31mViolation[0m for TODReceiver in contract 'PowerOne':
    |            require(totalAll <= address(this).balance, "Insufficient funds!");
    |            
  > |            ceoAddress.transfer(totalAll);
    |            
    |            // reset the counters
  at /home/jiaming/slither_fp_files/out3485.sol(2484)

[33mWarning[0m for TODReceiver in contract 'PowerOne':
    |            playerFundsToWithdraw[msg.sender] = 0;
    |        
  > |            if (msg.sender.call.value(amount)()) {
    |                
    |                return true;
  at /home/jiaming/slither_fp_files/out3485.sol(2592)

[33mWarning[0m for UnhandledException in contract 'PowerOne':
    |            oraclize_setNetwork(networkID_auto);
    |
  > |        if(address(oraclize) != OAR.getAddress())
    |            oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/slither_fp_files/out3485.sol(312)

[33mWarning[0m for UnhandledException in contract 'PowerOne':
    |
    |        if(address(oraclize) != OAR.getAddress())
  > |            oraclize = OraclizeI(OAR.getAddress());
    |
    |        _;
  at /home/jiaming/slither_fp_files/out3485.sol(313)

[33mWarning[0m for UnhandledException in contract 'PowerOne':
    |    }
    |    function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
  at /home/jiaming/slither_fp_files/out3485.sol(394)

[33mWarning[0m for UnhandledException in contract 'PowerOne':
    |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
  > |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
    |    }
    |    function oraclize_query(string datasource, string arg1, string arg2) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/slither_fp_files/out3485.sol(396)

[33mWarning[0m for UnhandledException in contract 'PowerOne':
    |            require(totalAll <= address(this).balance, "Insufficient funds!");
    |            
  > |            ceoAddress.transfer(totalAll);
    |            
    |            // reset the counters
  at /home/jiaming/slither_fp_files/out3485.sol(2484)

[33mWarning[0m for UnhandledException in contract 'PowerOne':
    |            playerFundsToWithdraw[msg.sender] = 0;
    |        
  > |            if (msg.sender.call.value(amount)()) {
    |                
    |                return true;
  at /home/jiaming/slither_fp_files/out3485.sol(2592)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PowerOne':
    |            oraclize_setNetwork(networkID_auto);
    |
  > |        if(address(oraclize) != OAR.getAddress())
    |            oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/slither_fp_files/out3485.sol(312)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PowerOne':
    |
    |        if(address(oraclize) != OAR.getAddress())
  > |            oraclize = OraclizeI(OAR.getAddress());
    |
    |        _;
  at /home/jiaming/slither_fp_files/out3485.sol(313)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PowerOne':
    |    }
    |    function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
  at /home/jiaming/slither_fp_files/out3485.sol(394)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PowerOne':
    |            require(totalAll <= address(this).balance, "Insufficient funds!");
    |            
  > |            ceoAddress.transfer(totalAll);
    |            
    |            // reset the counters
  at /home/jiaming/slither_fp_files/out3485.sol(2484)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PowerOne':
    |            playerFundsToWithdraw[msg.sender] = 0;
    |        
  > |            if (msg.sender.call.value(amount)()) {
    |                
    |                return true;
  at /home/jiaming/slither_fp_files/out3485.sol(2592)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        if (newOwner != address(0)) owner = newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out3485.sol(1255)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |            require(msg.sender != address(0));
    |        
  > |            activated_ = !activated_;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2227)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |            require(msg.sender != address(0));
    |        
  > |            activated_ = false;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2239)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |            require(_newCEO != address(0));
    |
  > |            ceoAddress = _newCEO;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2252)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |        isWithinLimits(_newBid) {
    |            
  > |            powerOneBid = _newBid;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2265)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |        isWithinLimits(_newFee) {
    |            
  > |            powerOneFee = _newFee;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2278)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |        isWithinLimits(_newBid) {
    |            
  > |            powerTwoBid = _newBid;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2291)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |        isWithinLimits(_newFee) {
    |            
  > |            powerTwoFee = _newFee;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2304)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |        isWithinLimits(_newBid) {
    |            
  > |            powerFourBid = _newBid;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2317)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |        isWithinLimits(_newFee) {
    |            
  > |            powerFourFee = _newFee;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2330)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |        isHuman {
    |            
  > |            platformCut = _newPlatformCut;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2342)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |        isHuman {
    |            
  > |            megaJackpotCap = _newCap;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2355)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |        isHuman {
    |            
  > |            megaJackpotFee = _newMegaJackpotFee;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2367)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |        isHuman {
    |            
  > |            gasForOraclize = _newGasLimit;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2379)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |        isHuman {
    |            
  > |            minNumber = _newMinNumber;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2391)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |        isHuman {
    |            
  > |            maxNumber = _newMaxNumber;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2403)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |            
    |            // reset the counters
  > |            powerOneFeesToCollect = 0;
    |            powerTwoFeesToCollect = 0;
    |            powerFourFeesToCollect = 0;
  at /home/jiaming/slither_fp_files/out3485.sol(2487)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |            // reset the counters
    |            powerOneFeesToCollect = 0;
  > |            powerTwoFeesToCollect = 0;
    |            powerFourFeesToCollect = 0;
    |            
  at /home/jiaming/slither_fp_files/out3485.sol(2488)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |            powerOneFeesToCollect = 0;
    |            powerTwoFeesToCollect = 0;
  > |            powerFourFeesToCollect = 0;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2489)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |        onlyCEO {
    |            
  > |            powerOneJackpot += etherToAdd;
    |            emit balanceUpdated(etherToAdd);
    |        
  at /home/jiaming/slither_fp_files/out3485.sol(2548)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |        onlyCEO {
    |            
  > |            powerTwoJackpot += etherToAdd;
    |            emit balanceUpdated(etherToAdd);
    |        
  at /home/jiaming/slither_fp_files/out3485.sol(2561)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |        onlyCEO {
    |            
  > |            powerFourJackpot += etherToAdd;
    |            emit balanceUpdated(etherToAdd);
    |        
  at /home/jiaming/slither_fp_files/out3485.sol(2574)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |            uint256 amount = playerFundsToWithdraw[msg.sender];
    |            
  > |            playerFundsToWithdraw[msg.sender] = 0;
    |        
    |            if (msg.sender.call.value(amount)()) {
  at /home/jiaming/slither_fp_files/out3485.sol(2590)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |            
    |            // Can try to refund later if goes wrong.
  > |            playerFundsToWithdraw[msg.sender] = amount;
    |            
    |            return false;
  at /home/jiaming/slither_fp_files/out3485.sol(2599)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |            require(msg.value == totalPayment, "Wrong payment value!");
    |            
  > |            randomQueryId += 1;
    |            
    |            powerOneFeesToCollect ++;
  at /home/jiaming/slither_fp_files/out3485.sol(2644)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOne':
    |            randomQueryId += 1;
    |            
  > |            powerOneFeesToCollect ++;
    |            
    |            // Compose the Oraclize query
  at /home/jiaming/slither_fp_files/out3485.sol(2646)

[31mViolation[0m for DAO in contract 'PowerTwo':
    |            playerFundsToWithdraw[msg.sender] = 0;
    |        
  > |            if (msg.sender.call.value(amount)()) {
    |                
    |                return true;
  at /home/jiaming/slither_fp_files/out3485.sol(2592)

[31mViolation[0m for DAOConstantGas in contract 'PowerTwo':
    |            require(totalAll <= address(this).balance, "Insufficient funds!");
    |            
  > |            ceoAddress.transfer(totalAll);
    |            
    |            // reset the counters
  at /home/jiaming/slither_fp_files/out3485.sol(2484)

[33mWarning[0m for LockedEther in contract 'PowerTwo':
    |}
    |
  > |contract PowerTwo is PowerOne {
    |    
    |    /**
  at /home/jiaming/slither_fp_files/out3485.sol(2781)

[31mViolation[0m for TODAmount in contract 'PowerTwo':
    |            require(totalAll <= address(this).balance, "Insufficient funds!");
    |            
  > |            ceoAddress.transfer(totalAll);
    |            
    |            // reset the counters
  at /home/jiaming/slither_fp_files/out3485.sol(2484)

[31mViolation[0m for TODReceiver in contract 'PowerTwo':
    |            require(totalAll <= address(this).balance, "Insufficient funds!");
    |            
  > |            ceoAddress.transfer(totalAll);
    |            
    |            // reset the counters
  at /home/jiaming/slither_fp_files/out3485.sol(2484)

[33mWarning[0m for TODReceiver in contract 'PowerTwo':
    |            playerFundsToWithdraw[msg.sender] = 0;
    |        
  > |            if (msg.sender.call.value(amount)()) {
    |                
    |                return true;
  at /home/jiaming/slither_fp_files/out3485.sol(2592)

[33mWarning[0m for UnhandledException in contract 'PowerTwo':
    |            oraclize_setNetwork(networkID_auto);
    |
  > |        if(address(oraclize) != OAR.getAddress())
    |            oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/slither_fp_files/out3485.sol(312)

[33mWarning[0m for UnhandledException in contract 'PowerTwo':
    |
    |        if(address(oraclize) != OAR.getAddress())
  > |            oraclize = OraclizeI(OAR.getAddress());
    |
    |        _;
  at /home/jiaming/slither_fp_files/out3485.sol(313)

[33mWarning[0m for UnhandledException in contract 'PowerTwo':
    |    }
    |    function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
  at /home/jiaming/slither_fp_files/out3485.sol(394)

[33mWarning[0m for UnhandledException in contract 'PowerTwo':
    |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
  > |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
    |    }
    |    function oraclize_query(string datasource, string arg1, string arg2) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/slither_fp_files/out3485.sol(396)

[33mWarning[0m for UnhandledException in contract 'PowerTwo':
    |            require(totalAll <= address(this).balance, "Insufficient funds!");
    |            
  > |            ceoAddress.transfer(totalAll);
    |            
    |            // reset the counters
  at /home/jiaming/slither_fp_files/out3485.sol(2484)

[33mWarning[0m for UnhandledException in contract 'PowerTwo':
    |            playerFundsToWithdraw[msg.sender] = 0;
    |        
  > |            if (msg.sender.call.value(amount)()) {
    |                
    |                return true;
  at /home/jiaming/slither_fp_files/out3485.sol(2592)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PowerTwo':
    |            oraclize_setNetwork(networkID_auto);
    |
  > |        if(address(oraclize) != OAR.getAddress())
    |            oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/slither_fp_files/out3485.sol(312)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PowerTwo':
    |
    |        if(address(oraclize) != OAR.getAddress())
  > |            oraclize = OraclizeI(OAR.getAddress());
    |
    |        _;
  at /home/jiaming/slither_fp_files/out3485.sol(313)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PowerTwo':
    |    }
    |    function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
  at /home/jiaming/slither_fp_files/out3485.sol(394)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PowerTwo':
    |            require(totalAll <= address(this).balance, "Insufficient funds!");
    |            
  > |            ceoAddress.transfer(totalAll);
    |            
    |            // reset the counters
  at /home/jiaming/slither_fp_files/out3485.sol(2484)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PowerTwo':
    |            playerFundsToWithdraw[msg.sender] = 0;
    |        
  > |            if (msg.sender.call.value(amount)()) {
    |                
    |                return true;
  at /home/jiaming/slither_fp_files/out3485.sol(2592)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        if (newOwner != address(0)) owner = newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out3485.sol(1255)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |            require(msg.sender != address(0));
    |        
  > |            activated_ = !activated_;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2227)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |            require(msg.sender != address(0));
    |        
  > |            activated_ = false;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2239)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |            require(_newCEO != address(0));
    |
  > |            ceoAddress = _newCEO;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2252)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |        isWithinLimits(_newBid) {
    |            
  > |            powerOneBid = _newBid;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2265)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |        isWithinLimits(_newFee) {
    |            
  > |            powerOneFee = _newFee;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2278)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |        isWithinLimits(_newBid) {
    |            
  > |            powerTwoBid = _newBid;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2291)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |        isWithinLimits(_newFee) {
    |            
  > |            powerTwoFee = _newFee;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2304)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |        isWithinLimits(_newBid) {
    |            
  > |            powerFourBid = _newBid;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2317)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |        isWithinLimits(_newFee) {
    |            
  > |            powerFourFee = _newFee;
    |        }
    |    
  at /home/jiaming/slither_fp_files/out3485.sol(2330)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |        isHuman {
    |            
  > |            platformCut = _newPlatformCut;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2342)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |        isHuman {
    |            
  > |            megaJackpotCap = _newCap;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2355)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |        isHuman {
    |            
  > |            megaJackpotFee = _newMegaJackpotFee;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2367)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |        isHuman {
    |            
  > |            gasForOraclize = _newGasLimit;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2379)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |        isHuman {
    |            
  > |            minNumber = _newMinNumber;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2391)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |        isHuman {
    |            
  > |            maxNumber = _newMaxNumber;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2403)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |            
    |            // reset the counters
  > |            powerOneFeesToCollect = 0;
    |            powerTwoFeesToCollect = 0;
    |            powerFourFeesToCollect = 0;
  at /home/jiaming/slither_fp_files/out3485.sol(2487)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |            // reset the counters
    |            powerOneFeesToCollect = 0;
  > |            powerTwoFeesToCollect = 0;
    |            powerFourFeesToCollect = 0;
    |            
  at /home/jiaming/slither_fp_files/out3485.sol(2488)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |            powerOneFeesToCollect = 0;
    |            powerTwoFeesToCollect = 0;
  > |            powerFourFeesToCollect = 0;
    |            
    |        }
  at /home/jiaming/slither_fp_files/out3485.sol(2489)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |        onlyCEO {
    |            
  > |            powerOneJackpot += etherToAdd;
    |            emit balanceUpdated(etherToAdd);
    |        
  at /home/jiaming/slither_fp_files/out3485.sol(2548)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |        onlyCEO {
    |            
  > |            powerTwoJackpot += etherToAdd;
    |            emit balanceUpdated(etherToAdd);
    |        
  at /home/jiaming/slither_fp_files/out3485.sol(2561)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |        onlyCEO {
    |            
  > |            powerFourJackpot += etherToAdd;
    |            emit balanceUpdated(etherToAdd);
    |        
  at /home/jiaming/slither_fp_files/out3485.sol(2574)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |            uint256 amount = playerFundsToWithdraw[msg.sender];
    |            
  > |            playerFundsToWithdraw[msg.sender] = 0;
    |        
    |            if (msg.sender.call.value(amount)()) {
  at /home/jiaming/slither_fp_files/out3485.sol(2590)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |            
    |            // Can try to refund later if goes wrong.
  > |            playerFundsToWithdraw[msg.sender] = amount;
    |            
    |            return false;
  at /home/jiaming/slither_fp_files/out3485.sol(2599)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |            require(msg.value == totalPayment, "Wrong payment value!");
    |            
  > |            randomQueryId += 1;
    |            
    |            powerOneFeesToCollect ++;
  at /home/jiaming/slither_fp_files/out3485.sol(2644)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |            randomQueryId += 1;
    |            
  > |            powerOneFeesToCollect ++;
    |            
    |            // Compose the Oraclize query
  at /home/jiaming/slither_fp_files/out3485.sol(2646)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |            require(msg.value == totalPayment, "Wrong payment value!");
    |            
  > |            randomQueryId += 1;
    |            
    |            powerTwoFeesToCollect ++;
  at /home/jiaming/slither_fp_files/out3485.sol(2803)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerTwo':
    |            randomQueryId += 1;
    |            
  > |            powerTwoFeesToCollect ++;
    |            
    |            // Compose the Oraclize query
  at /home/jiaming/slither_fp_files/out3485.sol(2805)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/slither_fp_files/out3485.sol(1260)

[33mWarning[0m for LockedEther in contract 'strings':
    |}
    |
  > |library strings {
    |    struct slice {
    |        uint _len;
  at /home/jiaming/slither_fp_files/out3485.sol(1302)

[33mWarning[0m for LockedEther in contract 'usingOraclize':
    | */
    |
  > |contract usingOraclize {
    |    uint constant day = 60*60*24;
    |    uint constant week = 60*60*24*7;
  at /home/jiaming/slither_fp_files/out3485.sol(289)


