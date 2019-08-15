Processing contract: /home/jiaming/slither_fp_files/out11300.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out11300.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out11300.sol:PendingContributions
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out11300.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out11300.sol:Whitelist
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out11300.sol:WhitelistedGateway
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'Crowdsale':
    |  function forwardFunds() internal {
    |	if(gateway.isWhitelisted(msg.sender)) {
  > |		gateway.fund.value(msg.value)(msg.sender);
    |		return;
    |	} 
  at /home/jiaming/slither_fp_files/out11300.sol(116)

[33mWarning[0m for DAO in contract 'Crowdsale':
    |		return;
    |	} 
  > |	pending.fund.value(msg.value)(msg.sender);
    |  }
    |
  at /home/jiaming/slither_fp_files/out11300.sol(119)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |  uint256 minContrib;
    |
  > |	function setPending(bool newValue) public onlyOwner {
    |		acceptWithoutWhitelist = newValue;
    |	}
  at /home/jiaming/slither_fp_files/out11300.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |	}
    |
  > |	function setClosedManually(bool newValue) public onlyOwner {
    |		closedManually = newValue;
    |	}
  at /home/jiaming/slither_fp_files/out11300.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out11300.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/slither_fp_files/out11300.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |  // start and end timestamps where investments are allowed (both inclusive)
  > |  uint256 public startTime;
    |  uint256 public endTime;
    |
  at /home/jiaming/slither_fp_files/out11300.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  // start and end timestamps where investments are allowed (both inclusive)
    |  uint256 public startTime;
  > |  uint256 public endTime;
    |
    |  // address where funds are collected
  at /home/jiaming/slither_fp_files/out11300.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |  // address where funds are collected
  > |  WhitelistedGateway public gateway;
    |  PendingContributions public pending;
    |
  at /home/jiaming/slither_fp_files/out11300.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  // address where funds are collected
    |  WhitelistedGateway public gateway;
  > |  PendingContributions public pending;
    |
    |	bool closedManually = false;
  at /home/jiaming/slither_fp_files/out11300.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |  // send ether either to the Gateway or to the PendingContributions
  > |  function forwardFunds() internal {
    |	if(gateway.isWhitelisted(msg.sender)) {
    |		gateway.fund.value(msg.value)(msg.sender);
  at /home/jiaming/slither_fp_files/out11300.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |  // @return true if the transaction can buy tokens
  > |  function validPurchase() internal view returns (bool) {
    |    bool withinPeriod = now >= startTime && now <= endTime;
    |    bool sufficientPurchase = msg.value >= minContrib;
  at /home/jiaming/slither_fp_files/out11300.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |  // @return true if crowdsale event has ended
  > |  function hasEnded() public view returns (bool) {
    |    return now > endTime;
    |  }
  at /home/jiaming/slither_fp_files/out11300.sol(131)

[33mWarning[0m for TODAmount in contract 'Crowdsale':
    |  function forwardFunds() internal {
    |	if(gateway.isWhitelisted(msg.sender)) {
  > |		gateway.fund.value(msg.value)(msg.sender);
    |		return;
    |	} 
  at /home/jiaming/slither_fp_files/out11300.sol(116)

[31mViolation[0m for TODReceiver in contract 'Crowdsale':
    |		return;
    |	} 
  > |	pending.fund.value(msg.value)(msg.sender);
    |  }
    |
  at /home/jiaming/slither_fp_files/out11300.sol(119)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |  function forwardFunds() internal {
    |	if(gateway.isWhitelisted(msg.sender)) {
  > |		gateway.fund.value(msg.value)(msg.sender);
    |		return;
    |	} 
  at /home/jiaming/slither_fp_files/out11300.sol(116)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  // send ether either to the Gateway or to the PendingContributions
    |  function forwardFunds() internal {
  > |	if(gateway.isWhitelisted(msg.sender)) {
    |		gateway.fund.value(msg.value)(msg.sender);
    |		return;
  at /home/jiaming/slither_fp_files/out11300.sol(115)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  function forwardFunds() internal {
    |	if(gateway.isWhitelisted(msg.sender)) {
  > |		gateway.fund.value(msg.value)(msg.sender);
    |		return;
    |	} 
  at /home/jiaming/slither_fp_files/out11300.sol(116)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |		return;
    |	} 
  > |	pending.fund.value(msg.value)(msg.sender);
    |  }
    |
  at /home/jiaming/slither_fp_files/out11300.sol(119)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    bool withinPeriod = now >= startTime && now <= endTime;
    |    bool sufficientPurchase = msg.value >= minContrib;
  > |    bool whitelisted = gateway.isWhitelisted(msg.sender);
    |    return !closedManually && withinPeriod && sufficientPurchase && (acceptWithoutWhitelist || whitelisted);
    |  }
  at /home/jiaming/slither_fp_files/out11300.sol(126)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  // send ether either to the Gateway or to the PendingContributions
    |  function forwardFunds() internal {
  > |	if(gateway.isWhitelisted(msg.sender)) {
    |		gateway.fund.value(msg.value)(msg.sender);
    |		return;
  at /home/jiaming/slither_fp_files/out11300.sol(115)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    bool withinPeriod = now >= startTime && now <= endTime;
    |    bool sufficientPurchase = msg.value >= minContrib;
  > |    bool whitelisted = gateway.isWhitelisted(msg.sender);
    |    return !closedManually && withinPeriod && sufficientPurchase && (acceptWithoutWhitelist || whitelisted);
    |  }
  at /home/jiaming/slither_fp_files/out11300.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/slither_fp_files/out11300.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |	function setPending(bool newValue) public onlyOwner {
  > |		acceptWithoutWhitelist = newValue;
    |	}
    |
  at /home/jiaming/slither_fp_files/out11300.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |	function setClosedManually(bool newValue) public onlyOwner {
  > |		closedManually = newValue;
    |	}
    |
  at /home/jiaming/slither_fp_files/out11300.sol(89)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/slither_fp_files/out11300.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out11300.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/slither_fp_files/out11300.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/slither_fp_files/out11300.sol(64)

[31mViolation[0m for DAO in contract 'PendingContributions':
    |		uint256 toTransfer = contributions[contributor];
    |		require(toTransfer > 0);
  > |		gateway.fund.value(toTransfer)(contributor);
    |		contributions[contributor] = 0;
    |		PendingContributionAccepted(contributor, toTransfer, now);
  at /home/jiaming/slither_fp_files/out11300.sol(172)

[33mWarning[0m for DAOConstantGas in contract 'PendingContributions':
    |		require(toTransfer > 0);
    |		contributions[msg.sender] = 0;
  > |		msg.sender.transfer(toTransfer);
    |		PendingContributionWithdrawn(msg.sender, toTransfer, now);
    |	}
  at /home/jiaming/slither_fp_files/out11300.sol(165)

[33mWarning[0m for LockedEther in contract 'PendingContributions':
    |}
    |
  > |contract PendingContributions is Ownable {
    |	using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out11300.sol(137)

[31mViolation[0m for MissingInputValidation in contract 'PendingContributions':
    |	using SafeMath for uint256;
    |
  > |	mapping(address=>uint256) public contributions;
    |	WhitelistedGateway public gateway;
    |
  at /home/jiaming/slither_fp_files/out11300.sol(140)

[31mViolation[0m for MissingInputValidation in contract 'PendingContributions':
    |	}
    |
  > |	function fund(address contributor) payable public onlyOwner {
    |		contributions[contributor] += msg.value;
    |		PendingContributionReceived(contributor, msg.value, now);
  at /home/jiaming/slither_fp_files/out11300.sol(156)

[31mViolation[0m for MissingInputValidation in contract 'PendingContributions':
    |	}
    |
  > |	function retry(address contributor) public onlyWhitelisted(contributor) {
    |		uint256 toTransfer = contributions[contributor];
    |		require(toTransfer > 0);
  at /home/jiaming/slither_fp_files/out11300.sol(169)

[33mWarning[0m for MissingInputValidation in contract 'PendingContributions':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out11300.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'PendingContributions':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/slither_fp_files/out11300.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'PendingContributions':
    |
    |	mapping(address=>uint256) public contributions;
  > |	WhitelistedGateway public gateway;
    |
    |	event PendingContributionReceived(address contributor, uint256 value, uint256 timestamp);
  at /home/jiaming/slither_fp_files/out11300.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'PendingContributions':
    |	}
    |
  > |	function withdraw() public {
    |		uint256 toTransfer = contributions[msg.sender];
    |		require(toTransfer > 0);
  at /home/jiaming/slither_fp_files/out11300.sol(161)

[33mWarning[0m for TODReceiver in contract 'PendingContributions':
    |		require(toTransfer > 0);
    |		contributions[msg.sender] = 0;
  > |		msg.sender.transfer(toTransfer);
    |		PendingContributionWithdrawn(msg.sender, toTransfer, now);
    |	}
  at /home/jiaming/slither_fp_files/out11300.sol(165)

[33mWarning[0m for TODReceiver in contract 'PendingContributions':
    |		uint256 toTransfer = contributions[contributor];
    |		require(toTransfer > 0);
  > |		gateway.fund.value(toTransfer)(contributor);
    |		contributions[contributor] = 0;
    |		PendingContributionAccepted(contributor, toTransfer, now);
  at /home/jiaming/slither_fp_files/out11300.sol(172)

[33mWarning[0m for UnhandledException in contract 'PendingContributions':
    |
    |	modifier onlyWhitelisted(address contributor) {
  > |		require(gateway.isWhitelisted(contributor));
    |		_;
    |	}
  at /home/jiaming/slither_fp_files/out11300.sol(152)

[33mWarning[0m for UnhandledException in contract 'PendingContributions':
    |		require(toTransfer > 0);
    |		contributions[msg.sender] = 0;
  > |		msg.sender.transfer(toTransfer);
    |		PendingContributionWithdrawn(msg.sender, toTransfer, now);
    |	}
  at /home/jiaming/slither_fp_files/out11300.sol(165)

[33mWarning[0m for UnhandledException in contract 'PendingContributions':
    |		uint256 toTransfer = contributions[contributor];
    |		require(toTransfer > 0);
  > |		gateway.fund.value(toTransfer)(contributor);
    |		contributions[contributor] = 0;
    |		PendingContributionAccepted(contributor, toTransfer, now);
  at /home/jiaming/slither_fp_files/out11300.sol(172)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PendingContributions':
    |
    |	modifier onlyWhitelisted(address contributor) {
  > |		require(gateway.isWhitelisted(contributor));
    |		_;
    |	}
  at /home/jiaming/slither_fp_files/out11300.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'PendingContributions':
    |		require(toTransfer > 0);
    |		gateway.fund.value(toTransfer)(contributor);
  > |		contributions[contributor] = 0;
    |		PendingContributionAccepted(contributor, toTransfer, now);
    |	}
  at /home/jiaming/slither_fp_files/out11300.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'PendingContributions':
    |		uint256 toTransfer = contributions[msg.sender];
    |		require(toTransfer > 0);
  > |		contributions[msg.sender] = 0;
    |		msg.sender.transfer(toTransfer);
    |		PendingContributionWithdrawn(msg.sender, toTransfer, now);
  at /home/jiaming/slither_fp_files/out11300.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'PendingContributions':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/slither_fp_files/out11300.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'PendingContributions':
    |
    |	function fund(address contributor) payable public onlyOwner {
  > |		contributions[contributor] += msg.value;
    |		PendingContributionReceived(contributor, msg.value, now);
    |	}
  at /home/jiaming/slither_fp_files/out11300.sol(157)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.13;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/slither_fp_files/out11300.sol(3)

[33mWarning[0m for LockedEther in contract 'Whitelist':
    |}
    |
  > |contract Whitelist is Ownable {
    |	using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out11300.sol(178)

[31mViolation[0m for MissingInputValidation in contract 'Whitelist':
    |	using SafeMath for uint256;
    |
  > |	mapping(address=>bool) public whitelist;
    |	
    |	event Authorized(address candidate, uint timestamp);
  at /home/jiaming/slither_fp_files/out11300.sol(181)

[31mViolation[0m for MissingInputValidation in contract 'Whitelist':
    |	
    |	// also if not in the list..
  > |	function revoke(address candidate) public onlyOwner {
    |	    whitelist[candidate] = false;
    |	    Revoked(candidate, now);
  at /home/jiaming/slither_fp_files/out11300.sol(192)

[31mViolation[0m for MissingInputValidation in contract 'Whitelist':
    |	}
    |
  > |	function isWhitelisted(address candidate) public view returns(bool) {
    |		return whitelist[candidate];
    |	}
  at /home/jiaming/slither_fp_files/out11300.sol(203)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out11300.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/slither_fp_files/out11300.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |	}
    |	
  > |	function authorizeMany(address[50] candidates) public onlyOwner {
    |	    for(uint i = 0; i < candidates.length; i++) {
    |	        authorize(candidates[i]);
  at /home/jiaming/slither_fp_files/out11300.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/slither_fp_files/out11300.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |
    |	function authorize(address candidate) public onlyOwner {
  > |	    whitelist[candidate] = true;
    |	    Authorized(candidate, now);
    |	}
  at /home/jiaming/slither_fp_files/out11300.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |	// also if not in the list..
    |	function revoke(address candidate) public onlyOwner {
  > |	    whitelist[candidate] = false;
    |	    Revoked(candidate, now);
    |	}
  at /home/jiaming/slither_fp_files/out11300.sol(193)

[33mWarning[0m for DAOConstantGas in contract 'WhitelistedGateway':
    |	function fund(address contributor) public payable onlyOwners {
    |		contributions[contributor] += msg.value;
  > |		vault.transfer(msg.value);
    |		NewContribution(contributor, msg.value, now);
    |	}
  at /home/jiaming/slither_fp_files/out11300.sol(239)

[31mViolation[0m for MissingInputValidation in contract 'WhitelistedGateway':
    |	using SafeMath for uint256;
    |
  > |	mapping(address=>bool) public owners;
    |	mapping(address=>uint) public contributions;
    |	address public vault;
  at /home/jiaming/slither_fp_files/out11300.sol(211)

[31mViolation[0m for MissingInputValidation in contract 'WhitelistedGateway':
    |
    |	mapping(address=>bool) public owners;
  > |	mapping(address=>uint) public contributions;
    |	address public vault;
    |	Whitelist public whitelist;
  at /home/jiaming/slither_fp_files/out11300.sol(212)

[31mViolation[0m for MissingInputValidation in contract 'WhitelistedGateway':
    |	}
    |
  > |	function addOwner(address newOwner) public onlyOwners {
    |		owners[newOwner] = true;
    |	}
  at /home/jiaming/slither_fp_files/out11300.sol(223)

[31mViolation[0m for MissingInputValidation in contract 'WhitelistedGateway':
    |	}
    |
  > |	function isWhitelisted(address candidate) public view returns(bool) {
    |		return whitelist.isWhitelisted(candidate);
    |	}
  at /home/jiaming/slither_fp_files/out11300.sol(233)

[31mViolation[0m for MissingInputValidation in contract 'WhitelistedGateway':
    |	}
    |
  > |	function fund(address contributor) public payable onlyOwners {
    |		contributions[contributor] += msg.value;
    |		vault.transfer(msg.value);
  at /home/jiaming/slither_fp_files/out11300.sol(237)

[33mWarning[0m for MissingInputValidation in contract 'WhitelistedGateway':
    |	mapping(address=>bool) public owners;
    |	mapping(address=>uint) public contributions;
  > |	address public vault;
    |	Whitelist public whitelist;
    |
  at /home/jiaming/slither_fp_files/out11300.sol(213)

[33mWarning[0m for MissingInputValidation in contract 'WhitelistedGateway':
    |	mapping(address=>uint) public contributions;
    |	address public vault;
  > |	Whitelist public whitelist;
    |
    |	event NewContribution(address contributor, uint256 amount, uint256 timestamp);
  at /home/jiaming/slither_fp_files/out11300.sol(214)

[33mWarning[0m for TODReceiver in contract 'WhitelistedGateway':
    |	function fund(address contributor) public payable onlyOwners {
    |		contributions[contributor] += msg.value;
  > |		vault.transfer(msg.value);
    |		NewContribution(contributor, msg.value, now);
    |	}
  at /home/jiaming/slither_fp_files/out11300.sol(239)

[33mWarning[0m for UnhandledException in contract 'WhitelistedGateway':
    |
    |	function isWhitelisted(address candidate) public view returns(bool) {
  > |		return whitelist.isWhitelisted(candidate);
    |	}
    |
  at /home/jiaming/slither_fp_files/out11300.sol(234)

[33mWarning[0m for UnhandledException in contract 'WhitelistedGateway':
    |	function fund(address contributor) public payable onlyOwners {
    |		contributions[contributor] += msg.value;
  > |		vault.transfer(msg.value);
    |		NewContribution(contributor, msg.value, now);
    |	}
  at /home/jiaming/slither_fp_files/out11300.sol(239)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WhitelistedGateway':
    |
    |	function isWhitelisted(address candidate) public view returns(bool) {
  > |		return whitelist.isWhitelisted(candidate);
    |	}
    |
  at /home/jiaming/slither_fp_files/out11300.sol(234)

[31mViolation[0m for UnrestrictedWrite in contract 'WhitelistedGateway':
    |
    |	function addOwner(address newOwner) public onlyOwners {
  > |		owners[newOwner] = true;
    |	}
    |
  at /home/jiaming/slither_fp_files/out11300.sol(224)

[31mViolation[0m for UnrestrictedWrite in contract 'WhitelistedGateway':
    |
    |	function fund(address contributor) public payable onlyOwners {
  > |		contributions[contributor] += msg.value;
    |		vault.transfer(msg.value);
    |		NewContribution(contributor, msg.value, now);
  at /home/jiaming/slither_fp_files/out11300.sol(238)


