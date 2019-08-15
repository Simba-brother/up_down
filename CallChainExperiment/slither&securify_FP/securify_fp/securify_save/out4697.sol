Processing contract: /home/jiaming/slither_fp_files/out4697.sol:Babylon
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out4697.sol:BabyloniaToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out4697.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out4697.sol:ERC20
Processing contract: /home/jiaming/slither_fp_files/out4697.sol:ERC20Basic
Processing contract: /home/jiaming/slither_fp_files/out4697.sol:EthPriceOracleI
Processing contract: /home/jiaming/slither_fp_files/out4697.sol:MintAndBurnToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out4697.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out4697.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out4697.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out4697.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out4697.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out4697.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Babylon':
    |  function withdrawETH(address _to) external onlyOwner {
    |    require(_to != address(0), "invalid _to address");
  > |    _to.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(616)

[33mWarning[0m for LockedEther in contract 'Babylon':
    | * in place before tokens can be claimed
    | */
  > |contract Babylon is Pausable {
    |  using SafeMath for uint256;
    |  using SafeERC20 for BabyloniaToken;
  at /home/jiaming/slither_fp_files/out4697.sol(509)

[31mViolation[0m for TODAmount in contract 'Babylon':
    |  function withdrawETH(address _to) external onlyOwner {
    |    require(_to != address(0), "invalid _to address");
  > |    _to.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(616)

[33mWarning[0m for TODReceiver in contract 'Babylon':
    |  function withdrawETH(address _to) external onlyOwner {
    |    require(_to != address(0), "invalid _to address");
  > |    _to.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(616)

[33mWarning[0m for TODReceiver in contract 'Babylon':
    |
    |    // refund any overpayment
  > |    if (msg.value > totalPriceInWei) msg.sender.transfer(msg.value - totalPriceInWei);
    |
    |    _createExchangeRecord(0, _amountBBY, totalPriceInWei);
  at /home/jiaming/slither_fp_files/out4697.sol(725)

[33mWarning[0m for UnhandledException in contract 'Babylon':
    |    internal
    |  {
  > |    require(_token.transfer(_to, _value));
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(204)

[33mWarning[0m for UnhandledException in contract 'Babylon':
    |  function withdrawHBZ(address _to) external onlyOwner {
    |    require(_to != address(0), "invalid _to address");
  > |    require(helbizToken.transfer(_to, helbizToken.balanceOf(address(this))));
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(607)

[33mWarning[0m for UnhandledException in contract 'Babylon':
    |  function withdrawETH(address _to) external onlyOwner {
    |    require(_to != address(0), "invalid _to address");
  > |    _to.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(616)

[33mWarning[0m for UnhandledException in contract 'Babylon':
    |    require(_to != address(0), "invalid _to address");
    |    require(_amountBBY > 0, "_amountBBY must be greater than 0");
  > |    require(babyloniaToken.transfer(_to, _amountBBY));
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(627)

[33mWarning[0m for UnhandledException in contract 'Babylon':
    |   */
    |  function burnRemainderBBY() public onlyOwner {
  > |    uint amountBBY = SafeMath.sub(babyloniaToken.balanceOf(address(this)), babyloniaTokensLocked);
    |    babyloniaToken.burn(amountBBY);
    |  }
  at /home/jiaming/slither_fp_files/out4697.sol(634)

[33mWarning[0m for UnhandledException in contract 'Babylon':
    |  function burnRemainderBBY() public onlyOwner {
    |    uint amountBBY = SafeMath.sub(babyloniaToken.balanceOf(address(this)), babyloniaTokensLocked);
  > |    babyloniaToken.burn(amountBBY);
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(635)

[33mWarning[0m for UnhandledException in contract 'Babylon':
    |    // the contract must have enough tokens - considering the locked ones
    |    uint amountBBY = SafeMath.div(_amountHBZ, exchangeRate);
  > |    uint contractBalanceBBY = babyloniaToken.balanceOf(address(this));
    |    require(SafeMath.sub(contractBalanceBBY, babyloniaTokensLocked) >= amountBBY, "contract has insufficient BBY");
    |
  at /home/jiaming/slither_fp_files/out4697.sol(691)

[33mWarning[0m for UnhandledException in contract 'Babylon':
    |
    |    // transfer the HBZ tokens to this contract
  > |    require(helbizToken.transferFrom(msg.sender, address(this), _amountHBZ));
    |
    |    _createExchangeRecord(_amountHBZ, amountBBY, 0);
  at /home/jiaming/slither_fp_files/out4697.sol(695)

[33mWarning[0m for UnhandledException in contract 'Babylon':
    |
    |    bytes32 val;
  > |    (val,) = ethPriceOracle.compute();
    |    // divide to get the number of cents in 1 ETH
    |    uint256 usdCentsPerETH = SafeMath.div(uint256(val), 10**16);
  at /home/jiaming/slither_fp_files/out4697.sol(710)

[33mWarning[0m for UnhandledException in contract 'Babylon':
    |    // ensure the user sent enough funds and that we have enough BBY
    |    require(msg.value >= totalPriceInWei, "Insufficient ETH value");
  > |    require(SafeMath.sub(babyloniaToken.balanceOf(address(this)), babyloniaTokensLocked) >= _amountBBY, "contract has insufficient BBY");
    |
    |    // refund any overpayment
  at /home/jiaming/slither_fp_files/out4697.sol(722)

[33mWarning[0m for UnhandledException in contract 'Babylon':
    |
    |    // refund any overpayment
  > |    if (msg.value > totalPriceInWei) msg.sender.transfer(msg.value - totalPriceInWei);
    |
    |    _createExchangeRecord(0, _amountBBY, totalPriceInWei);
  at /home/jiaming/slither_fp_files/out4697.sol(725)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Babylon':
    |    internal
    |  {
  > |    require(_token.transfer(_to, _value));
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(204)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Babylon':
    |  function withdrawHBZ(address _to) external onlyOwner {
    |    require(_to != address(0), "invalid _to address");
  > |    require(helbizToken.transfer(_to, helbizToken.balanceOf(address(this))));
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(607)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Babylon':
    |  function withdrawETH(address _to) external onlyOwner {
    |    require(_to != address(0), "invalid _to address");
  > |    _to.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(616)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Babylon':
    |    require(_to != address(0), "invalid _to address");
    |    require(_amountBBY > 0, "_amountBBY must be greater than 0");
  > |    require(babyloniaToken.transfer(_to, _amountBBY));
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(627)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Babylon':
    |   */
    |  function burnRemainderBBY() public onlyOwner {
  > |    uint amountBBY = SafeMath.sub(babyloniaToken.balanceOf(address(this)), babyloniaTokensLocked);
    |    babyloniaToken.burn(amountBBY);
    |  }
  at /home/jiaming/slither_fp_files/out4697.sol(634)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Babylon':
    |  function burnRemainderBBY() public onlyOwner {
    |    uint amountBBY = SafeMath.sub(babyloniaToken.balanceOf(address(this)), babyloniaTokensLocked);
  > |    babyloniaToken.burn(amountBBY);
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(635)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Babylon':
    |    // the contract must have enough tokens - considering the locked ones
    |    uint amountBBY = SafeMath.div(_amountHBZ, exchangeRate);
  > |    uint contractBalanceBBY = babyloniaToken.balanceOf(address(this));
    |    require(SafeMath.sub(contractBalanceBBY, babyloniaTokensLocked) >= amountBBY, "contract has insufficient BBY");
    |
  at /home/jiaming/slither_fp_files/out4697.sol(691)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Babylon':
    |
    |    // transfer the HBZ tokens to this contract
  > |    require(helbizToken.transferFrom(msg.sender, address(this), _amountHBZ));
    |
    |    _createExchangeRecord(_amountHBZ, amountBBY, 0);
  at /home/jiaming/slither_fp_files/out4697.sol(695)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Babylon':
    |
    |    bytes32 val;
  > |    (val,) = ethPriceOracle.compute();
    |    // divide to get the number of cents in 1 ETH
    |    uint256 usdCentsPerETH = SafeMath.div(uint256(val), 10**16);
  at /home/jiaming/slither_fp_files/out4697.sol(710)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Babylon':
    |    // ensure the user sent enough funds and that we have enough BBY
    |    require(msg.value >= totalPriceInWei, "Insufficient ETH value");
  > |    require(SafeMath.sub(babyloniaToken.balanceOf(address(this)), babyloniaTokensLocked) >= _amountBBY, "contract has insufficient BBY");
    |
    |    // refund any overpayment
  at /home/jiaming/slither_fp_files/out4697.sol(722)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Babylon':
    |
    |    // refund any overpayment
  > |    if (msg.value > totalPriceInWei) msg.sender.transfer(msg.value - totalPriceInWei);
    |
    |    _createExchangeRecord(0, _amountBBY, totalPriceInWei);
  at /home/jiaming/slither_fp_files/out4697.sol(725)

[33mWarning[0m for UnrestrictedWrite in contract 'Babylon':
    |
    |/**
  > | * @title SafeMath
    | * @dev Math operations with safety checks that throw on error
    | */
  at /home/jiaming/slither_fp_files/out4697.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'Babylon':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'Babylon':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out4697.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'Babylon':
    |   */
    |  function pause() public onlyOwner whenNotPaused {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/slither_fp_files/out4697.sol(490)

[33mWarning[0m for UnrestrictedWrite in contract 'Babylon':
    |   */
    |  function unpause() public onlyOwner whenPaused {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/slither_fp_files/out4697.sol(498)

[33mWarning[0m for UnrestrictedWrite in contract 'Babylon':
    |  function setExchangeRate(uint8 _newRate) external onlyOwner {
    |    require(_newRate > 0, "new rate must not be 0");
  > |    exchangeRate = _newRate;
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(644)

[33mWarning[0m for UnrestrictedWrite in contract 'Babylon':
    |  function setUSDCentsExchangeRate(uint8 _newRate) external onlyOwner {
    |    require(_newRate > 0, "new rate must not be 0");
  > |    usdCentsExchangeRate = _newRate;
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(653)

[33mWarning[0m for UnrestrictedWrite in contract 'Babylon':
    |  function setExchangeLockTime(uint32 _newLockTime) external onlyOwner {
    |    require(_newLockTime > 0, "new lock time must not be 0");
  > |    exchangeLockTime = _newLockTime;
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(662)

[33mWarning[0m for UnrestrictedWrite in contract 'Babylon':
    |   */
    |  function setEthExchangeEnabled(bool _enabled) external onlyOwner {
  > |    ethExchangeEnabled = _enabled;
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(670)

[33mWarning[0m for UnrestrictedWrite in contract 'Babylon':
    |
    |    // decrease the counter
  > |    babyloniaTokensLocked = SafeMath.sub(babyloniaTokensLocked, tokenExchange.amountBBY);
    |
    |    // delete from storage and lookup
  at /home/jiaming/slither_fp_files/out4697.sol(742)

[33mWarning[0m for UnrestrictedWrite in contract 'Babylon':
    |
    |    // delete from storage and lookup
  > |    delete tokenExchanges[activeTokenExchanges[msg.sender]];
    |    delete activeTokenExchanges[msg.sender];
    |
  at /home/jiaming/slither_fp_files/out4697.sol(745)

[33mWarning[0m for UnrestrictedWrite in contract 'Babylon':
    |    // delete from storage and lookup
    |    delete tokenExchanges[activeTokenExchanges[msg.sender]];
  > |    delete activeTokenExchanges[msg.sender];
    |
    |    // transfer BBY tokens to the sender
  at /home/jiaming/slither_fp_files/out4697.sol(746)

[33mWarning[0m for UnrestrictedWrite in contract 'Babylon':
    |    });
    |    // add to storage and lookup
  > |    activeTokenExchanges[msg.sender] = tokenExchanges.push(tokenExchange) - 1;
    |
    |    // increase the counter
  at /home/jiaming/slither_fp_files/out4697.sol(816)

[33mWarning[0m for UnrestrictedWrite in contract 'Babylon':
    |
    |    // increase the counter
  > |    babyloniaTokensLocked = SafeMath.add(babyloniaTokensLocked, _amountBBY);
    |
    |    emit TokenExchangeCreated(msg.sender, _amountHBZ, releasedAt);
  at /home/jiaming/slither_fp_files/out4697.sol(819)

[33mWarning[0m for LockedEther in contract 'BabyloniaToken':
    | * @title BabyloniaToken
    | */
  > |contract BabyloniaToken is MintAndBurnToken {
    |
    |  // DetailedERC20 variables
  at /home/jiaming/slither_fp_files/out4697.sol(443)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyloniaToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out4697.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyloniaToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out4697.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyloniaToken':
    |    require(_to != address(0));
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/slither_fp_files/out4697.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyloniaToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out4697.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyloniaToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out4697.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyloniaToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out4697.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyloniaToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out4697.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyloniaToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/slither_fp_files/out4697.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyloniaToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out4697.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyloniaToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/slither_fp_files/out4697.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyloniaToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/slither_fp_files/out4697.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyloniaToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/slither_fp_files/out4697.sol(432)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyloniaToken':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/slither_fp_files/out4697.sol(433)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyloniaToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyloniaToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out4697.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyloniaToken':
    |   */
    |  function finishMinting() public onlyOwner canMint returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/slither_fp_files/out4697.sol(398)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out4697.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out4697.sol(154)

[33mWarning[0m for LockedEther in contract 'MintAndBurnToken':
    | * @dev StandardToken that is mintable and burnable
    | */
  > |contract MintAndBurnToken is MintableToken {
    |
    |  // -----------------------------------
  at /home/jiaming/slither_fp_files/out4697.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'MintAndBurnToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out4697.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'MintAndBurnToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out4697.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'MintAndBurnToken':
    |    require(_to != address(0));
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/slither_fp_files/out4697.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'MintAndBurnToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out4697.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'MintAndBurnToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out4697.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'MintAndBurnToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out4697.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'MintAndBurnToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out4697.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'MintAndBurnToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/slither_fp_files/out4697.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'MintAndBurnToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out4697.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'MintAndBurnToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/slither_fp_files/out4697.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'MintAndBurnToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/slither_fp_files/out4697.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'MintAndBurnToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/slither_fp_files/out4697.sol(432)

[33mWarning[0m for UnrestrictedWrite in contract 'MintAndBurnToken':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/slither_fp_files/out4697.sol(433)

[33mWarning[0m for UnrestrictedWrite in contract 'MintAndBurnToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'MintAndBurnToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out4697.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'MintAndBurnToken':
    |   */
    |  function finishMinting() public onlyOwner canMint returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/slither_fp_files/out4697.sol(398)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/slither_fp_files/out4697.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out4697.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out4697.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_to != address(0));
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/slither_fp_files/out4697.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out4697.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out4697.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out4697.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out4697.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/slither_fp_files/out4697.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out4697.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/slither_fp_files/out4697.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/slither_fp_files/out4697.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out4697.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() public onlyOwner canMint returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/slither_fp_files/out4697.sol(398)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/slither_fp_files/out4697.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out4697.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/slither_fp_files/out4697.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out4697.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out4697.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out4697.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out4697.sol(111)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/slither_fp_files/out4697.sol(463)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out4697.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/slither_fp_files/out4697.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out4697.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out4697.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/slither_fp_files/out4697.sol(467)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() public onlyOwner whenNotPaused {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/slither_fp_files/out4697.sol(489)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() public onlyOwner whenPaused {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/slither_fp_files/out4697.sol(497)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out4697.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out4697.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out4697.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() public onlyOwner whenNotPaused {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/slither_fp_files/out4697.sol(490)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() public onlyOwner whenPaused {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/slither_fp_files/out4697.sol(498)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |  function safeTransfer(
    |    ERC20Basic _token,
  at /home/jiaming/slither_fp_files/out4697.sol(196)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/slither_fp_files/out4697.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/slither_fp_files/out4697.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out4697.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out4697.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out4697.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out4697.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/slither_fp_files/out4697.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out4697.sol(341)


