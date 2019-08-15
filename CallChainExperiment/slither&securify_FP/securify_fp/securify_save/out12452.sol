Processing contract: /home/jiaming/slither_fp_files/out12452.sol:C2L
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out12452.sol:ContractReceiver
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out12452.sol:ERC223
Processing contract: /home/jiaming/slither_fp_files/out12452.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out12452.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'C2L':
    |  @desc Contract for the C2L token that carries out all token-specific behaviors for the C2L token
    |*/
  > |contract C2L is ERC223, Owned {
    |  //constants
    |  uint internal constant INITIAL_COIN_BALANCE = 21000000; //starting balance of 21 million coins
  at /home/jiaming/slither_fp_files/out12452.sol(135)

[33mWarning[0m for UnhandledException in contract 'C2L':
    |      balances[msg.sender] = SafeMath.sub(balances[msg.sender], _value);
    |      balances[_to] = SafeMath.add(balances[_to], _value);
  > |      assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |      emit Transfer(msg.sender, _to, _value, _data); //log the transfer
    |      setEditedFalse(_to);
  at /home/jiaming/slither_fp_files/out12452.sol(242)

[33mWarning[0m for UnhandledException in contract 'C2L':
    |      balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |      ContractReceiver receiver = ContractReceiver(_to);
  > |      receiver.tokenFallback(msg.sender, _value, _data);
    |      emit Transfer(msg.sender, _to, _value, _data);
    |      setEditedFalse(_to);
  at /home/jiaming/slither_fp_files/out12452.sol(314)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'C2L':
    |      balances[msg.sender] = SafeMath.sub(balances[msg.sender], _value);
    |      balances[_to] = SafeMath.add(balances[_to], _value);
  > |      assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |      emit Transfer(msg.sender, _to, _value, _data); //log the transfer
    |      setEditedFalse(_to);
  at /home/jiaming/slither_fp_files/out12452.sol(242)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'C2L':
    |      balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |      ContractReceiver receiver = ContractReceiver(_to);
  > |      receiver.tokenFallback(msg.sender, _value, _data);
    |      emit Transfer(msg.sender, _to, _value, _data);
    |      setEditedFalse(_to);
  at /home/jiaming/slither_fp_files/out12452.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'C2L':
    |
    |  function transferOwnership(address _newOwner) public onlyOwner {
  > |    newOwner = _newOwner;
    |  }
    |
  at /home/jiaming/slither_fp_files/out12452.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'C2L':
    |    require(msg.sender == newOwner);
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |    newOwner = address(0); //reset newOwner to 0/null
    |  }
  at /home/jiaming/slither_fp_files/out12452.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'C2L':
    |    emit OwnershipTransferred(owner, newOwner);
    |    owner = newOwner;
  > |    newOwner = address(0); //reset newOwner to 0/null
    |  }
    |}
  at /home/jiaming/slither_fp_files/out12452.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'C2L':
    |  //toggle beingEdited status of this account
    |  function setEditedTrue(address _subject) private {
  > |    beingEdited[_subject] = true;
    |  }
    |
  at /home/jiaming/slither_fp_files/out12452.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'C2L':
    |
    |  function setEditedFalse(address _subject) private {
  > |    beingEdited[_subject] = false;
    |  }
    |
  at /home/jiaming/slither_fp_files/out12452.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'C2L':
    |    require(beingEdited[owner] != true);
    |    setEditedTrue(owner);
  > |    totalCoinSupply = SafeMath.add(totalCoinSupply, amount);
    |    balances[owner] = SafeMath.add(balances[owner], amount);
    |    setEditedFalse(owner);
  at /home/jiaming/slither_fp_files/out12452.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'C2L':
    |    setEditedTrue(owner);
    |    totalCoinSupply = SafeMath.add(totalCoinSupply, amount);
  > |    balances[owner] = SafeMath.add(balances[owner], amount);
    |    setEditedFalse(owner);
    |  }
  at /home/jiaming/slither_fp_files/out12452.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'C2L':
    |      setEditedTrue(msg.sender);
    |      //transfer the coins
  > |      balances[msg.sender] = SafeMath.sub(balances[msg.sender], _value);
    |      balances[_to] = SafeMath.add(balances[_to], _value);
    |      assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
  at /home/jiaming/slither_fp_files/out12452.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'C2L':
    |      //transfer the coins
    |      balances[msg.sender] = SafeMath.sub(balances[msg.sender], _value);
  > |      balances[_to] = SafeMath.add(balances[_to], _value);
    |      assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |      emit Transfer(msg.sender, _to, _value, _data); //log the transfer
  at /home/jiaming/slither_fp_files/out12452.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'C2L':
    |      setEditedTrue(_to);
    |      setEditedTrue(msg.sender);
  > |      balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
    |      balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |      emit Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/slither_fp_files/out12452.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'C2L':
    |      setEditedTrue(msg.sender);
    |      balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
  > |      balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |      emit Transfer(msg.sender, _to, _value, _data);
    |      setEditedFalse(_to);
  at /home/jiaming/slither_fp_files/out12452.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'C2L':
    |      setEditedTrue(_to);
    |      setEditedTrue(msg.sender);
  > |      balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
    |      balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |      ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/slither_fp_files/out12452.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'C2L':
    |      setEditedTrue(msg.sender);
    |      balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
  > |      balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |      ContractReceiver receiver = ContractReceiver(_to);
    |      receiver.tokenFallback(msg.sender, _value, _data);
  at /home/jiaming/slither_fp_files/out12452.sol(312)

[33mWarning[0m for LockedEther in contract 'ContractReceiver':
    | */
    | 
  > | contract ContractReceiver {
    |     
    |    struct TKN {
  at /home/jiaming/slither_fp_files/out12452.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'ContractReceiver':
    |    
    |    
  > |    function tokenFallback(address _from, uint _value, bytes _data) public pure {
    |      TKN memory tkn;
    |      tkn.sender = _from;
  at /home/jiaming/slither_fp_files/out12452.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'ContractReceiver':
    | */
    | 
  > | contract ContractReceiver {
    |     
    |    struct TKN {
  at /home/jiaming/slither_fp_files/out12452.sol(103)

[33mWarning[0m for LockedEther in contract 'Owned':
    |  -handles tracking current owner and transferring ownership to new owners
    |*/
  > |contract Owned {
    |  address public owner;
    |  address private newOwner;
  at /home/jiaming/slither_fp_files/out12452.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |  }
    |
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    newOwner = _newOwner;
    |  }
  at /home/jiaming/slither_fp_files/out12452.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |*/
    |contract Owned {
  > |  address public owner;
    |  address private newOwner;
    |
  at /home/jiaming/slither_fp_files/out12452.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |  }
    |
  > |  function acceptOwnership() public {
    |    require(msg.sender == newOwner);
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/slither_fp_files/out12452.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |  function transferOwnership(address _newOwner) public onlyOwner {
  > |    newOwner = _newOwner;
    |  }
    |
  at /home/jiaming/slither_fp_files/out12452.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    require(msg.sender == newOwner);
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |    newOwner = address(0); //reset newOwner to 0/null
    |  }
  at /home/jiaming/slither_fp_files/out12452.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    emit OwnershipTransferred(owner, newOwner);
    |    owner = newOwner;
  > |    newOwner = address(0); //reset newOwner to 0/null
    |  }
    |}
  at /home/jiaming/slither_fp_files/out12452.sol(76)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  uint constant public MAX_UINT256 =
    |    0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
  at /home/jiaming/slither_fp_files/out12452.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    | */
    |library SafeMath {
  > |  uint constant public MAX_UINT256 =
    |    0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    |
  at /home/jiaming/slither_fp_files/out12452.sol(6)


