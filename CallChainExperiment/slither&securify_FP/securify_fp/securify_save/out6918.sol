Processing contract: /home/jiaming/slither_fp_files/out6918.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6918.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6918.sol:ERC20
Processing contract: /home/jiaming/slither_fp_files/out6918.sol:ERC20Basic
Processing contract: /home/jiaming/slither_fp_files/out6918.sol:ERRLCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6918.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6918.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6918.sol:PullPayment
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6918.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6918.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |
    |
  > |contract BasicToken is ERC20Basic {
    |  
    |  using SafeMath for uint;
  at /home/jiaming/slither_fp_files/out6918.sol(156)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/slither_fp_files/out6918.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out6918.sol(173)

[31mViolation[0m for DAOConstantGas in contract 'Crowdsale':
    |  */
    |  function drain() onlyOwner {
  > |    if (!owner.send(this.balance)) throw;
    |    crowdsaleClosed = true;
    |  }
  at /home/jiaming/slither_fp_files/out6918.sol(455)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |    payments[payee] = 0;
    |
  > |    if (!payee.send(payment)) {
    |      throw;
    |    }
  at /home/jiaming/slither_fp_files/out6918.sol(148)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |  This smart contract collects ETH, and in return emits equivalent ERRL tokens and 35% of the purchase amount to the purchasers 
    |*/
  > |contract Crowdsale is Pausable, PullPayment {
    |    
    |    using SafeMath for uint;
  at /home/jiaming/slither_fp_files/out6918.sol(261)

[31mViolation[0m for TODAmount in contract 'Crowdsale':
    |      //asyncSend(msg.sender, ETHToSend); // pull payment to get 35% refund in ETH
    |      //transfer(msg.sender, ETHToSend);
  > |      beneficiary.transfer(ETHToSend);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out6918.sol(409)

[31mViolation[0m for TODAmount in contract 'Crowdsale':
    |  */
    |  function drain() onlyOwner {
  > |    if (!owner.send(this.balance)) throw;
    |    crowdsaleClosed = true;
    |  }
  at /home/jiaming/slither_fp_files/out6918.sol(455)

[31mViolation[0m for TODReceiver in contract 'Crowdsale':
    |  */
    |  function drain() onlyOwner {
  > |    if (!owner.send(this.balance)) throw;
    |    crowdsaleClosed = true;
    |  }
  at /home/jiaming/slither_fp_files/out6918.sol(455)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |    payments[payee] = 0;
    |
  > |    if (!payee.send(payment)) {
    |      throw;
    |    }
  at /home/jiaming/slither_fp_files/out6918.sol(148)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |      //asyncSend(msg.sender, ETHToSend); // pull payment to get 35% refund in ETH
    |      //transfer(msg.sender, ETHToSend);
  > |      beneficiary.transfer(ETHToSend);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out6918.sol(409)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    payments[payee] = 0;
    |
  > |    if (!payee.send(payment)) {
    |      throw;
    |    }
  at /home/jiaming/slither_fp_files/out6918.sol(148)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |    Backer backer = backers[beneficiary];
  > |    coin.transfer(beneficiary, coinToSend); // Transfer ERRLCoins right now 
    |
    |    backer.coinSent = backer.coinSent.add(coinToSend);
  at /home/jiaming/slither_fp_files/out6918.sol(383)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |      //asyncSend(msg.sender, ETHToSend); // pull payment to get 35% refund in ETH
    |      //transfer(msg.sender, ETHToSend);
  > |      beneficiary.transfer(ETHToSend);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out6918.sol(409)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |   
  > |    coin.transfer(OWNERICO_STAKE,coinToSend); // Transfer ERRLCoins right now to beneficiary ownerICO  
    |   
    |
  at /home/jiaming/slither_fp_files/out6918.sol(429)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  */
    |  function drain() onlyOwner {
  > |    if (!owner.send(this.balance)) throw;
    |    crowdsaleClosed = true;
    |  }
  at /home/jiaming/slither_fp_files/out6918.sol(455)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |   */
    |  function backERRLCoinOwner() onlyOwner public {
  > |    coin.transferOwnership(owner);
    |  }
    |
  at /home/jiaming/slither_fp_files/out6918.sol(472)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    
    |    Backer backer = backers[owner];
  > |    coin.transfer(owner, remains); // Transfer ERRLCoins right now 
    |
    |    backer.coinSent = backer.coinSent.add(remains);
  at /home/jiaming/slither_fp_files/out6918.sol(483)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |    Backer backer = backers[beneficiary];
  > |    coin.transfer(beneficiary, coinToSend); // Transfer ERRLCoins right now 
    |
    |    backer.coinSent = backer.coinSent.add(coinToSend);
  at /home/jiaming/slither_fp_files/out6918.sol(383)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |      //asyncSend(msg.sender, ETHToSend); // pull payment to get 35% refund in ETH
    |      //transfer(msg.sender, ETHToSend);
  > |      beneficiary.transfer(ETHToSend);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out6918.sol(409)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |   
  > |    coin.transfer(OWNERICO_STAKE,coinToSend); // Transfer ERRLCoins right now to beneficiary ownerICO  
    |   
    |
  at /home/jiaming/slither_fp_files/out6918.sol(429)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  */
    |  function drain() onlyOwner {
  > |    if (!owner.send(this.balance)) throw;
    |    crowdsaleClosed = true;
    |  }
  at /home/jiaming/slither_fp_files/out6918.sol(455)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |   */
    |  function backERRLCoinOwner() onlyOwner public {
  > |    coin.transferOwnership(owner);
    |  }
    |
  at /home/jiaming/slither_fp_files/out6918.sol(472)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    
    |    Backer backer = backers[owner];
  > |    coin.transfer(owner, remains); // Transfer ERRLCoins right now 
    |
    |    backer.coinSent = backer.coinSent.add(remains);
  at /home/jiaming/slither_fp_files/out6918.sol(483)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    }
    |
  > |    payments[payee] = 0;
    |
    |    if (!payee.send(payment)) {
  at /home/jiaming/slither_fp_files/out6918.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    coin.transfer(beneficiary, coinToSend); // Transfer ERRLCoins right now 
    |
  > |    backer.coinSent = backer.coinSent.add(coinToSend);
    |    //backer.weiReceived = backer.weiReceived.add(msg.value); // Update the total wei collected during the crowdfunding for this backer
    |uint factor=35;
  at /home/jiaming/slither_fp_files/out6918.sol(385)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |//ETHToSend = backers[msg.sender].weiReceived;
    |
  > |ETHToSend = msg.value;
    |
    |ETHToSend=(ETHToSend * 35) / 100;
  at /home/jiaming/slither_fp_files/out6918.sol(392)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |ETHToSend = msg.value;
    |
  > |ETHToSend=(ETHToSend * 35) / 100;
    |
    |//backers[msg.sender].weiReceived=(factoreth.div(100)).mul(backers[msg.sender].weiReceived);
  at /home/jiaming/slither_fp_files/out6918.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |   //pays=(factoreth.div(100)).mul(msg.value);
    |
  > |    etherReceived = etherReceived.add((msg.value.mul(65)).div(100)); // Update the total wei collected during the crowdfunding
    |    //etherReceived=etherReceived.div(100);
    |    
  at /home/jiaming/slither_fp_files/out6918.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    //etherReceived=etherReceived.div(100);
    |    
  > |    coinSentToEther = coinSentToEther.add(coinToSend);
    |
    |    // Send events
  at /home/jiaming/slither_fp_files/out6918.sol(422)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |   
    |
  > |    coinSentToEther = coinSentToEther.add(coinToSend);
    |
    |    LogCoinsEmited(OWNERICO_STAKE ,coinToSend);
  at /home/jiaming/slither_fp_files/out6918.sol(432)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    coin.transfer(owner, remains); // Transfer ERRLCoins right now 
    |
  > |    backer.coinSent = backer.coinSent.add(remains);
    |
    |    coinSentToEther = coinSentToEther.add(remains);
  at /home/jiaming/slither_fp_files/out6918.sol(485)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    backer.coinSent = backer.coinSent.add(remains);
    |
  > |    coinSentToEther = coinSentToEther.add(remains);
    |
    |    // Send events
  at /home/jiaming/slither_fp_files/out6918.sol(487)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out6918.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  // called by the owner on emergency, triggers stopped state
    |  function emergencyStop() external onlyOwner {
  > |    stopped = true;
    |  }
    |
  at /home/jiaming/slither_fp_files/out6918.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  // called by the owner on end of emergency, returns to normal state
    |  function release() external onlyOwner onlyInEmergency {
  > |    stopped = false;
    |  }
    |
  at /home/jiaming/slither_fp_files/out6918.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function start() onlyOwner {
    |   
  > |    startTime = now ;           
    |    endTime =  now + CROWDSALE_PERIOD;  
    |
  at /home/jiaming/slither_fp_files/out6918.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |   
    |    startTime = now ;           
  > |    endTime =  now + CROWDSALE_PERIOD;  
    |
    |    crowdsaleClosed=false;
  at /home/jiaming/slither_fp_files/out6918.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    endTime =  now + CROWDSALE_PERIOD;  
    |
  > |    crowdsaleClosed=false;
    |   
    |  
  at /home/jiaming/slither_fp_files/out6918.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function drain() onlyOwner {
    |    if (!owner.send(this.balance)) throw;
  > |    crowdsaleClosed = true;
    |  }
    |
  at /home/jiaming/slither_fp_files/out6918.sol(456)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    //if (addr == address(0)) throw;
    |    require(addr != address(0));
  > |    multisigEther = addr;
    |  }
    |
  at /home/jiaming/slither_fp_files/out6918.sol(465)

[33mWarning[0m for LockedEther in contract 'ERRLCoin':
    |}
    |
  > |contract ERRLCoin is StandardToken, Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out6918.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'ERRLCoin':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out6918.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'ERRLCoin':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out6918.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'ERRLCoin':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/slither_fp_files/out6918.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'ERRLCoin':
    |    // Check is not needed because sub(_allowance, _value) will already throw if this condition is not met
    |    // if (_value > _allowance) throw;
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/slither_fp_files/out6918.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'ERRLCoin':
    |    // if (_value > _allowance) throw;
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out6918.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'ERRLCoin':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/slither_fp_files/out6918.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'ERRLCoin':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/slither_fp_files/out6918.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'ERRLCoin':
    |
    |  function burn(uint _value) onlyOwner returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Transfer(msg.sender, 0x0, _value);
  at /home/jiaming/slither_fp_files/out6918.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'ERRLCoin':
    |  function burn(uint _value) onlyOwner returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    totalSupply = totalSupply.sub(_value);
    |    Transfer(msg.sender, 0x0, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out6918.sol(250)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/slither_fp_files/out6918.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() {
  at /home/jiaming/slither_fp_files/out6918.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/slither_fp_files/out6918.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out6918.sol(57)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | */
    |
  > |contract Pausable is Ownable {
    |  bool public stopped;
    |
  at /home/jiaming/slither_fp_files/out6918.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() {
  at /home/jiaming/slither_fp_files/out6918.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/slither_fp_files/out6918.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Pausable is Ownable {
  > |  bool public stopped;
    |
    |  modifier stopInEmergency {
  at /home/jiaming/slither_fp_files/out6918.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |  // called by the owner on emergency, triggers stopped state
  > |  function emergencyStop() external onlyOwner {
    |    stopped = true;
    |  }
  at /home/jiaming/slither_fp_files/out6918.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |  // called by the owner on end of emergency, returns to normal state
  > |  function release() external onlyOwner onlyInEmergency {
    |    stopped = false;
    |  }
  at /home/jiaming/slither_fp_files/out6918.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out6918.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  // called by the owner on emergency, triggers stopped state
    |  function emergencyStop() external onlyOwner {
  > |    stopped = true;
    |  }
    |
  at /home/jiaming/slither_fp_files/out6918.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  // called by the owner on end of emergency, returns to normal state
    |  function release() external onlyOwner onlyInEmergency {
  > |    stopped = false;
    |  }
    |
  at /home/jiaming/slither_fp_files/out6918.sol(92)

[33mWarning[0m for DAOConstantGas in contract 'PullPayment':
    |    payments[payee] = 0;
    |
  > |    if (!payee.send(payment)) {
    |      throw;
    |    }
  at /home/jiaming/slither_fp_files/out6918.sol(148)

[33mWarning[0m for LockedEther in contract 'PullPayment':
    | * Inherit from this contract and use asyncSend instead of send.
    | */
  > |contract PullPayment {
    |
    |  using SafeMath for uint;
  at /home/jiaming/slither_fp_files/out6918.sol(117)

[31mViolation[0m for MissingInputValidation in contract 'PullPayment':
    |  using SafeMath for uint;
    |  
  > |  mapping(address => uint) public payments;
    |
    |  event LogRefundETH(address to, uint value);
  at /home/jiaming/slither_fp_files/out6918.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'PullPayment':
    |
    |  // withdraw accumulated balance, called by payee
  > |  function withdrawPayments() {
    |    address payee = msg.sender;
    |    uint payment = payments[payee];
  at /home/jiaming/slither_fp_files/out6918.sol(134)

[33mWarning[0m for TODReceiver in contract 'PullPayment':
    |    payments[payee] = 0;
    |
  > |    if (!payee.send(payment)) {
    |      throw;
    |    }
  at /home/jiaming/slither_fp_files/out6918.sol(148)

[33mWarning[0m for UnhandledException in contract 'PullPayment':
    |    payments[payee] = 0;
    |
  > |    if (!payee.send(payment)) {
    |      throw;
    |    }
  at /home/jiaming/slither_fp_files/out6918.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'PullPayment':
    |    }
    |
  > |    payments[payee] = 0;
    |
    |    if (!payee.send(payment)) {
  at /home/jiaming/slither_fp_files/out6918.sol(146)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.15;
    |
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/slither_fp_files/out6918.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is BasicToken, ERC20 {
    |  mapping (address => mapping (address => uint)) allowed;
    |
  at /home/jiaming/slither_fp_files/out6918.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out6918.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/slither_fp_files/out6918.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/slither_fp_files/out6918.sol(203)


