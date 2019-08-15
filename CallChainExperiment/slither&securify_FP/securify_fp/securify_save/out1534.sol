Processing contract: /home/jiaming/slither_fp_files/out1534.sol:cashbox
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out1534.sol:extended
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out1534.sol:purse
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out1534.sol:tribe
[33mWarning[0m for LockedEther in contract 'extended':
    |}
    |
  > |contract extended
    |{
    |	enum	stage {prepare, private_sale, redemption, public_sale, complete}
  at /home/jiaming/slither_fp_files/out1534.sol(8)

[31mViolation[0m for DAOConstantGas in contract 'purse':
    |			if (address (this).balance < odds || _recipient == address (0)) revert ();
    |			
  > |			_recipient.transfer (odds);
    |		}
    |		else
  at /home/jiaming/slither_fp_files/out1534.sol(195)

[33mWarning[0m for LockedEther in contract 'purse':
    |}
    |
  > |contract purse is extended
    |{
    |	address	public owner = address (0);
  at /home/jiaming/slither_fp_files/out1534.sol(63)

[31mViolation[0m for TODAmount in contract 'purse':
    |	    if (address (this).balance > 0 && (msg.sender == owner || msg.sender == trust))
    |	    {
  > |	        _reciever.transfer (address (this).balance);
    |	        
    |	        emit EmergencySituation (_reciever, _reason, msg.sender);
  at /home/jiaming/slither_fp_files/out1534.sol(109)

[33mWarning[0m for TODAmount in contract 'purse':
    |			if (address (this).balance < odds || _recipient == address (0)) revert ();
    |			
  > |			_recipient.transfer (odds);
    |		}
    |		else
  at /home/jiaming/slither_fp_files/out1534.sol(195)

[33mWarning[0m for TODAmount in contract 'purse':
    |			
    |			if (msg.value < odds) revert ();
  > |			if (msg.value > odds) msg.sender.transfer (msub (msg.value, odds));
    |		}
    |		
  at /home/jiaming/slither_fp_files/out1534.sol(202)

[33mWarning[0m for TODReceiver in contract 'purse':
    |	    if (address (this).balance > 0 && (msg.sender == owner || msg.sender == trust))
    |	    {
  > |	        _reciever.transfer (address (this).balance);
    |	        
    |	        emit EmergencySituation (_reciever, _reason, msg.sender);
  at /home/jiaming/slither_fp_files/out1534.sol(109)

[33mWarning[0m for TODReceiver in contract 'purse':
    |			if (address (this).balance < odds || _recipient == address (0)) revert ();
    |			
  > |			_recipient.transfer (odds);
    |		}
    |		else
  at /home/jiaming/slither_fp_files/out1534.sol(195)

[33mWarning[0m for TODReceiver in contract 'purse':
    |			
    |			if (msg.value < odds) revert ();
  > |			if (msg.value > odds) msg.sender.transfer (msub (msg.value, odds));
    |		}
    |		
  at /home/jiaming/slither_fp_files/out1534.sol(202)

[33mWarning[0m for UnhandledException in contract 'purse':
    |	    if (address (this).balance > 0 && (msg.sender == owner || msg.sender == trust))
    |	    {
  > |	        _reciever.transfer (address (this).balance);
    |	        
    |	        emit EmergencySituation (_reciever, _reason, msg.sender);
  at /home/jiaming/slither_fp_files/out1534.sol(109)

[33mWarning[0m for UnhandledException in contract 'purse':
    |			if (address (this).balance < odds || _recipient == address (0)) revert ();
    |			
  > |			_recipient.transfer (odds);
    |		}
    |		else
  at /home/jiaming/slither_fp_files/out1534.sol(195)

[33mWarning[0m for UnhandledException in contract 'purse':
    |			
    |			if (msg.value < odds) revert ();
  > |			if (msg.value > odds) msg.sender.transfer (msub (msg.value, odds));
    |		}
    |		
  at /home/jiaming/slither_fp_files/out1534.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'purse':
    |			if (address (this).balance < odds || _recipient == address (0)) revert ();
    |			
  > |			_recipient.transfer (odds);
    |		}
    |		else
  at /home/jiaming/slither_fp_files/out1534.sol(195)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'purse':
    |			
    |			if (msg.value < odds) revert ();
  > |			if (msg.value > odds) msg.sender.transfer (msub (msg.value, odds));
    |		}
    |		
  at /home/jiaming/slither_fp_files/out1534.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'purse':
    |	bool	private locker = false;
    |	
  > |	modifier reentrancy {require (locker == false); locker = true; _; locker = false;}
    |	
    |	function is_contract (address _address) internal view returns (bool)
  at /home/jiaming/slither_fp_files/out1534.sol(13)

[33mWarning[0m for UnrestrictedWrite in contract 'purse':
    |		if (_owner == owner) return true;
    |		
  > |		owner = _owner;
    |		
    |		emit ContractOwnerChanged (_owner);
  at /home/jiaming/slither_fp_files/out1534.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'purse':
    |		if (msg.sender != owner && (account [msg.sender].flags & 3) != 3) return false;
    |		
  > |		account [_wallet].wallet = _wallet;
    |		account [_wallet].tokens = value_t (0, 0);
    |		account [_wallet].deposit = value_t (0, 0);
  at /home/jiaming/slither_fp_files/out1534.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'purse':
    |		
    |		account [_wallet].wallet = _wallet;
  > |		account [_wallet].tokens = value_t (0, 0);
    |		account [_wallet].deposit = value_t (0, 0);
    |		account [_wallet].discount = vdisc_t (0, 0);
  at /home/jiaming/slither_fp_files/out1534.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'purse':
    |		account [_wallet].wallet = _wallet;
    |		account [_wallet].tokens = value_t (0, 0);
  > |		account [_wallet].deposit = value_t (0, 0);
    |		account [_wallet].discount = vdisc_t (0, 0);
    |		account [_wallet].flags = 1;
  at /home/jiaming/slither_fp_files/out1534.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'purse':
    |		account [_wallet].tokens = value_t (0, 0);
    |		account [_wallet].deposit = value_t (0, 0);
  > |		account [_wallet].discount = vdisc_t (0, 0);
    |		account [_wallet].flags = 1;
    |		
  at /home/jiaming/slither_fp_files/out1534.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'purse':
    |		account [_wallet].deposit = value_t (0, 0);
    |		account [_wallet].discount = vdisc_t (0, 0);
  > |		account [_wallet].flags = 1;
    |		
    |		emit AccountCreated (_wallet);
  at /home/jiaming/slither_fp_files/out1534.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'purse':
    |		if (account [_wallet].tokens.amount == _amount && account [_wallet].tokens.freeze == _freeze) return true;
    |		
  > |		account [_wallet].tokens.amount = _amount;
    |		
    |		if (_freeze <= account [_wallet].tokens.amount) account [_wallet].tokens.freeze = _freeze;
  at /home/jiaming/slither_fp_files/out1534.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'purse':
    |		account [_wallet].tokens.amount = _amount;
    |		
  > |		if (_freeze <= account [_wallet].tokens.amount) account [_wallet].tokens.freeze = _freeze;
    |		else account [_wallet].tokens.freeze = account [_wallet].tokens.amount;
    |		
  at /home/jiaming/slither_fp_files/out1534.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'purse':
    |		
    |		if (_freeze <= account [_wallet].tokens.amount) account [_wallet].tokens.freeze = _freeze;
  > |		else account [_wallet].tokens.freeze = account [_wallet].tokens.amount;
    |		
    |		emit AccountTokensBalanceUpdated (_wallet, account [_wallet].tokens.amount, account [_wallet].tokens.freeze);
  at /home/jiaming/slither_fp_files/out1534.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'purse':
    |		}
    |		
  > |		account [_wallet].deposit.amount = _amount;
    |		
    |		if (_freeze <= account [_wallet].deposit.amount) account [_wallet].deposit.freeze = _freeze;
  at /home/jiaming/slither_fp_files/out1534.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'purse':
    |		account [_wallet].deposit.amount = _amount;
    |		
  > |		if (_freeze <= account [_wallet].deposit.amount) account [_wallet].deposit.freeze = _freeze;
    |		else account [_wallet].deposit.freeze = account [_wallet].deposit.amount;
    |		
  at /home/jiaming/slither_fp_files/out1534.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'purse':
    |		
    |		if (_freeze <= account [_wallet].deposit.amount) account [_wallet].deposit.freeze = _freeze;
  > |		else account [_wallet].deposit.freeze = account [_wallet].deposit.amount;
    |		
    |		emit AccountDepositBalanceUpdated (_wallet, account [_wallet].deposit.amount, account [_wallet].deposit.freeze);
  at /home/jiaming/slither_fp_files/out1534.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'purse':
    |		if (_wallet == address (0) || account [_wallet].wallet != _wallet) return false;
    |		
  > |		account [_wallet].flags = _flags;
    |		
    |		emit AccountFlagsUpdated (_wallet, _flags);
  at /home/jiaming/slither_fp_files/out1534.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'purse':
    |		if (_wallet == address (0) || account [_wallet].wallet != _wallet || _percent > 10000) return false;
    |		
  > |		account [_wallet].discount.percent = _percent;
    |		
    |		emit AccountDiscountPercentUpdated (_wallet, _percent);
  at /home/jiaming/slither_fp_files/out1534.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'purse':
    |		if (_wallet == address (0) || account [_wallet].wallet != _wallet) return false;
    |		
  > |		account [_wallet].discount.amount = _amount;
    |		
    |		emit AccountDiscountAmountUpdated (_wallet, _amount);
  at /home/jiaming/slither_fp_files/out1534.sol(259)


