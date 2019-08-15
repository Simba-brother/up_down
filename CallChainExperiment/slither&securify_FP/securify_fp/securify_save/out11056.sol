Processing contract: /home/jiaming/slither_fp_files/out11056.sol:RTB2
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out11056.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out11056.sol:shareProfit
[31mViolation[0m for DAO in contract 'RTB2':
    |        finance.transfer(_money.mul(60).div(100));
    |        jackpot.transfer(_money.mul(20).div(100));
  > |        shareContract.increaseProfit.value(_money.mul(20).div(100))();
    |        totalSold += _amount;
    |    }
  at /home/jiaming/slither_fp_files/out11056.sol(190)

[31mViolation[0m for DAOConstantGas in contract 'RTB2':
    |        require((totalSupply - totalSold) >= _amount, "Sold out");
    |        _transfer(this, msg.sender, _amount);
  > |        finance.transfer(_money.mul(60).div(100));
    |        jackpot.transfer(_money.mul(20).div(100));
    |        shareContract.increaseProfit.value(_money.mul(20).div(100))();
  at /home/jiaming/slither_fp_files/out11056.sol(188)

[31mViolation[0m for DAOConstantGas in contract 'RTB2':
    |        _transfer(this, msg.sender, _amount);
    |        finance.transfer(_money.mul(60).div(100));
  > |        jackpot.transfer(_money.mul(20).div(100));
    |        shareContract.increaseProfit.value(_money.mul(20).div(100))();
    |        totalSold += _amount;
  at /home/jiaming/slither_fp_files/out11056.sol(189)

[33mWarning[0m for DAOConstantGas in contract 'RTB2':
    |        emit Withdraw(msg.sender, value);
    |        received[msg.sender] = received[msg.sender].add(value);
  > |        msg.sender.transfer(value);
    |    }
    |
  at /home/jiaming/slither_fp_files/out11056.sol(199)

[33mWarning[0m for DAOConstantGas in contract 'RTB2':
    |        emit Withdraw(msg.sender, value);
    |        received[this] = received[this].add(value);
  > |        msg.sender.transfer(value);
    |    }
    |
  at /home/jiaming/slither_fp_files/out11056.sol(212)

[33mWarning[0m for DAOConstantGas in contract 'RTB2':
    |
    |    function updateContract() public onlyOwner{
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out11056.sol(232)

[33mWarning[0m for LockedEther in contract 'RTB2':
    |}
    |
  > |contract RTB2 is shareProfit {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out11056.sol(72)

[31mViolation[0m for TODAmount in contract 'RTB2':
    |
    |    function updateContract() public onlyOwner{
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out11056.sol(232)

[33mWarning[0m for TODAmount in contract 'RTB2':
    |        require((totalSupply - totalSold) >= _amount, "Sold out");
    |        _transfer(this, msg.sender, _amount);
  > |        finance.transfer(_money.mul(60).div(100));
    |        jackpot.transfer(_money.mul(20).div(100));
    |        shareContract.increaseProfit.value(_money.mul(20).div(100))();
  at /home/jiaming/slither_fp_files/out11056.sol(188)

[33mWarning[0m for TODAmount in contract 'RTB2':
    |        _transfer(this, msg.sender, _amount);
    |        finance.transfer(_money.mul(60).div(100));
  > |        jackpot.transfer(_money.mul(20).div(100));
    |        shareContract.increaseProfit.value(_money.mul(20).div(100))();
    |        totalSold += _amount;
  at /home/jiaming/slither_fp_files/out11056.sol(189)

[33mWarning[0m for TODAmount in contract 'RTB2':
    |        finance.transfer(_money.mul(60).div(100));
    |        jackpot.transfer(_money.mul(20).div(100));
  > |        shareContract.increaseProfit.value(_money.mul(20).div(100))();
    |        totalSold += _amount;
    |    }
  at /home/jiaming/slither_fp_files/out11056.sol(190)

[33mWarning[0m for TODAmount in contract 'RTB2':
    |        emit Withdraw(msg.sender, value);
    |        received[msg.sender] = received[msg.sender].add(value);
  > |        msg.sender.transfer(value);
    |    }
    |
  at /home/jiaming/slither_fp_files/out11056.sol(199)

[33mWarning[0m for TODAmount in contract 'RTB2':
    |        emit Withdraw(msg.sender, value);
    |        received[this] = received[this].add(value);
  > |        msg.sender.transfer(value);
    |    }
    |
  at /home/jiaming/slither_fp_files/out11056.sol(212)

[33mWarning[0m for TODReceiver in contract 'RTB2':
    |        emit Withdraw(msg.sender, value);
    |        received[msg.sender] = received[msg.sender].add(value);
  > |        msg.sender.transfer(value);
    |    }
    |
  at /home/jiaming/slither_fp_files/out11056.sol(199)

[33mWarning[0m for TODReceiver in contract 'RTB2':
    |        emit Withdraw(msg.sender, value);
    |        received[this] = received[this].add(value);
  > |        msg.sender.transfer(value);
    |    }
    |
  at /home/jiaming/slither_fp_files/out11056.sol(212)

[33mWarning[0m for TODReceiver in contract 'RTB2':
    |
    |    function updateContract() public onlyOwner{
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out11056.sol(232)

[33mWarning[0m for TODReceiver in contract 'RTB2':
    |        require((totalSupply - totalSold) >= _amount, "Sold out");
    |        _transfer(this, msg.sender, _amount);
  > |        finance.transfer(_money.mul(60).div(100));
    |        jackpot.transfer(_money.mul(20).div(100));
    |        shareContract.increaseProfit.value(_money.mul(20).div(100))();
  at /home/jiaming/slither_fp_files/out11056.sol(188)

[33mWarning[0m for TODReceiver in contract 'RTB2':
    |        _transfer(this, msg.sender, _amount);
    |        finance.transfer(_money.mul(60).div(100));
  > |        jackpot.transfer(_money.mul(20).div(100));
    |        shareContract.increaseProfit.value(_money.mul(20).div(100))();
    |        totalSold += _amount;
  at /home/jiaming/slither_fp_files/out11056.sol(189)

[33mWarning[0m for TODReceiver in contract 'RTB2':
    |        finance.transfer(_money.mul(60).div(100));
    |        jackpot.transfer(_money.mul(20).div(100));
  > |        shareContract.increaseProfit.value(_money.mul(20).div(100))();
    |        totalSold += _amount;
    |    }
  at /home/jiaming/slither_fp_files/out11056.sol(190)

[33mWarning[0m for UnhandledException in contract 'RTB2':
    |        require((totalSupply - totalSold) >= _amount, "Sold out");
    |        _transfer(this, msg.sender, _amount);
  > |        finance.transfer(_money.mul(60).div(100));
    |        jackpot.transfer(_money.mul(20).div(100));
    |        shareContract.increaseProfit.value(_money.mul(20).div(100))();
  at /home/jiaming/slither_fp_files/out11056.sol(188)

[33mWarning[0m for UnhandledException in contract 'RTB2':
    |        _transfer(this, msg.sender, _amount);
    |        finance.transfer(_money.mul(60).div(100));
  > |        jackpot.transfer(_money.mul(20).div(100));
    |        shareContract.increaseProfit.value(_money.mul(20).div(100))();
    |        totalSold += _amount;
  at /home/jiaming/slither_fp_files/out11056.sol(189)

[33mWarning[0m for UnhandledException in contract 'RTB2':
    |        finance.transfer(_money.mul(60).div(100));
    |        jackpot.transfer(_money.mul(20).div(100));
  > |        shareContract.increaseProfit.value(_money.mul(20).div(100))();
    |        totalSold += _amount;
    |    }
  at /home/jiaming/slither_fp_files/out11056.sol(190)

[33mWarning[0m for UnhandledException in contract 'RTB2':
    |        emit Withdraw(msg.sender, value);
    |        received[msg.sender] = received[msg.sender].add(value);
  > |        msg.sender.transfer(value);
    |    }
    |
  at /home/jiaming/slither_fp_files/out11056.sol(199)

[33mWarning[0m for UnhandledException in contract 'RTB2':
    |        emit Withdraw(msg.sender, value);
    |        received[this] = received[this].add(value);
  > |        msg.sender.transfer(value);
    |    }
    |
  at /home/jiaming/slither_fp_files/out11056.sol(212)

[33mWarning[0m for UnhandledException in contract 'RTB2':
    |
    |    function updateContract() public onlyOwner{
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out11056.sol(232)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RTB2':
    |        require((totalSupply - totalSold) >= _amount, "Sold out");
    |        _transfer(this, msg.sender, _amount);
  > |        finance.transfer(_money.mul(60).div(100));
    |        jackpot.transfer(_money.mul(20).div(100));
    |        shareContract.increaseProfit.value(_money.mul(20).div(100))();
  at /home/jiaming/slither_fp_files/out11056.sol(188)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RTB2':
    |        _transfer(this, msg.sender, _amount);
    |        finance.transfer(_money.mul(60).div(100));
  > |        jackpot.transfer(_money.mul(20).div(100));
    |        shareContract.increaseProfit.value(_money.mul(20).div(100))();
    |        totalSold += _amount;
  at /home/jiaming/slither_fp_files/out11056.sol(189)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RTB2':
    |        finance.transfer(_money.mul(60).div(100));
    |        jackpot.transfer(_money.mul(20).div(100));
  > |        shareContract.increaseProfit.value(_money.mul(20).div(100))();
    |        totalSold += _amount;
    |    }
  at /home/jiaming/slither_fp_files/out11056.sol(190)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RTB2':
    |        emit Withdraw(msg.sender, value);
    |        received[msg.sender] = received[msg.sender].add(value);
  > |        msg.sender.transfer(value);
    |    }
    |
  at /home/jiaming/slither_fp_files/out11056.sol(199)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RTB2':
    |        emit Withdraw(msg.sender, value);
    |        received[this] = received[this].add(value);
  > |        msg.sender.transfer(value);
    |    }
    |
  at /home/jiaming/slither_fp_files/out11056.sol(212)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RTB2':
    |
    |    function updateContract() public onlyOwner{
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out11056.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'RTB2':
    |    function() public payable {
    |        require(msg.value > 0, "Amount must be provided");
  > |        profit = msg.value.div(totalSupply).add(profit);
    |        emit AddProfit(msg.sender, msg.value, profit);
    |    }
  at /home/jiaming/slither_fp_files/out11056.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'RTB2':
    |    function increaseProfit() external payable returns(bool){
    |        if(msg.value > 0){
  > |            profit = msg.value.div(totalSupply).add(profit);
    |            emit AddProfit(msg.sender, msg.value, profit);
    |            return true;
  at /home/jiaming/slither_fp_files/out11056.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'RTB2':
    |    function approve(address _spender, uint256 _value) public returns (bool) {
    |        require(_value > 0 && allowed[msg.sender][_spender] == 0);
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out11056.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'RTB2':
    |    function transferFrom(address _from, address _to, uint256 _value) external returns (bool) {
    |        require(_value <= allowed[_from][msg.sender]);
  > |        allowed[_from][msg.sender] -= _value;
    |        return _transfer(_from, _to, _value);
    |    }
  at /home/jiaming/slither_fp_files/out11056.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'RTB2':
    |        assert(newToVal >= balances[_to]);
    |        uint256 newFromVal = balances[_from] - _value;
  > |        balances[_to] = newToVal;
    |        balances[_from] =  newFromVal;
    |        uint256 temp = _value.mul(profit);
  at /home/jiaming/slither_fp_files/out11056.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'RTB2':
    |        uint256 newFromVal = balances[_from] - _value;
    |        balances[_to] = newToVal;
  > |        balances[_from] =  newFromVal;
    |        uint256 temp = _value.mul(profit);
    |        changeProfit[_from] = changeProfit[_from].add(temp);
  at /home/jiaming/slither_fp_files/out11056.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'RTB2':
    |        balances[_from] =  newFromVal;
    |        uint256 temp = _value.mul(profit);
  > |        changeProfit[_from] = changeProfit[_from].add(temp);
    |        received[_to] = received[_to].add(temp);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out11056.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'RTB2':
    |        uint256 temp = _value.mul(profit);
    |        changeProfit[_from] = changeProfit[_from].add(temp);
  > |        received[_to] = received[_to].add(temp);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out11056.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'RTB2':
    |        jackpot.transfer(_money.mul(20).div(100));
    |        shareContract.increaseProfit.value(_money.mul(20).div(100))();
  > |        totalSold += _amount;
    |    }
    |
  at /home/jiaming/slither_fp_files/out11056.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'RTB2':
    |        require(value > 0, "No cash available");
    |        emit Withdraw(msg.sender, value);
  > |        received[msg.sender] = received[msg.sender].add(value);
    |        msg.sender.transfer(value);
    |    }
  at /home/jiaming/slither_fp_files/out11056.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'RTB2':
    |        require(balances[this] >= _amount);
    |        _transfer(this, _addr, _amount);
  > |        totalSold += _amount;
    |    }
    |
  at /home/jiaming/slither_fp_files/out11056.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'RTB2':
    |        uint256 value = getProfit(this);
    |        emit Withdraw(msg.sender, value);
  > |        received[this] = received[this].add(value);
    |        msg.sender.transfer(value);
    |    }
  at /home/jiaming/slither_fp_files/out11056.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'RTB2':
    |    
    |    function setJackpot(address _addr) public onlyOwner{
  > |        jackpot = _addr;
    |    }
    |    
  at /home/jiaming/slither_fp_files/out11056.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'RTB2':
    |    
    |    function setShare(address _addr) public onlyOwner{
  > |        shareContract = shareProfit(_addr);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out11056.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'RTB2':
    |    
    |    function setFinance(address _addr) public onlyOwner{
  > |        finance = _addr;
    |    }
    |
  at /home/jiaming/slither_fp_files/out11056.sol(228)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    /**
    |     * @dev Multiplies two numbers, throws on overflow.
  at /home/jiaming/slither_fp_files/out11056.sol(7)


