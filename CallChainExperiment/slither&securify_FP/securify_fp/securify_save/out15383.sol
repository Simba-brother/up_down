Processing contract: /home/jiaming/slither_fp_files/out15383.sol:AbstractPaymentEscrow
Processing contract: /home/jiaming/slither_fp_files/out15383.sol:AbstractSingularDTVFund
Processing contract: /home/jiaming/slither_fp_files/out15383.sol:AbstractSingularDTVToken
Processing contract: /home/jiaming/slither_fp_files/out15383.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15383.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15383.sol:SingularDTVFund
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15383.sol:SingularDTVLaunch
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15383.sol:SingularDTVToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15383.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15383.sol:Token
Processing contract: /home/jiaming/slither_fp_files/out15383.sol:TokitDeployer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15383.sol:TokitRegistry
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/slither_fp_files/out15383.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out15383.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/slither_fp_files/out15383.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/slither_fp_files/out15383.sol(85)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/slither_fp_files/out15383.sol(93)

[33mWarning[0m for DAO in contract 'SingularDTVFund':
    |    /// @param forAddress user's address.
    |    function calcReward(address forAddress) private returns (uint) {
  > |        return singularDTVToken.balanceOf(forAddress) * (totalReward - rewardAtTimeOfWithdraw[forAddress]) / singularDTVToken.totalSupply();
    |    }
    |
  at /home/jiaming/slither_fp_files/out15383.sol(291)

[33mWarning[0m for DAOConstantGas in contract 'SingularDTVFund':
    |        rewardAtTimeOfWithdraw[msg.sender] = totalReward;
    |        owed[msg.sender] = 0;
  > |        if (value > 0 && !msg.sender.send(value)) {
    |            revert();
    |        }
  at /home/jiaming/slither_fp_files/out15383.sol(302)

[33mWarning[0m for LockedEther in contract 'SingularDTVFund':
    |/// @author Stefan George - <[email protected]>
    |/// @author Milad Mostavi - <[email protected]>
  > |contract SingularDTVFund {
    |    string public version = "0.1.0";
    |
  at /home/jiaming/slither_fp_files/out15383.sol(247)

[31mViolation[0m for MissingInputValidation in contract 'SingularDTVFund':
    |
    |    // User's address => Reward at time of withdraw
  > |    mapping (address => uint) public rewardAtTimeOfWithdraw;
    |
    |    // User's address => Reward which can be withdrawn
  at /home/jiaming/slither_fp_files/out15383.sol(262)

[31mViolation[0m for MissingInputValidation in contract 'SingularDTVFund':
    |
    |    // User's address => Reward which can be withdrawn
  > |    mapping (address => uint) public owed;
    |
    |    modifier onlyOwner() {
  at /home/jiaming/slither_fp_files/out15383.sol(265)

[31mViolation[0m for MissingInputValidation in contract 'SingularDTVFund':
    |    /// @dev Credits reward to owed balance.
    |    /// @param forAddress user's address.
  > |    function softWithdrawRewardFor(address forAddress)
    |        external
    |        returns (uint)
  at /home/jiaming/slither_fp_files/out15383.sol(310)

[31mViolation[0m for MissingInputValidation in contract 'SingularDTVFund':
    |    /// @dev Setup function sets external token address.
    |    /// @param singularDTVTokenAddress Token address.
  > |    function setup(address singularDTVTokenAddress)
    |        external
    |        onlyOwner
  at /home/jiaming/slither_fp_files/out15383.sol(322)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVFund':
    |/// @author Milad Mostavi - <[email protected]>
    |contract SingularDTVFund {
  > |    string public version = "0.1.0";
    |
    |    /*
  at /home/jiaming/slither_fp_files/out15383.sol(248)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVFund':
    |     *  External contracts
    |     */
  > |    AbstractSingularDTVToken public singularDTVToken;
    |
    |    /*
  at /home/jiaming/slither_fp_files/out15383.sol(253)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVFund':
    |     *  Storage
    |     */
  > |    address public owner;
    |    uint public totalReward;
    |
  at /home/jiaming/slither_fp_files/out15383.sol(258)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVFund':
    |     */
    |    address public owner;
  > |    uint public totalReward;
    |
    |    // User's address => Reward at time of withdraw
  at /home/jiaming/slither_fp_files/out15383.sol(259)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVFund':
    |     */
    |    /// @dev Deposits reward. Returns success.
  > |    function depositReward()
    |        public
    |        payable
  at /home/jiaming/slither_fp_files/out15383.sol(279)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVFund':
    |    /// @dev Withdraws reward for user. Returns reward.
    |    /// @param forAddress user's address.
  > |    function calcReward(address forAddress) private returns (uint) {
    |        return singularDTVToken.balanceOf(forAddress) * (totalReward - rewardAtTimeOfWithdraw[forAddress]) / singularDTVToken.totalSupply();
    |    }
  at /home/jiaming/slither_fp_files/out15383.sol(290)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVFund':
    |
    |    /// @dev Withdraws reward for user. Returns reward.
  > |    function withdrawReward()
    |        public
    |        returns (uint)
  at /home/jiaming/slither_fp_files/out15383.sol(295)

[33mWarning[0m for TODReceiver in contract 'SingularDTVFund':
    |        rewardAtTimeOfWithdraw[msg.sender] = totalReward;
    |        owed[msg.sender] = 0;
  > |        if (value > 0 && !msg.sender.send(value)) {
    |            revert();
    |        }
  at /home/jiaming/slither_fp_files/out15383.sol(302)

[33mWarning[0m for UnhandledException in contract 'SingularDTVFund':
    |    /// @param forAddress user's address.
    |    function calcReward(address forAddress) private returns (uint) {
  > |        return singularDTVToken.balanceOf(forAddress) * (totalReward - rewardAtTimeOfWithdraw[forAddress]) / singularDTVToken.totalSupply();
    |    }
    |
  at /home/jiaming/slither_fp_files/out15383.sol(291)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SingularDTVFund':
    |    /// @param forAddress user's address.
    |    function calcReward(address forAddress) private returns (uint) {
  > |        return singularDTVToken.balanceOf(forAddress) * (totalReward - rewardAtTimeOfWithdraw[forAddress]) / singularDTVToken.totalSupply();
    |    }
    |
  at /home/jiaming/slither_fp_files/out15383.sol(291)

[31mViolation[0m for UnrestrictedWrite in contract 'SingularDTVFund':
    |        returns (bool)
    |    {
  > |        totalReward += msg.value;
    |        return true;
    |    }
  at /home/jiaming/slither_fp_files/out15383.sol(284)

[31mViolation[0m for UnrestrictedWrite in contract 'SingularDTVFund':
    |    {
    |        uint value = calcReward(msg.sender) + owed[msg.sender];
  > |        rewardAtTimeOfWithdraw[msg.sender] = totalReward;
    |        owed[msg.sender] = 0;
    |        if (value > 0 && !msg.sender.send(value)) {
  at /home/jiaming/slither_fp_files/out15383.sol(300)

[31mViolation[0m for UnrestrictedWrite in contract 'SingularDTVFund':
    |        uint value = calcReward(msg.sender) + owed[msg.sender];
    |        rewardAtTimeOfWithdraw[msg.sender] = totalReward;
  > |        owed[msg.sender] = 0;
    |        if (value > 0 && !msg.sender.send(value)) {
    |            revert();
  at /home/jiaming/slither_fp_files/out15383.sol(301)

[31mViolation[0m for UnrestrictedWrite in contract 'SingularDTVFund':
    |    {
    |        uint value = calcReward(forAddress);
  > |        rewardAtTimeOfWithdraw[forAddress] = totalReward;
    |        owed[forAddress] += value;
    |        return value;
  at /home/jiaming/slither_fp_files/out15383.sol(315)

[31mViolation[0m for UnrestrictedWrite in contract 'SingularDTVFund':
    |        uint value = calcReward(forAddress);
    |        rewardAtTimeOfWithdraw[forAddress] = totalReward;
  > |        owed[forAddress] += value;
    |        return value;
    |    }
  at /home/jiaming/slither_fp_files/out15383.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularDTVFund':
    |    {
    |        if (address(singularDTVToken) == 0) {
  > |            singularDTVToken = AbstractSingularDTVToken(singularDTVTokenAddress);
    |            return true;
    |        }
  at /home/jiaming/slither_fp_files/out15383.sol(328)

[33mWarning[0m for DAOConstantGas in contract 'SingularDTVLaunch':
    |    {
    |        if (fundBalance > this.balance) {
  > |            if (this.balance > 0 && !SingularDTVWorkshop.send(this.balance)) {
    |                revert();
    |            }
  at /home/jiaming/slither_fp_files/out15383.sol(597)

[33mWarning[0m for DAOConstantGas in contract 'SingularDTVLaunch':
    |        // Send ETH back to user.
    |        if (contribution > 0) {
  > |            msg.sender.transfer(contribution);
    |        }
    |        checkInvariants();
  at /home/jiaming/slither_fp_files/out15383.sol(673)

[33mWarning[0m for DAOConstantGas in contract 'SingularDTVLaunch':
    |
    |        uint networkFee = value * SingularDTVWorkshopFee / 100;
  > |        workshop.transfer(value - networkFee);
    |        SingularDTVWorkshop.transfer(networkFee);
    |
  at /home/jiaming/slither_fp_files/out15383.sol(692)

[33mWarning[0m for DAOConstantGas in contract 'SingularDTVLaunch':
    |        uint networkFee = value * SingularDTVWorkshopFee / 100;
    |        workshop.transfer(value - networkFee);
  > |        SingularDTVWorkshop.transfer(networkFee);
    |
    |        uint remainingTokens = CAP - tokensSent;
  at /home/jiaming/slither_fp_files/out15383.sol(693)

[33mWarning[0m for LockedEther in contract 'SingularDTVLaunch':
    |/// @author Razvan Pop - <[email protected]>
    |/// @author Milad Mostavi - <[email protected]>
  > |contract SingularDTVLaunch {
    |    string public version = "0.1.0";
    |
  at /home/jiaming/slither_fp_files/out15383.sol(497)

[31mViolation[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |
    |    // participant address => value in Wei
  > |    mapping (address => uint) public contributions;
    |
    |    // participant address => token amount in wei scale
  at /home/jiaming/slither_fp_files/out15383.sol(538)

[31mViolation[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |
    |    // participant address => token amount in wei scale
  > |    mapping (address => uint) public sentTokens;
    |
    |    // Initialize stage
  at /home/jiaming/slither_fp_files/out15383.sol(541)

[31mViolation[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |    /// @dev Sets token value in Wei.
    |    /// @param valueInWei New value.
  > |    function changeValuePerToken(uint valueInWei)
    |        public
    |        onlyOwner
  at /home/jiaming/slither_fp_files/out15383.sol(722)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |/// @author Milad Mostavi - <[email protected]>
    |contract SingularDTVLaunch {
  > |    string public version = "0.1.0";
    |
    |    event Contributed(address indexed contributor, uint contribution, uint tokens);
  at /home/jiaming/slither_fp_files/out15383.sol(498)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |     *  External contracts
    |     */
  > |    AbstractSingularDTVToken public singularDTVToken;
    |    address public workshop;
    |    address public SingularDTVWorkshop = 0xc78310231aA53bD3D0FEA2F8c705C67730929D8f;
  at /home/jiaming/slither_fp_files/out15383.sol(505)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |     */
    |    AbstractSingularDTVToken public singularDTVToken;
  > |    address public workshop;
    |    address public SingularDTVWorkshop = 0xc78310231aA53bD3D0FEA2F8c705C67730929D8f;
    |    uint public SingularDTVWorkshopFee;
  at /home/jiaming/slither_fp_files/out15383.sol(506)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |    AbstractSingularDTVToken public singularDTVToken;
    |    address public workshop;
  > |    address public SingularDTVWorkshop = 0xc78310231aA53bD3D0FEA2F8c705C67730929D8f;
    |    uint public SingularDTVWorkshopFee;
    |
  at /home/jiaming/slither_fp_files/out15383.sol(507)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |    address public workshop;
    |    address public SingularDTVWorkshop = 0xc78310231aA53bD3D0FEA2F8c705C67730929D8f;
  > |    uint public SingularDTVWorkshopFee;
    |
    |    /*
  at /home/jiaming/slither_fp_files/out15383.sol(508)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |     *  Constants
    |     */
  > |    uint public CAP; // in wei scale of tokens
    |    uint public DURATION; // in seconds
    |    uint public TOKEN_TARGET; // Goal threshold in wei scale of tokens
  at /home/jiaming/slither_fp_files/out15383.sol(513)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |     */
    |    uint public CAP; // in wei scale of tokens
  > |    uint public DURATION; // in seconds
    |    uint public TOKEN_TARGET; // Goal threshold in wei scale of tokens
    |
  at /home/jiaming/slither_fp_files/out15383.sol(514)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |    uint public CAP; // in wei scale of tokens
    |    uint public DURATION; // in seconds
  > |    uint public TOKEN_TARGET; // Goal threshold in wei scale of tokens
    |
    |    /*
  at /home/jiaming/slither_fp_files/out15383.sol(515)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |     *  Storage
    |     */
  > |    address public owner;
    |    uint public startDate;
    |    uint public fundBalance;
  at /home/jiaming/slither_fp_files/out15383.sol(531)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |     */
    |    address public owner;
  > |    uint public startDate;
    |    uint public fundBalance;
    |    uint public valuePerToken; //in wei
  at /home/jiaming/slither_fp_files/out15383.sol(532)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |    address public owner;
    |    uint public startDate;
  > |    uint public fundBalance;
    |    uint public valuePerToken; //in wei
    |    uint public tokensSent;
  at /home/jiaming/slither_fp_files/out15383.sol(533)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |    uint public startDate;
    |    uint public fundBalance;
  > |    uint public valuePerToken; //in wei
    |    uint public tokensSent;
    |
  at /home/jiaming/slither_fp_files/out15383.sol(534)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |    uint public fundBalance;
    |    uint public valuePerToken; //in wei
  > |    uint public tokensSent;
    |
    |    // participant address => value in Wei
  at /home/jiaming/slither_fp_files/out15383.sol(535)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |
    |    // Initialize stage
  > |    Stages public stage = Stages.Deployed;
    |
    |    modifier onlyOwner() {
  at /home/jiaming/slither_fp_files/out15383.sol(544)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |     */
    |    /// dev Validates invariants.
  > |    function checkInvariants() constant internal {
    |        if (fundBalance > this.balance) {
    |            revert();
  at /home/jiaming/slither_fp_files/out15383.sol(585)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |
    |    /// @dev Can be triggered if an invariant fails.
  > |    function emergencyCall()
    |        public
    |        returns (bool)
  at /home/jiaming/slither_fp_files/out15383.sol(592)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |
    |    /// @dev Allows user to create tokens if token creation is still going and cap not reached. Returns token count.
  > |    function fund()
    |        public
    |        timedTransitions
  at /home/jiaming/slither_fp_files/out15383.sol(606)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |
    |    /// @dev Allows user to withdraw ETH if token creation period ended and target was not reached. Returns contribution.
  > |    function withdrawContribution()
    |        public
    |        timedTransitions
  at /home/jiaming/slither_fp_files/out15383.sol(654)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |
    |    /// @dev Withdraws ETH to workshop address. Returns success.
  > |    function withdrawForWorkshop()
    |        public
    |        timedTransitions
  at /home/jiaming/slither_fp_files/out15383.sol(680)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |
    |    /// @dev Allows owner to get back unsent tokens in case of launch failure (EndedAndGoalNotReached).
  > |    function withdrawUnsentTokensForOwner()
    |        public
    |        timedTransitions
  at /home/jiaming/slither_fp_files/out15383.sol(705)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |    // It is not marked as constant because timedTransitions modifier is altering state and constant is not yet enforced by solc.
    |    /// @dev returns correct stage, even if a function with timedTransitions modifier has not yet been called successfully.
  > |    function updateStage()
    |        public
    |        timedTransitions
  at /home/jiaming/slither_fp_files/out15383.sol(735)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVLaunch':
    |    }
    |
  > |    function start()
    |        public
    |        onlyOwner
  at /home/jiaming/slither_fp_files/out15383.sol(743)

[31mViolation[0m for TODAmount in contract 'SingularDTVLaunch':
    |    {
    |        if (fundBalance > this.balance) {
  > |            if (this.balance > 0 && !SingularDTVWorkshop.send(this.balance)) {
    |                revert();
    |            }
  at /home/jiaming/slither_fp_files/out15383.sol(597)

[31mViolation[0m for TODAmount in contract 'SingularDTVLaunch':
    |        uint contribution = (tokenCount * valuePerToken) / (10**18); // Ether spent by user.
    |        // Send change back to user.
  > |        if (msg.value > contribution && !msg.sender.send(msg.value - contribution)) {
    |            revert();
    |        }
  at /home/jiaming/slither_fp_files/out15383.sol(623)

[31mViolation[0m for TODAmount in contract 'SingularDTVLaunch':
    |
    |        uint networkFee = value * SingularDTVWorkshopFee / 100;
  > |        workshop.transfer(value - networkFee);
    |        SingularDTVWorkshop.transfer(networkFee);
    |
  at /home/jiaming/slither_fp_files/out15383.sol(692)

[31mViolation[0m for TODAmount in contract 'SingularDTVLaunch':
    |        uint networkFee = value * SingularDTVWorkshopFee / 100;
    |        workshop.transfer(value - networkFee);
  > |        SingularDTVWorkshop.transfer(networkFee);
    |
    |        uint remainingTokens = CAP - tokensSent;
  at /home/jiaming/slither_fp_files/out15383.sol(693)

[33mWarning[0m for TODReceiver in contract 'SingularDTVLaunch':
    |        uint contribution = (tokenCount * valuePerToken) / (10**18); // Ether spent by user.
    |        // Send change back to user.
  > |        if (msg.value > contribution && !msg.sender.send(msg.value - contribution)) {
    |            revert();
    |        }
  at /home/jiaming/slither_fp_files/out15383.sol(623)

[33mWarning[0m for TODReceiver in contract 'SingularDTVLaunch':
    |        // Send ETH back to user.
    |        if (contribution > 0) {
  > |            msg.sender.transfer(contribution);
    |        }
    |        checkInvariants();
  at /home/jiaming/slither_fp_files/out15383.sol(673)

[33mWarning[0m for UnhandledException in contract 'SingularDTVLaunch':
    |        contributions[msg.sender] += contribution;
    |        sentTokens[msg.sender] += tokenCount;
  > |        if (!singularDTVToken.transfer(msg.sender, tokenCount)) {
    |            // Tokens could not be issued.
    |            revert();
  at /home/jiaming/slither_fp_files/out15383.sol(630)

[33mWarning[0m for UnhandledException in contract 'SingularDTVLaunch':
    |        uint tokensReceived = sentTokens[msg.sender];
    |        sentTokens[msg.sender] = 0;
  > |        if (!singularDTVToken.transferFrom(msg.sender, owner, tokensReceived)) {
    |            revert();
    |        }
  at /home/jiaming/slither_fp_files/out15383.sol(663)

[33mWarning[0m for UnhandledException in contract 'SingularDTVLaunch':
    |        // Send ETH back to user.
    |        if (contribution > 0) {
  > |            msg.sender.transfer(contribution);
    |        }
    |        checkInvariants();
  at /home/jiaming/slither_fp_files/out15383.sol(673)

[33mWarning[0m for UnhandledException in contract 'SingularDTVLaunch':
    |
    |        uint networkFee = value * SingularDTVWorkshopFee / 100;
  > |        workshop.transfer(value - networkFee);
    |        SingularDTVWorkshop.transfer(networkFee);
    |
  at /home/jiaming/slither_fp_files/out15383.sol(692)

[33mWarning[0m for UnhandledException in contract 'SingularDTVLaunch':
    |        uint networkFee = value * SingularDTVWorkshopFee / 100;
    |        workshop.transfer(value - networkFee);
  > |        SingularDTVWorkshop.transfer(networkFee);
    |
    |        uint remainingTokens = CAP - tokensSent;
  at /home/jiaming/slither_fp_files/out15383.sol(693)

[33mWarning[0m for UnhandledException in contract 'SingularDTVLaunch':
    |
    |        uint remainingTokens = CAP - tokensSent;
  > |        if (remainingTokens > 0 && !singularDTVToken.transfer(owner, remainingTokens)) {
    |            revert();
    |        }
  at /home/jiaming/slither_fp_files/out15383.sol(696)

[33mWarning[0m for UnhandledException in contract 'SingularDTVLaunch':
    |    {
    |        uint remainingTokens = CAP - tokensSent;
  > |        if (remainingTokens > 0 && !singularDTVToken.transfer(owner, remainingTokens)) {
    |            revert();
    |        }
  at /home/jiaming/slither_fp_files/out15383.sol(712)

[33mWarning[0m for UnhandledException in contract 'SingularDTVLaunch':
    |        returns (uint)
    |    {
  > |        if (!singularDTVToken.transferFrom(msg.sender, this, CAP)) {
    |            revert();
    |        }
  at /home/jiaming/slither_fp_files/out15383.sol(749)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SingularDTVLaunch':
    |        contributions[msg.sender] += contribution;
    |        sentTokens[msg.sender] += tokenCount;
  > |        if (!singularDTVToken.transfer(msg.sender, tokenCount)) {
    |            // Tokens could not be issued.
    |            revert();
  at /home/jiaming/slither_fp_files/out15383.sol(630)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SingularDTVLaunch':
    |        uint tokensReceived = sentTokens[msg.sender];
    |        sentTokens[msg.sender] = 0;
  > |        if (!singularDTVToken.transferFrom(msg.sender, owner, tokensReceived)) {
    |            revert();
    |        }
  at /home/jiaming/slither_fp_files/out15383.sol(663)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SingularDTVLaunch':
    |
    |        uint remainingTokens = CAP - tokensSent;
  > |        if (remainingTokens > 0 && !singularDTVToken.transfer(owner, remainingTokens)) {
    |            revert();
    |        }
  at /home/jiaming/slither_fp_files/out15383.sol(696)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SingularDTVLaunch':
    |    {
    |        uint remainingTokens = CAP - tokensSent;
  > |        if (remainingTokens > 0 && !singularDTVToken.transfer(owner, remainingTokens)) {
    |            revert();
    |        }
  at /home/jiaming/slither_fp_files/out15383.sol(712)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SingularDTVLaunch':
    |        returns (uint)
    |    {
  > |        if (!singularDTVToken.transferFrom(msg.sender, this, CAP)) {
    |            revert();
    |        }
  at /home/jiaming/slither_fp_files/out15383.sol(749)

[31mViolation[0m for UnrestrictedWrite in contract 'SingularDTVLaunch':
    |        if (timeElapsed >= DURATION) {
    |            if (stage == Stages.GoingAndGoalNotReached) {
  > |                stage = Stages.EndedAndGoalNotReached;
    |            } else if (stage == Stages.GoingAndGoalReached) {
    |                stage = Stages.EndedAndGoalReached;
  at /home/jiaming/slither_fp_files/out15383.sol(573)

[31mViolation[0m for UnrestrictedWrite in contract 'SingularDTVLaunch':
    |                stage = Stages.EndedAndGoalNotReached;
    |            } else if (stage == Stages.GoingAndGoalReached) {
  > |                stage = Stages.EndedAndGoalReached;
    |            }
    |        }
  at /home/jiaming/slither_fp_files/out15383.sol(575)

[31mViolation[0m for UnrestrictedWrite in contract 'SingularDTVLaunch':
    |            tokenCount = CAP - tokensSent;
    |        }
  > |        tokensSent += tokenCount;
    |
    |        uint contribution = (tokenCount * valuePerToken) / (10**18); // Ether spent by user.
  at /home/jiaming/slither_fp_files/out15383.sol(619)

[31mViolation[0m for UnrestrictedWrite in contract 'SingularDTVLaunch':
    |        }
    |        // Update fund and user's balance and total supply of tokens.
  > |        fundBalance += contribution;
    |        contributions[msg.sender] += contribution;
    |        sentTokens[msg.sender] += tokenCount;
  at /home/jiaming/slither_fp_files/out15383.sol(627)

[31mViolation[0m for UnrestrictedWrite in contract 'SingularDTVLaunch':
    |        if (stage == Stages.GoingAndGoalNotReached) {
    |            if (tokensSent >= TOKEN_TARGET) {
  > |                stage = Stages.GoingAndGoalReached;
    |            }
    |        }
  at /home/jiaming/slither_fp_files/out15383.sol(637)

[31mViolation[0m for UnrestrictedWrite in contract 'SingularDTVLaunch':
    |        if (stage == Stages.GoingAndGoalReached) {
    |            if (tokensSent == CAP) {
  > |                stage = Stages.EndedAndGoalReached;
    |            }
    |        }
  at /home/jiaming/slither_fp_files/out15383.sol(643)

[31mViolation[0m for UnrestrictedWrite in contract 'SingularDTVLaunch':
    |        uint contribution = contributions[msg.sender];
    |        contributions[msg.sender] = 0;
  > |        fundBalance -= contribution;
    |        // Send ETH back to user.
    |        if (contribution > 0) {
  at /home/jiaming/slither_fp_files/out15383.sol(670)

[31mViolation[0m for UnrestrictedWrite in contract 'SingularDTVLaunch':
    |    {
    |        uint value = fundBalance;
  > |        fundBalance = 0;
    |
    |        require(value > 0);
  at /home/jiaming/slither_fp_files/out15383.sol(687)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularDTVLaunch':
    |        // Update fund and user's balance and total supply of tokens.
    |        fundBalance += contribution;
  > |        contributions[msg.sender] += contribution;
    |        sentTokens[msg.sender] += tokenCount;
    |        if (!singularDTVToken.transfer(msg.sender, tokenCount)) {
  at /home/jiaming/slither_fp_files/out15383.sol(628)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularDTVLaunch':
    |        fundBalance += contribution;
    |        contributions[msg.sender] += contribution;
  > |        sentTokens[msg.sender] += tokenCount;
    |        if (!singularDTVToken.transfer(msg.sender, tokenCount)) {
    |            // Tokens could not be issued.
  at /home/jiaming/slither_fp_files/out15383.sol(629)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularDTVLaunch':
    |        // We get back the tokens from the contributor before giving back his contribution
    |        uint tokensReceived = sentTokens[msg.sender];
  > |        sentTokens[msg.sender] = 0;
    |        if (!singularDTVToken.transferFrom(msg.sender, owner, tokensReceived)) {
    |            revert();
  at /home/jiaming/slither_fp_files/out15383.sol(662)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularDTVLaunch':
    |        // Update fund's and user's balance and total supply of tokens.
    |        uint contribution = contributions[msg.sender];
  > |        contributions[msg.sender] = 0;
    |        fundBalance -= contribution;
    |        // Send ETH back to user.
  at /home/jiaming/slither_fp_files/out15383.sol(669)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularDTVLaunch':
    |        returns (bool)
    |    {
  > |        valuePerToken = valueInWei;
    |        return true;
    |    }
  at /home/jiaming/slither_fp_files/out15383.sol(728)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularDTVLaunch':
    |        }
    |
  > |        startDate = now;
    |        stage = Stages.GoingAndGoalNotReached;
    |
  at /home/jiaming/slither_fp_files/out15383.sol(753)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularDTVLaunch':
    |
    |        startDate = now;
  > |        stage = Stages.GoingAndGoalNotReached;
    |
    |        checkInvariants();
  at /home/jiaming/slither_fp_files/out15383.sol(754)

[33mWarning[0m for LockedEther in contract 'SingularDTVToken':
    |/// @author Stefan George - <[email protected]>
    |/// @author Milad Mostavi - <[email protected]>
  > |contract SingularDTVToken is StandardToken {
    |    string public version = "0.1.0";
    |
  at /home/jiaming/slither_fp_files/out15383.sol(423)

[31mViolation[0m for MissingInputValidation in contract 'SingularDTVToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/slither_fp_files/out15383.sol(384)

[31mViolation[0m for MissingInputValidation in contract 'SingularDTVToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/slither_fp_files/out15383.sol(388)

[31mViolation[0m for MissingInputValidation in contract 'SingularDTVToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/slither_fp_files/out15383.sol(394)

[31mViolation[0m for MissingInputValidation in contract 'SingularDTVToken':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/slither_fp_files/out15383.sol(399)

[31mViolation[0m for MissingInputValidation in contract 'SingularDTVToken':
    |    /// @param to Address of token receiver.
    |    /// @param value Number of tokens to transfer.
  > |    function transfer(address to, uint256 value)
    |        returns (bool)
    |    {
  at /home/jiaming/slither_fp_files/out15383.sol(441)

[31mViolation[0m for MissingInputValidation in contract 'SingularDTVToken':
    |    /// @param to Address to where tokens are sent.
    |    /// @param value Number of tokens to transfer.
  > |    function transferFrom(address from, address to, uint256 value)
    |        returns (bool)
    |    {
  at /home/jiaming/slither_fp_files/out15383.sol(454)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/slither_fp_files/out15383.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/slither_fp_files/out15383.sol(361)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/slither_fp_files/out15383.sol(373)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVToken':
    |/// @author Milad Mostavi - <[email protected]>
    |contract SingularDTVToken is StandardToken {
  > |    string public version = "0.1.0";
    |
    |    /*
  at /home/jiaming/slither_fp_files/out15383.sol(424)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVToken':
    |     *  External contracts
    |     */
  > |    AbstractSingularDTVFund public singularDTVFund;
    |
    |    /*
  at /home/jiaming/slither_fp_files/out15383.sol(429)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVToken':
    |     *  Token meta data
    |     */
  > |    string public name;
    |    string public symbol;
    |    uint8 public constant decimals = 18;
  at /home/jiaming/slither_fp_files/out15383.sol(434)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVToken':
    |     */
    |    string public name;
  > |    string public symbol;
    |    uint8 public constant decimals = 18;
    |
  at /home/jiaming/slither_fp_files/out15383.sol(435)

[33mWarning[0m for MissingInputValidation in contract 'SingularDTVToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public constant decimals = 18;
    |
    |    /// @dev Transfers sender's tokens to a given address. Returns success.
  at /home/jiaming/slither_fp_files/out15383.sol(436)

[33mWarning[0m for UnhandledException in contract 'SingularDTVToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/slither_fp_files/out15383.sol(406)

[33mWarning[0m for UnhandledException in contract 'SingularDTVToken':
    |    {
    |        // Both parties withdraw their reward first
  > |        singularDTVFund.softWithdrawRewardFor(msg.sender);
    |        singularDTVFund.softWithdrawRewardFor(to);
    |        return super.transfer(to, value);
  at /home/jiaming/slither_fp_files/out15383.sol(445)

[33mWarning[0m for UnhandledException in contract 'SingularDTVToken':
    |        // Both parties withdraw their reward first
    |        singularDTVFund.softWithdrawRewardFor(msg.sender);
  > |        singularDTVFund.softWithdrawRewardFor(to);
    |        return super.transfer(to, value);
    |    }
  at /home/jiaming/slither_fp_files/out15383.sol(446)

[33mWarning[0m for UnhandledException in contract 'SingularDTVToken':
    |    {
    |        // Both parties withdraw their reward first
  > |        singularDTVFund.softWithdrawRewardFor(from);
    |        singularDTVFund.softWithdrawRewardFor(to);
    |        return super.transferFrom(from, to, value);
  at /home/jiaming/slither_fp_files/out15383.sol(458)

[33mWarning[0m for UnhandledException in contract 'SingularDTVToken':
    |        // Both parties withdraw their reward first
    |        singularDTVFund.softWithdrawRewardFor(from);
  > |        singularDTVFund.softWithdrawRewardFor(to);
    |        return super.transferFrom(from, to, value);
    |    }
  at /home/jiaming/slither_fp_files/out15383.sol(459)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SingularDTVToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/slither_fp_files/out15383.sol(406)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SingularDTVToken':
    |    {
    |        // Both parties withdraw their reward first
  > |        singularDTVFund.softWithdrawRewardFor(msg.sender);
    |        singularDTVFund.softWithdrawRewardFor(to);
    |        return super.transfer(to, value);
  at /home/jiaming/slither_fp_files/out15383.sol(445)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SingularDTVToken':
    |        // Both parties withdraw their reward first
    |        singularDTVFund.softWithdrawRewardFor(msg.sender);
  > |        singularDTVFund.softWithdrawRewardFor(to);
    |        return super.transfer(to, value);
    |    }
  at /home/jiaming/slither_fp_files/out15383.sol(446)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SingularDTVToken':
    |    {
    |        // Both parties withdraw their reward first
  > |        singularDTVFund.softWithdrawRewardFor(from);
    |        singularDTVFund.softWithdrawRewardFor(to);
    |        return super.transferFrom(from, to, value);
  at /home/jiaming/slither_fp_files/out15383.sol(458)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SingularDTVToken':
    |        // Both parties withdraw their reward first
    |        singularDTVFund.softWithdrawRewardFor(from);
  > |        singularDTVFund.softWithdrawRewardFor(to);
    |        return super.transferFrom(from, to, value);
    |    }
  at /home/jiaming/slither_fp_files/out15383.sol(459)

[31mViolation[0m for UnrestrictedWrite in contract 'SingularDTVToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out15383.sol(367)

[31mViolation[0m for UnrestrictedWrite in contract 'SingularDTVToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out15383.sol(368)

[31mViolation[0m for UnrestrictedWrite in contract 'SingularDTVToken':
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/slither_fp_files/out15383.sol(377)

[31mViolation[0m for UnrestrictedWrite in contract 'SingularDTVToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out15383.sol(378)

[31mViolation[0m for UnrestrictedWrite in contract 'SingularDTVToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out15383.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularDTVToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out15383.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularDTVToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out15383.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularDTVToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out15383.sol(389)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularDTVToken':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/slither_fp_files/out15383.sol(400)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/slither_fp_files/out15383.sol(359)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/slither_fp_files/out15383.sol(361)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/slither_fp_files/out15383.sol(373)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/slither_fp_files/out15383.sol(384)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/slither_fp_files/out15383.sol(388)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/slither_fp_files/out15383.sol(394)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/slither_fp_files/out15383.sol(399)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/slither_fp_files/out15383.sol(15)

[33mWarning[0m for UnhandledException in contract 'StandardToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/slither_fp_files/out15383.sol(406)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StandardToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/slither_fp_files/out15383.sol(406)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out15383.sol(368)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/slither_fp_files/out15383.sol(377)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out15383.sol(378)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out15383.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out15383.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out15383.sol(389)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/slither_fp_files/out15383.sol(400)

[33mWarning[0m for LockedEther in contract 'TokitDeployer':
    |
    |
  > |contract TokitDeployer is Ownable {
    |
    |    TokitRegistry public registry;
  at /home/jiaming/slither_fp_files/out15383.sol(803)

[31mViolation[0m for MissingInputValidation in contract 'TokitDeployer':
    |
    |    // payment_type => payment_contract
  > |    mapping (uint8 => AbstractPaymentEscrow) public paymentContracts;
    |
    |    event DeployedToken(address indexed _customer, uint indexed _projectId, address _token, address _fund);
  at /home/jiaming/slither_fp_files/out15383.sol(808)

[31mViolation[0m for MissingInputValidation in contract 'TokitDeployer':
    |    }
    |
  > |    function deployToken(
    |        address _customer, uint _projectId, uint8 _payedWith, uint _amountNeeded,
    |        // SingularDTVToken
  at /home/jiaming/slither_fp_files/out15383.sol(819)

[31mViolation[0m for MissingInputValidation in contract 'TokitDeployer':
    |    }
    |
  > |    function deployCampaign(
    |        address _customer, uint _projectId,
    |        // SingularDTVLaunch
  at /home/jiaming/slither_fp_files/out15383.sol(843)

[31mViolation[0m for MissingInputValidation in contract 'TokitDeployer':
    |    }
    |
  > |    function setRegistryContract(address _registry)
    |        onlyOwner()
    |    {
  at /home/jiaming/slither_fp_files/out15383.sol(864)

[31mViolation[0m for MissingInputValidation in contract 'TokitDeployer':
    |    }
    |
  > |    function setPaymentContract(uint8 _paymentType, address _paymentContract)
    |        onlyOwner()
    |    {
  at /home/jiaming/slither_fp_files/out15383.sol(870)

[31mViolation[0m for MissingInputValidation in contract 'TokitDeployer':
    |    }
    |
  > |    function deletePaymentContract(uint8 _paymentType)
    |        onlyOwner()
    |    {
  at /home/jiaming/slither_fp_files/out15383.sol(876)

[33mWarning[0m for MissingInputValidation in contract 'TokitDeployer':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out15383.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'TokitDeployer':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/slither_fp_files/out15383.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'TokitDeployer':
    |
    |
  > |contract TokitDeployer is Ownable {
    |
    |    TokitRegistry public registry;
  at /home/jiaming/slither_fp_files/out15383.sol(803)

[33mWarning[0m for MissingInputValidation in contract 'TokitDeployer':
    |contract TokitDeployer is Ownable {
    |
  > |    TokitRegistry public registry;
    |
    |    // payment_type => payment_contract
  at /home/jiaming/slither_fp_files/out15383.sol(805)

[33mWarning[0m for UnhandledException in contract 'TokitDeployer':
    |    {
    |        // payed for
  > |        require(AbstractPaymentEscrow(paymentContracts[_payedWith]).getDeposit(_projectId) >= _amountNeeded);
    |
    |        var (t,,) = registry.lookup(_customer, _projectId);
  at /home/jiaming/slither_fp_files/out15383.sol(827)

[33mWarning[0m for UnhandledException in contract 'TokitDeployer':
    |        require(AbstractPaymentEscrow(paymentContracts[_payedWith]).getDeposit(_projectId) >= _amountNeeded);
    |
  > |        var (t,,) = registry.lookup(_customer, _projectId);
    |        // not deployed yet
    |        require(t == address(0));
  at /home/jiaming/slither_fp_files/out15383.sol(829)

[33mWarning[0m for UnhandledException in contract 'TokitDeployer':
    |        SingularDTVFund fund = new SingularDTVFund();
    |        SingularDTVToken token = new SingularDTVToken(fund, _wallet, _name, _symbol, _totalSupply);
  > |        fund.setup(token);
    |
    |        registry.register(_customer, _projectId, token, fund);
  at /home/jiaming/slither_fp_files/out15383.sol(836)

[33mWarning[0m for UnhandledException in contract 'TokitDeployer':
    |        fund.setup(token);
    |
  > |        registry.register(_customer, _projectId, token, fund);
    |
    |        DeployedToken(_customer, _projectId, token, fund);
  at /home/jiaming/slither_fp_files/out15383.sol(838)

[33mWarning[0m for UnhandledException in contract 'TokitDeployer':
    |        onlyOwner()
    |    {
  > |        var (t,f,c) = registry.lookup(_customer, _projectId);
    |        // not deployed yet
    |        require(c == address(0));
  at /home/jiaming/slither_fp_files/out15383.sol(850)

[33mWarning[0m for UnhandledException in contract 'TokitDeployer':
    |        SingularDTVLaunch campaign = new SingularDTVLaunch(t, _workshop, _customer, _total, _unitPrice, _duration, _threshold, _networkFee);
    |
  > |        registry.register(_customer, _projectId, campaign);
    |
    |        DeployedCampaign(_customer, _projectId, campaign);
  at /home/jiaming/slither_fp_files/out15383.sol(859)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokitDeployer':
    |    {
    |        // payed for
  > |        require(AbstractPaymentEscrow(paymentContracts[_payedWith]).getDeposit(_projectId) >= _amountNeeded);
    |
    |        var (t,,) = registry.lookup(_customer, _projectId);
  at /home/jiaming/slither_fp_files/out15383.sol(827)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokitDeployer':
    |        require(AbstractPaymentEscrow(paymentContracts[_payedWith]).getDeposit(_projectId) >= _amountNeeded);
    |
  > |        var (t,,) = registry.lookup(_customer, _projectId);
    |        // not deployed yet
    |        require(t == address(0));
  at /home/jiaming/slither_fp_files/out15383.sol(829)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokitDeployer':
    |        SingularDTVFund fund = new SingularDTVFund();
    |        SingularDTVToken token = new SingularDTVToken(fund, _wallet, _name, _symbol, _totalSupply);
  > |        fund.setup(token);
    |
    |        registry.register(_customer, _projectId, token, fund);
  at /home/jiaming/slither_fp_files/out15383.sol(836)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokitDeployer':
    |        fund.setup(token);
    |
  > |        registry.register(_customer, _projectId, token, fund);
    |
    |        DeployedToken(_customer, _projectId, token, fund);
  at /home/jiaming/slither_fp_files/out15383.sol(838)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokitDeployer':
    |        onlyOwner()
    |    {
  > |        var (t,f,c) = registry.lookup(_customer, _projectId);
    |        // not deployed yet
    |        require(c == address(0));
  at /home/jiaming/slither_fp_files/out15383.sol(850)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokitDeployer':
    |        SingularDTVLaunch campaign = new SingularDTVLaunch(t, _workshop, _customer, _total, _unitPrice, _duration, _threshold, _networkFee);
    |
  > |        registry.register(_customer, _projectId, campaign);
    |
    |        DeployedCampaign(_customer, _projectId, campaign);
  at /home/jiaming/slither_fp_files/out15383.sol(859)

[33mWarning[0m for UnrestrictedWrite in contract 'TokitDeployer':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/slither_fp_files/out15383.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'TokitDeployer':
    |        onlyOwner()
    |    {
  > |        registry = TokitRegistry(_registry);
    |    }
    |
  at /home/jiaming/slither_fp_files/out15383.sol(867)

[33mWarning[0m for UnrestrictedWrite in contract 'TokitDeployer':
    |        onlyOwner()
    |    {
  > |        paymentContracts[_paymentType] = AbstractPaymentEscrow(_paymentContract);
    |    }
    |
  at /home/jiaming/slither_fp_files/out15383.sol(873)

[33mWarning[0m for UnrestrictedWrite in contract 'TokitDeployer':
    |        onlyOwner()
    |    {
  > |        delete paymentContracts[_paymentType];
    |    }
    |}
  at /home/jiaming/slither_fp_files/out15383.sol(879)

[33mWarning[0m for LockedEther in contract 'TokitRegistry':
    |
    |
  > |contract TokitRegistry is Ownable {
    |
    |    struct ProjectContracts {
  at /home/jiaming/slither_fp_files/out15383.sol(160)

[31mViolation[0m for MissingInputValidation in contract 'TokitRegistry':
    |
    |    // registrar => true/false
  > |    mapping (address => bool) public registrars;
    |
    |    // customer => project_id => token/campaign
  at /home/jiaming/slither_fp_files/out15383.sol(169)

[31mViolation[0m for MissingInputValidation in contract 'TokitRegistry':
    |
    |    // customer => project_id => token/campaign
  > |    mapping (address => mapping(uint => ProjectContracts)) public registry;
    |    // project_id => token/campaign
    |    mapping (uint => ProjectContracts) public project_registry;
  at /home/jiaming/slither_fp_files/out15383.sol(172)

[31mViolation[0m for MissingInputValidation in contract 'TokitRegistry':
    |    mapping (address => mapping(uint => ProjectContracts)) public registry;
    |    // project_id => token/campaign
  > |    mapping (uint => ProjectContracts) public project_registry;
    |
    |    event RegisteredToken(address indexed _projectOwner, uint indexed _projectId, address _token, address _fund);
  at /home/jiaming/slither_fp_files/out15383.sol(174)

[31mViolation[0m for MissingInputValidation in contract 'TokitRegistry':
    |    }
    |
  > |    function register(address _customer, uint _projectId, address _token, address _fund)
    |        onlyRegistrars()
    |    {
  at /home/jiaming/slither_fp_files/out15383.sol(189)

[31mViolation[0m for MissingInputValidation in contract 'TokitRegistry':
    |    }
    |
  > |    function register(address _customer, uint _projectId, address _campaign)
    |        onlyRegistrars()
    |    {
  at /home/jiaming/slither_fp_files/out15383.sol(201)

[31mViolation[0m for MissingInputValidation in contract 'TokitRegistry':
    |    }
    |
  > |    function lookup(address _customer, uint _projectId)
    |        constant
    |        returns (address token, address fund, address campaign)
  at /home/jiaming/slither_fp_files/out15383.sol(211)

[31mViolation[0m for MissingInputValidation in contract 'TokitRegistry':
    |    }
    |
  > |    function lookupByProject(uint _projectId)
    |        constant
    |        returns (address token, address fund, address campaign)
  at /home/jiaming/slither_fp_files/out15383.sol(222)

[31mViolation[0m for MissingInputValidation in contract 'TokitRegistry':
    |    }
    |
  > |    function setRegistrar(address _registrar, bool enabled)
    |        onlyOwner()
    |    {
  at /home/jiaming/slither_fp_files/out15383.sol(233)

[33mWarning[0m for MissingInputValidation in contract 'TokitRegistry':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out15383.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'TokitRegistry':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/slither_fp_files/out15383.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'TokitRegistry':
    |        onlyRegistrars()
    |    {
  > |        registry[_customer][_projectId].token = _token;
    |        registry[_customer][_projectId].fund = _fund;
    |
  at /home/jiaming/slither_fp_files/out15383.sol(192)

[31mViolation[0m for UnrestrictedWrite in contract 'TokitRegistry':
    |    {
    |        registry[_customer][_projectId].token = _token;
  > |        registry[_customer][_projectId].fund = _fund;
    |
    |        project_registry[_projectId].token = _token;
  at /home/jiaming/slither_fp_files/out15383.sol(193)

[31mViolation[0m for UnrestrictedWrite in contract 'TokitRegistry':
    |        registry[_customer][_projectId].fund = _fund;
    |
  > |        project_registry[_projectId].token = _token;
    |        project_registry[_projectId].fund = _fund;
    |
  at /home/jiaming/slither_fp_files/out15383.sol(195)

[31mViolation[0m for UnrestrictedWrite in contract 'TokitRegistry':
    |
    |        project_registry[_projectId].token = _token;
  > |        project_registry[_projectId].fund = _fund;
    |
    |        RegisteredToken(_customer, _projectId, _token, _fund);
  at /home/jiaming/slither_fp_files/out15383.sol(196)

[31mViolation[0m for UnrestrictedWrite in contract 'TokitRegistry':
    |        onlyRegistrars()
    |    {
  > |        registry[_customer][_projectId].campaign = _campaign;
    |
    |        project_registry[_projectId].campaign = _campaign;
  at /home/jiaming/slither_fp_files/out15383.sol(204)

[31mViolation[0m for UnrestrictedWrite in contract 'TokitRegistry':
    |        registry[_customer][_projectId].campaign = _campaign;
    |
  > |        project_registry[_projectId].campaign = _campaign;
    |
    |        RegisteredCampaign(_customer, _projectId, _campaign);
  at /home/jiaming/slither_fp_files/out15383.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'TokitRegistry':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/slither_fp_files/out15383.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'TokitRegistry':
    |        onlyOwner()
    |    {
  > |        registrars[_registrar] = enabled;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out15383.sol(236)


