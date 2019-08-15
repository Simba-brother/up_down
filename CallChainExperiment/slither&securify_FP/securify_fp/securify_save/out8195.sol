Processing contract: /home/jiaming/slither_fp_files/out8195.sol:BaseIPO
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8195.sol:BaseToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8195.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8195.sol:ERC20
Processing contract: /home/jiaming/slither_fp_files/out8195.sol:ERC20Basic
Processing contract: /home/jiaming/slither_fp_files/out8195.sol:IpoCreator
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8195.sol:IpoVault
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8195.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8195.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8195.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8195.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8195.sol:RefundVault
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8195.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8195.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAO in contract 'BaseIPO':
    |    uint tokens = getTokenAmount(weiAmount);
    |    token.mint(_beneficiary, tokens);
  > |    vault.deposit.value(msg.value)(msg.sender);
    |    if (token.capReached()) {
    |      finalizeIPO();
  at /home/jiaming/slither_fp_files/out8195.sol(701)

[33mWarning[0m for DAO in contract 'BaseIPO':
    |  function payDividends() payable external onlyOwner {
    |    require(result == Result.Success);
  > |    token.depositDividends.value(msg.value)();
    |  }
    |
  at /home/jiaming/slither_fp_files/out8195.sol(735)

[33mWarning[0m for LockedEther in contract 'BaseIPO':
    |// File: contracts/BaseIPO.sol
    |
  > |contract BaseIPO is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out8195.sol(633)

[33mWarning[0m for UnhandledException in contract 'BaseIPO':
    |    require(_beneficiary != address(0));
    |    require(weiAmount > 0);
  > |    require(!token.capReached());
    |    require(!isIpoPeriodOver());
    |    require(state == State.IPO);
  at /home/jiaming/slither_fp_files/out8195.sol(696)

[33mWarning[0m for UnhandledException in contract 'BaseIPO':
    |    require(state == State.IPO);
    |    uint tokens = getTokenAmount(weiAmount);
  > |    token.mint(_beneficiary, tokens);
    |    vault.deposit.value(msg.value)(msg.sender);
    |    if (token.capReached()) {
  at /home/jiaming/slither_fp_files/out8195.sol(700)

[33mWarning[0m for UnhandledException in contract 'BaseIPO':
    |    uint tokens = getTokenAmount(weiAmount);
    |    token.mint(_beneficiary, tokens);
  > |    vault.deposit.value(msg.value)(msg.sender);
    |    if (token.capReached()) {
    |      finalizeIPO();
  at /home/jiaming/slither_fp_files/out8195.sol(701)

[33mWarning[0m for UnhandledException in contract 'BaseIPO':
    |    token.mint(_beneficiary, tokens);
    |    vault.deposit.value(msg.value)(msg.sender);
  > |    if (token.capReached()) {
    |      finalizeIPO();
    |    }
  at /home/jiaming/slither_fp_files/out8195.sol(702)

[33mWarning[0m for UnhandledException in contract 'BaseIPO':
    |
    |  function finalizeIPO() internal {
  > |    if (token.capReached()) {
    |      result = Result.Success;
    |      vault.close();
  at /home/jiaming/slither_fp_files/out8195.sol(709)

[33mWarning[0m for UnhandledException in contract 'BaseIPO':
    |    if (token.capReached()) {
    |      result = Result.Success;
  > |      vault.close();
    |      token.unpause();
    |    } else {
  at /home/jiaming/slither_fp_files/out8195.sol(711)

[33mWarning[0m for UnhandledException in contract 'BaseIPO':
    |      result = Result.Success;
    |      vault.close();
  > |      token.unpause();
    |    } else {
    |      result = Result.Failure;
  at /home/jiaming/slither_fp_files/out8195.sol(712)

[33mWarning[0m for UnhandledException in contract 'BaseIPO':
    |    } else {
    |      result = Result.Failure;
  > |      vault.enableRefunds();
    |    }
    |    state = State.Closed;
  at /home/jiaming/slither_fp_files/out8195.sol(715)

[33mWarning[0m for UnhandledException in contract 'BaseIPO':
    |
    |  function claimRefund() public {
  > |    require(token.isTokenHolder(msg.sender));
    |    if (isIpoPeriodOver() && !isFinalized) {
    |      finalizeIPO();
  at /home/jiaming/slither_fp_files/out8195.sol(723)

[33mWarning[0m for UnhandledException in contract 'BaseIPO':
    |    }
    |    require(isFinalized);
  > |    require(!token.capReached());
    |    vault.refund(msg.sender);
    |    emit EventRefundSuccess(address(this), msg.sender);
  at /home/jiaming/slither_fp_files/out8195.sol(728)

[33mWarning[0m for UnhandledException in contract 'BaseIPO':
    |    require(isFinalized);
    |    require(!token.capReached());
  > |    vault.refund(msg.sender);
    |    emit EventRefundSuccess(address(this), msg.sender);
    |  }
  at /home/jiaming/slither_fp_files/out8195.sol(729)

[33mWarning[0m for UnhandledException in contract 'BaseIPO':
    |  function payDividends() payable external onlyOwner {
    |    require(result == Result.Success);
  > |    token.depositDividends.value(msg.value)();
    |  }
    |
  at /home/jiaming/slither_fp_files/out8195.sol(735)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BaseIPO':
    |    require(_beneficiary != address(0));
    |    require(weiAmount > 0);
  > |    require(!token.capReached());
    |    require(!isIpoPeriodOver());
    |    require(state == State.IPO);
  at /home/jiaming/slither_fp_files/out8195.sol(696)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BaseIPO':
    |    require(state == State.IPO);
    |    uint tokens = getTokenAmount(weiAmount);
  > |    token.mint(_beneficiary, tokens);
    |    vault.deposit.value(msg.value)(msg.sender);
    |    if (token.capReached()) {
  at /home/jiaming/slither_fp_files/out8195.sol(700)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BaseIPO':
    |    uint tokens = getTokenAmount(weiAmount);
    |    token.mint(_beneficiary, tokens);
  > |    vault.deposit.value(msg.value)(msg.sender);
    |    if (token.capReached()) {
    |      finalizeIPO();
  at /home/jiaming/slither_fp_files/out8195.sol(701)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BaseIPO':
    |    token.mint(_beneficiary, tokens);
    |    vault.deposit.value(msg.value)(msg.sender);
  > |    if (token.capReached()) {
    |      finalizeIPO();
    |    }
  at /home/jiaming/slither_fp_files/out8195.sol(702)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BaseIPO':
    |
    |  function finalizeIPO() internal {
  > |    if (token.capReached()) {
    |      result = Result.Success;
    |      vault.close();
  at /home/jiaming/slither_fp_files/out8195.sol(709)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BaseIPO':
    |    if (token.capReached()) {
    |      result = Result.Success;
  > |      vault.close();
    |      token.unpause();
    |    } else {
  at /home/jiaming/slither_fp_files/out8195.sol(711)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BaseIPO':
    |      result = Result.Success;
    |      vault.close();
  > |      token.unpause();
    |    } else {
    |      result = Result.Failure;
  at /home/jiaming/slither_fp_files/out8195.sol(712)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BaseIPO':
    |    } else {
    |      result = Result.Failure;
  > |      vault.enableRefunds();
    |    }
    |    state = State.Closed;
  at /home/jiaming/slither_fp_files/out8195.sol(715)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BaseIPO':
    |
    |  function claimRefund() public {
  > |    require(token.isTokenHolder(msg.sender));
    |    if (isIpoPeriodOver() && !isFinalized) {
    |      finalizeIPO();
  at /home/jiaming/slither_fp_files/out8195.sol(723)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BaseIPO':
    |    }
    |    require(isFinalized);
  > |    require(!token.capReached());
    |    vault.refund(msg.sender);
    |    emit EventRefundSuccess(address(this), msg.sender);
  at /home/jiaming/slither_fp_files/out8195.sol(728)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BaseIPO':
    |    require(isFinalized);
    |    require(!token.capReached());
  > |    vault.refund(msg.sender);
    |    emit EventRefundSuccess(address(this), msg.sender);
    |  }
  at /home/jiaming/slither_fp_files/out8195.sol(729)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BaseIPO':
    |  function payDividends() payable external onlyOwner {
    |    require(result == Result.Success);
  > |    token.depositDividends.value(msg.value)();
    |  }
    |
  at /home/jiaming/slither_fp_files/out8195.sol(735)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseIPO':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out8195.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseIPO':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8195.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseIPO':
    |  function finalizeIPO() internal {
    |    if (token.capReached()) {
  > |      result = Result.Success;
    |      vault.close();
    |      token.unpause();
  at /home/jiaming/slither_fp_files/out8195.sol(710)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseIPO':
    |      token.unpause();
    |    } else {
  > |      result = Result.Failure;
    |      vault.enableRefunds();
    |    }
  at /home/jiaming/slither_fp_files/out8195.sol(714)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseIPO':
    |      vault.enableRefunds();
    |    }
  > |    state = State.Closed;
    |    isFinalized = true;
    |    emit EventIpoFinalized(address(this), result);
  at /home/jiaming/slither_fp_files/out8195.sol(717)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseIPO':
    |    }
    |    state = State.Closed;
  > |    isFinalized = true;
    |    emit EventIpoFinalized(address(this), result);
    |  }
  at /home/jiaming/slither_fp_files/out8195.sol(718)

[33mWarning[0m for DAOConstantGas in contract 'BaseToken':
    |    uint256 amount = dividendBalanceOf[msg.sender];
    |    dividendBalanceOf[msg.sender] = 0;
  > |    msg.sender.transfer(amount);
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8195.sol(627)

[33mWarning[0m for LockedEther in contract 'BaseToken':
    |// File: contracts/BaseToken.sol
    |
  > |contract BaseToken is MintableToken, PausableToken {
    |
    |  string public name; // solium-disable-line uppercase
  at /home/jiaming/slither_fp_files/out8195.sol(577)

[33mWarning[0m for TODReceiver in contract 'BaseToken':
    |    uint256 amount = dividendBalanceOf[msg.sender];
    |    dividendBalanceOf[msg.sender] = 0;
  > |    msg.sender.transfer(amount);
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8195.sol(627)

[33mWarning[0m for UnhandledException in contract 'BaseToken':
    |    uint256 amount = dividendBalanceOf[msg.sender];
    |    dividendBalanceOf[msg.sender] = 0;
  > |    msg.sender.transfer(amount);
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8195.sol(627)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BaseToken':
    |    uint256 amount = dividendBalanceOf[msg.sender];
    |    dividendBalanceOf[msg.sender] = 0;
  > |    msg.sender.transfer(amount);
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8195.sol(627)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out8195.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out8195.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/slither_fp_files/out8195.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out8195.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out8195.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out8195.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out8195.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/slither_fp_files/out8195.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out8195.sol(398)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/slither_fp_files/out8195.sol(446)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/slither_fp_files/out8195.sol(447)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |
    |  function increaseTokenCap(uint _additionalTokensAmount) onlyOwner public {
  > |    cap = cap.add(_additionalTokensAmount);
    |  }
    |
  at /home/jiaming/slither_fp_files/out8195.sol(596)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |  function updateDividends(address account) internal {
    |    uint256 owed = dividendPerToken.sub(dividendCreditedTo[account]);
  > |    dividendBalanceOf[account] = dividendBalanceOf[account].add(balanceOf(account).mul(owed));
    |    dividendCreditedTo[account] = dividendPerToken;
    |  }
  at /home/jiaming/slither_fp_files/out8195.sol(614)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |    uint256 owed = dividendPerToken.sub(dividendCreditedTo[account]);
    |    dividendBalanceOf[account] = dividendBalanceOf[account].add(balanceOf(account).mul(owed));
  > |    dividendCreditedTo[account] = dividendPerToken;
    |  }
    |
  at /home/jiaming/slither_fp_files/out8195.sol(615)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |
    |  function depositDividends() public payable onlyOwner {
  > |    dividendPerToken = dividendPerToken.add(msg.value.div(totalSupply_));
    |  }
    |
  at /home/jiaming/slither_fp_files/out8195.sol(619)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |    updateDividends(msg.sender);
    |    uint256 amount = dividendBalanceOf[msg.sender];
  > |    dividendBalanceOf[msg.sender] = 0;
    |    msg.sender.transfer(amount);
    |  }
  at /home/jiaming/slither_fp_files/out8195.sol(626)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out8195.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8195.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/slither_fp_files/out8195.sol(458)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/slither_fp_files/out8195.sol(497)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/slither_fp_files/out8195.sol(505)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out8195.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out8195.sol(244)

[33mWarning[0m for LockedEther in contract 'IpoCreator':
    |// File: contracts/IpoCreator.sol
    |
  > |contract IpoCreator {
    |  address public platformAddress = 0xB23167b1941A4fe6C4864f97281099425B07A5c0;
    |  uint public ipoPeriodInDays = 30;
  at /home/jiaming/slither_fp_files/out8195.sol(745)

[31mViolation[0m for MissingInputValidation in contract 'IpoCreator':
    |  uint public platformFee = 5;
    |
  > |  function createIpo(address _wallet, uint _tokenGoal, uint _tokenPrice, string _tokenName, string _tokenSymbol) public {
    |    new BaseIPO(msg.sender, _wallet, platformAddress, _tokenGoal, _tokenPrice, _tokenName, _tokenSymbol, ipoPeriodInDays, platformFee);
    |  }
  at /home/jiaming/slither_fp_files/out8195.sol(750)

[33mWarning[0m for MissingInputValidation in contract 'IpoCreator':
    |// File: contracts/IpoCreator.sol
    |
  > |contract IpoCreator {
    |  address public platformAddress = 0xB23167b1941A4fe6C4864f97281099425B07A5c0;
    |  uint public ipoPeriodInDays = 30;
  at /home/jiaming/slither_fp_files/out8195.sol(745)

[33mWarning[0m for MissingInputValidation in contract 'IpoCreator':
    |
    |contract IpoCreator {
  > |  address public platformAddress = 0xB23167b1941A4fe6C4864f97281099425B07A5c0;
    |  uint public ipoPeriodInDays = 30;
    |  uint public platformFee = 5;
  at /home/jiaming/slither_fp_files/out8195.sol(746)

[33mWarning[0m for MissingInputValidation in contract 'IpoCreator':
    |contract IpoCreator {
    |  address public platformAddress = 0xB23167b1941A4fe6C4864f97281099425B07A5c0;
  > |  uint public ipoPeriodInDays = 30;
    |  uint public platformFee = 5;
    |
  at /home/jiaming/slither_fp_files/out8195.sol(747)

[33mWarning[0m for MissingInputValidation in contract 'IpoCreator':
    |  address public platformAddress = 0xB23167b1941A4fe6C4864f97281099425B07A5c0;
    |  uint public ipoPeriodInDays = 30;
  > |  uint public platformFee = 5;
    |
    |  function createIpo(address _wallet, uint _tokenGoal, uint _tokenPrice, string _tokenName, string _tokenSymbol) public {
  at /home/jiaming/slither_fp_files/out8195.sol(748)

[31mViolation[0m for DAOConstantGas in contract 'IpoVault':
    |    require(state == State.Active);
    |    uint platformReward = address(this).balance.mul(platformFee).div(100);
  > |    platformWallet.transfer(platformReward);
    |    state = State.Closed;
    |    emit Closed();
  at /home/jiaming/slither_fp_files/out8195.sol(194)

[33mWarning[0m for DAOConstantGas in contract 'IpoVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    emit Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/slither_fp_files/out8195.sol(174)

[33mWarning[0m for DAOConstantGas in contract 'IpoVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8195.sol(197)

[33mWarning[0m for LockedEther in contract 'IpoVault':
    |// File: contracts/IpoVault.sol
    |
  > |contract IpoVault is RefundVault {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out8195.sol(181)

[31mViolation[0m for TODAmount in contract 'IpoVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8195.sol(197)

[31mViolation[0m for TODReceiver in contract 'IpoVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8195.sol(197)

[33mWarning[0m for TODReceiver in contract 'IpoVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    emit Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/slither_fp_files/out8195.sol(174)

[33mWarning[0m for UnhandledException in contract 'IpoVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    emit Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/slither_fp_files/out8195.sol(174)

[33mWarning[0m for UnhandledException in contract 'IpoVault':
    |    require(state == State.Active);
    |    uint platformReward = address(this).balance.mul(platformFee).div(100);
  > |    platformWallet.transfer(platformReward);
    |    state = State.Closed;
    |    emit Closed();
  at /home/jiaming/slither_fp_files/out8195.sol(194)

[33mWarning[0m for UnhandledException in contract 'IpoVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8195.sol(197)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IpoVault':
    |    require(state == State.Active);
    |    uint platformReward = address(this).balance.mul(platformFee).div(100);
  > |    platformWallet.transfer(platformReward);
    |    state = State.Closed;
    |    emit Closed();
  at /home/jiaming/slither_fp_files/out8195.sol(194)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IpoVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8195.sol(197)

[31mViolation[0m for UnrestrictedWrite in contract 'IpoVault':
    |    require(state == State.Refunding);
    |    uint256 depositedValue = deposited[investor];
  > |    deposited[investor] = 0;
    |    investor.transfer(depositedValue);
    |    emit Refunded(investor, depositedValue);
  at /home/jiaming/slither_fp_files/out8195.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'IpoVault':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out8195.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'IpoVault':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8195.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'IpoVault':
    |  function deposit(address investor) onlyOwner public payable {
    |    require(state == State.Active);
  > |    deposited[investor] = deposited[investor].add(msg.value);
    |  }
    |
  at /home/jiaming/slither_fp_files/out8195.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'IpoVault':
    |  function enableRefunds() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Refunding;
    |    emit RefundsEnabled();
    |  }
  at /home/jiaming/slither_fp_files/out8195.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'IpoVault':
    |    uint platformReward = address(this).balance.mul(platformFee).div(100);
    |    platformWallet.transfer(platformReward);
  > |    state = State.Closed;
    |    emit Closed();
    |    wallet.transfer(address(this).balance);
  at /home/jiaming/slither_fp_files/out8195.sol(195)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/slither_fp_files/out8195.sol(414)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out8195.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out8195.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/slither_fp_files/out8195.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out8195.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out8195.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out8195.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out8195.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/slither_fp_files/out8195.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out8195.sol(398)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/slither_fp_files/out8195.sol(446)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/slither_fp_files/out8195.sol(447)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out8195.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8195.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/slither_fp_files/out8195.sol(458)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/slither_fp_files/out8195.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out8195.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/slither_fp_files/out8195.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out8195.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out8195.sol(57)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8195.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out8195.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8195.sol(60)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/slither_fp_files/out8195.sol(470)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out8195.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/slither_fp_files/out8195.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out8195.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out8195.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/slither_fp_files/out8195.sol(474)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/slither_fp_files/out8195.sol(496)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/slither_fp_files/out8195.sol(504)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8195.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out8195.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8195.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/slither_fp_files/out8195.sol(497)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/slither_fp_files/out8195.sol(505)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | * @dev StandardToken modified with pausable transfers.
    | **/
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(
  at /home/jiaming/slither_fp_files/out8195.sol(516)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out8195.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out8195.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out8195.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out8195.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/slither_fp_files/out8195.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out8195.sol(398)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out8195.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8195.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/slither_fp_files/out8195.sol(497)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/slither_fp_files/out8195.sol(505)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/slither_fp_files/out8195.sol(158)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    emit Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/slither_fp_files/out8195.sol(174)

[33mWarning[0m for LockedEther in contract 'RefundVault':
    | * and forwarding it if crowdsale is successful.
    | */
  > |contract RefundVault is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out8195.sol(124)

[31mViolation[0m for TODAmount in contract 'RefundVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/slither_fp_files/out8195.sol(158)

[31mViolation[0m for TODReceiver in contract 'RefundVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/slither_fp_files/out8195.sol(158)

[33mWarning[0m for TODReceiver in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    emit Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/slither_fp_files/out8195.sol(174)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/slither_fp_files/out8195.sol(158)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    emit Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/slither_fp_files/out8195.sol(174)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefundVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/slither_fp_files/out8195.sol(158)

[31mViolation[0m for UnrestrictedWrite in contract 'RefundVault':
    |    require(state == State.Refunding);
    |    uint256 depositedValue = deposited[investor];
  > |    deposited[investor] = 0;
    |    investor.transfer(depositedValue);
    |    emit Refunded(investor, depositedValue);
  at /home/jiaming/slither_fp_files/out8195.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out8195.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8195.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function deposit(address investor) onlyOwner public payable {
    |    require(state == State.Active);
  > |    deposited[investor] = deposited[investor].add(msg.value);
    |  }
    |
  at /home/jiaming/slither_fp_files/out8195.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function close() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Closed;
    |    emit Closed();
    |    wallet.transfer(address(this).balance);
  at /home/jiaming/slither_fp_files/out8195.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function enableRefunds() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Refunding;
    |    emit RefundsEnabled();
    |  }
  at /home/jiaming/slither_fp_files/out8195.sol(163)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/slither_fp_files/out8195.sol(70)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/slither_fp_files/out8195.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out8195.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out8195.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out8195.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out8195.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/slither_fp_files/out8195.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out8195.sol(398)


