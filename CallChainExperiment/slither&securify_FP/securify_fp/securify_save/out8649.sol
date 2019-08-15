Processing contract: /home/jiaming/slither_fp_files/out8649.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8649.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8649.sol:CanReclaimToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8649.sol:ERC20
Processing contract: /home/jiaming/slither_fp_files/out8649.sol:ERC20Basic
Processing contract: /home/jiaming/slither_fp_files/out8649.sol:MenloSaleBase
Processing contract: /home/jiaming/slither_fp_files/out8649.sol:MenloToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8649.sol:MenloTokenReceiver
Processing contract: /home/jiaming/slither_fp_files/out8649.sol:MenloTokenSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8649.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8649.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8649.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8649.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8649.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8649.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out8649.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out8649.sol(190)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |}
    |
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/slither_fp_files/out8649.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out8649.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out8649.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/slither_fp_files/out8649.sol(224)

[33mWarning[0m for LockedEther in contract 'CanReclaimToken':
    |}
    |
  > |contract CanReclaimToken is Ownable {
    |  using SafeERC20 for ERC20Basic;
    |
  at /home/jiaming/slither_fp_files/out8649.sol(146)

[33mWarning[0m for UnhandledException in contract 'CanReclaimToken':
    |   */
    |  function reclaimToken(ERC20Basic _token) external onlyOwner {
  > |    uint256 balance = _token.balanceOf(this);
    |    _token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/slither_fp_files/out8649.sol(154)

[33mWarning[0m for UnhandledException in contract 'CanReclaimToken':
    |    internal
    |  {
  > |    require(_token.transfer(_to, _value));
    |  }
    |
  at /home/jiaming/slither_fp_files/out8649.sol(254)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CanReclaimToken':
    |   */
    |  function reclaimToken(ERC20Basic _token) external onlyOwner {
  > |    uint256 balance = _token.balanceOf(this);
    |    _token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/slither_fp_files/out8649.sol(154)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CanReclaimToken':
    |    internal
    |  {
  > |    require(_token.transfer(_to, _value));
    |  }
    |
  at /home/jiaming/slither_fp_files/out8649.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'CanReclaimToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out8649.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'CanReclaimToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8649.sol(102)

[33mWarning[0m for LockedEther in contract 'MenloToken':
    |}
    |
  > |contract MenloToken is PausableToken, BurnableToken, CanReclaimToken {
    |
    |  // Token properties
  at /home/jiaming/slither_fp_files/out8649.sol(663)

[33mWarning[0m for UnhandledException in contract 'MenloToken':
    |   */
    |  function reclaimToken(ERC20Basic _token) external onlyOwner {
  > |    uint256 balance = _token.balanceOf(this);
    |    _token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/slither_fp_files/out8649.sol(154)

[33mWarning[0m for UnhandledException in contract 'MenloToken':
    |    internal
    |  {
  > |    require(_token.transfer(_to, _value));
    |  }
    |
  at /home/jiaming/slither_fp_files/out8649.sol(254)

[33mWarning[0m for UnhandledException in contract 'MenloToken':
    |  function transferAndCall(address _to, uint256 _value, uint256 _action, bytes _data) public returns (bool) {
    |    if (transfer(_to, _value)) {
  > |      require (MenloTokenReceiver(_to).onTokenReceived(msg.sender, _value, _action, _data) == ONE_RECEIVED, "Target contract onTokenReceived failed");
    |      return true;
    |    }
  at /home/jiaming/slither_fp_files/out8649.sol(744)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MenloToken':
    |   */
    |  function reclaimToken(ERC20Basic _token) external onlyOwner {
  > |    uint256 balance = _token.balanceOf(this);
    |    _token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/slither_fp_files/out8649.sol(154)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MenloToken':
    |    internal
    |  {
  > |    require(_token.transfer(_to, _value));
    |  }
    |
  at /home/jiaming/slither_fp_files/out8649.sol(254)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MenloToken':
    |  function transferAndCall(address _to, uint256 _value, uint256 _action, bytes _data) public returns (bool) {
    |    if (transfer(_to, _value)) {
  > |      require (MenloTokenReceiver(_to).onTokenReceived(msg.sender, _value, _action, _data) == ONE_RECEIVED, "Target contract onTokenReceived failed");
    |      return true;
    |    }
  at /home/jiaming/slither_fp_files/out8649.sol(744)

[33mWarning[0m for UnrestrictedWrite in contract 'MenloToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8649.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'MenloToken':
    |   */
    |  function pause() public onlyOwner whenNotPaused {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/slither_fp_files/out8649.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'MenloToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out8649.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'MenloToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out8649.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'MenloToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/slither_fp_files/out8649.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'MenloToken':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/slither_fp_files/out8649.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'MenloToken':
    |    require(_to != address(0));
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/slither_fp_files/out8649.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'MenloToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out8649.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'MenloToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out8649.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'MenloToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out8649.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'MenloToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out8649.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'MenloToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/slither_fp_files/out8649.sol(381)

[33mWarning[0m for UnrestrictedWrite in contract 'MenloToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out8649.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'MenloToken':
    |    unpause();
    |    transfer(_crowdsale, balances[msg.sender]);  // Transfer left over balance after private presale allocations
  > |    crowdsale = _crowdsale;
    |    pause();
    |    transferOwnership(_crowdsale);
  at /home/jiaming/slither_fp_files/out8649.sol(720)

[33mWarning[0m for UnrestrictedWrite in contract 'MenloToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out8649.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'MenloToken':
    |   */
    |  function unpause() public onlyOwner whenPaused {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/slither_fp_files/out8649.sol(141)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/slither_fp_files/out8649.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out8649.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/slither_fp_files/out8649.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out8649.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out8649.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8649.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out8649.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8649.sol(102)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/slither_fp_files/out8649.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out8649.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/slither_fp_files/out8649.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out8649.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out8649.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/slither_fp_files/out8649.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() public onlyOwner whenNotPaused {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/slither_fp_files/out8649.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() public onlyOwner whenPaused {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/slither_fp_files/out8649.sol(140)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8649.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out8649.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8649.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() public onlyOwner whenNotPaused {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/slither_fp_files/out8649.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() public onlyOwner whenPaused {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/slither_fp_files/out8649.sol(141)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    |}
    |
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(
  at /home/jiaming/slither_fp_files/out8649.sol(391)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out8649.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out8649.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out8649.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out8649.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/slither_fp_files/out8649.sol(381)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out8649.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out8649.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out8649.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() public onlyOwner whenNotPaused {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/slither_fp_files/out8649.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() public onlyOwner whenPaused {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/slither_fp_files/out8649.sol(141)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    |}
    |
  > |library SafeERC20 {
    |  function safeTransfer(
    |    ERC20Basic _token,
  at /home/jiaming/slither_fp_files/out8649.sol(246)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.13;
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/slither_fp_files/out8649.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/slither_fp_files/out8649.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out8649.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out8649.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out8649.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out8649.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/slither_fp_files/out8649.sol(381)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out8649.sol(383)


