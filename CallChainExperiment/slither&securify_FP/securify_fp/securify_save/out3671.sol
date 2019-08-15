Processing contract: /home/jiaming/slither_fp_files/out3671.sol:FairExchange
Processing contract: /home/jiaming/slither_fp_files/out3671.sol:PvPCrash
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out3671.sol:PvPCrashFormula
Processing contract: /home/jiaming/slither_fp_files/out3671.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAO in contract 'PvPCrash':
    |            } else {
    |                if (_userBalance > 0) {
  > |                    _user.transfer(_balance);
    |                    if (investments[_user][_roundCount].mul(95).div(100) > _balance) {
    |                        
  at /home/jiaming/slither_fp_files/out3671.sol(293)

[31mViolation[0m for DAO in contract 'PvPCrash':
    |                    emit Withdraw(_user, _userBalance);
    |                } else {
  > |                    _user.transfer(_balance);
    |                    roundEnded = true;
    |                    roundEndTime[_roundCount] = _currentTimestamp;
  at /home/jiaming/slither_fp_files/out3671.sol(317)

[33mWarning[0m for DAO in contract 'PvPCrash':
    |            investments[_user][_roundCount] = _amount;
    |            userInputAmount[_user] = userInputAmount[_user].add(_amount);
  > |            bool _status = address(fairExchangeContract).call.value(_amount / 20).gas(1000000)();
    |            require(_status);
    |            emit FairTokenBuy(_amount / 20, myTokens());
  at /home/jiaming/slither_fp_files/out3671.sol(249)

[33mWarning[0m for DAO in contract 'PvPCrash':
    |            if (_balance > _userBalance) {
    |                if (_userBalance > 0) {
  > |                    _user.transfer(_userBalance);
    |                    emit Withdraw(_user, _userBalance);
    |                }
  at /home/jiaming/slither_fp_files/out3671.sol(287)

[33mWarning[0m for LockedEther in contract 'PvPCrash':
    |}
    |
  > |contract PvPCrash {
    | 
    |    using SafeMath for uint256;
  at /home/jiaming/slither_fp_files/out3671.sol(41)

[31mViolation[0m for TODAmount in contract 'PvPCrash':
    |            } else {
    |                if (_userBalance > 0) {
  > |                    _user.transfer(_balance);
    |                    if (investments[_user][_roundCount].mul(95).div(100) > _balance) {
    |                        
  at /home/jiaming/slither_fp_files/out3671.sol(293)

[33mWarning[0m for TODAmount in contract 'PvPCrash':
    |            if (_balance > _userBalance) {
    |                if (_userBalance > 0) {
  > |                    _user.transfer(_userBalance);
    |                    emit Withdraw(_user, _userBalance);
    |                }
  at /home/jiaming/slither_fp_files/out3671.sol(287)

[33mWarning[0m for TODAmount in contract 'PvPCrash':
    |                    emit Withdraw(_user, _userBalance);
    |                } else {
  > |                    _user.transfer(_balance);
    |                    roundEnded = true;
    |                    roundEndTime[_roundCount] = _currentTimestamp;
  at /home/jiaming/slither_fp_files/out3671.sol(317)

[33mWarning[0m for TODReceiver in contract 'PvPCrash':
    |            investments[_user][_roundCount] = _amount;
    |            userInputAmount[_user] = userInputAmount[_user].add(_amount);
  > |            bool _status = address(fairExchangeContract).call.value(_amount / 20).gas(1000000)();
    |            require(_status);
    |            emit FairTokenBuy(_amount / 20, myTokens());
  at /home/jiaming/slither_fp_files/out3671.sol(249)

[33mWarning[0m for TODReceiver in contract 'PvPCrash':
    |            if (_balance > _userBalance) {
    |                if (_userBalance > 0) {
  > |                    _user.transfer(_userBalance);
    |                    emit Withdraw(_user, _userBalance);
    |                }
  at /home/jiaming/slither_fp_files/out3671.sol(287)

[33mWarning[0m for TODReceiver in contract 'PvPCrash':
    |            } else {
    |                if (_userBalance > 0) {
  > |                    _user.transfer(_balance);
    |                    if (investments[_user][_roundCount].mul(95).div(100) > _balance) {
    |                        
  at /home/jiaming/slither_fp_files/out3671.sol(293)

[33mWarning[0m for TODReceiver in contract 'PvPCrash':
    |                _userBalance = investments[_user][_roundCount].mul(refundRatio).div(100);
    |                if (_balance > _userBalance) {
  > |                    _user.transfer(_userBalance);
    |                    emit Withdraw(_user, _userBalance);
    |                } else {
  at /home/jiaming/slither_fp_files/out3671.sol(314)

[33mWarning[0m for TODReceiver in contract 'PvPCrash':
    |                    emit Withdraw(_user, _userBalance);
    |                } else {
  > |                    _user.transfer(_balance);
    |                    roundEnded = true;
    |                    roundEndTime[_roundCount] = _currentTimestamp;
  at /home/jiaming/slither_fp_files/out3671.sol(317)

[33mWarning[0m for UnhandledException in contract 'PvPCrash':
    |        public  
    |    {
  > |        fairExchangeContract.transfer(owner, fairExchangeContract.myTokens());
    |    }
    |    
  at /home/jiaming/slither_fp_files/out3671.sol(192)

[33mWarning[0m for UnhandledException in contract 'PvPCrash':
    |            investments[_user][_roundCount] = _amount;
    |            userInputAmount[_user] = userInputAmount[_user].add(_amount);
  > |            bool _status = address(fairExchangeContract).call.value(_amount / 20).gas(1000000)();
    |            require(_status);
    |            emit FairTokenBuy(_amount / 20, myTokens());
  at /home/jiaming/slither_fp_files/out3671.sol(249)

[33mWarning[0m for UnhandledException in contract 'PvPCrash':
    |        uint256 _userBalance;
    |        uint256 _balance = address(this).balance;
  > |        uint256 _totalTokens = fairExchangeContract.myTokens();
    |        uint256 _tokens;
    |        uint256 _tokensTransferRatio;
  at /home/jiaming/slither_fp_files/out3671.sol(277)

[33mWarning[0m for UnhandledException in contract 'PvPCrash':
    |            if (_balance > _userBalance) {
    |                if (_userBalance > 0) {
  > |                    _user.transfer(_userBalance);
    |                    emit Withdraw(_user, _userBalance);
    |                }
  at /home/jiaming/slither_fp_files/out3671.sol(287)

[33mWarning[0m for UnhandledException in contract 'PvPCrash':
    |            } else {
    |                if (_userBalance > 0) {
  > |                    _user.transfer(_balance);
    |                    if (investments[_user][_roundCount].mul(95).div(100) > _balance) {
    |                        
  at /home/jiaming/slither_fp_files/out3671.sol(293)

[33mWarning[0m for UnhandledException in contract 'PvPCrash':
    |                        _tokens = _totalTokens
    |                            .mul(_tokensTransferRatio) / 100000;
  > |                        fairExchangeContract.transfer(_user, _tokens);
    |                        emit FairTokenTransfer(_user, _tokens, _roundCount);
    |                    }
  at /home/jiaming/slither_fp_files/out3671.sol(300)

[33mWarning[0m for UnhandledException in contract 'PvPCrash':
    |                _userBalance = investments[_user][_roundCount].mul(refundRatio).div(100);
    |                if (_balance > _userBalance) {
  > |                    _user.transfer(_userBalance);
    |                    emit Withdraw(_user, _userBalance);
    |                } else {
  at /home/jiaming/slither_fp_files/out3671.sol(314)

[33mWarning[0m for UnhandledException in contract 'PvPCrash':
    |                    emit Withdraw(_user, _userBalance);
    |                } else {
  > |                    _user.transfer(_balance);
    |                    roundEnded = true;
    |                    roundEndTime[_roundCount] = _currentTimestamp;
  at /home/jiaming/slither_fp_files/out3671.sol(317)

[33mWarning[0m for UnhandledException in contract 'PvPCrash':
    |            _tokens = _totalTokens
    |                .mul(_tokensTransferRatio) / 100000;
  > |            fairExchangeContract.transfer(_user, _tokens);
    |            joined[_user][_roundCount] = 0;
    |            emit FairTokenTransfer(_user, _tokens, _roundCount);
  at /home/jiaming/slither_fp_files/out3671.sol(327)

[33mWarning[0m for UnhandledException in contract 'PvPCrash':
    |    {
    |        uint256 _roundCount = roundCount;
  > |        return pvpCrashFormula.getBalance(
    |            roundStartTime[_roundCount], 
    |            joined[_address][_roundCount],
  at /home/jiaming/slither_fp_files/out3671.sol(344)

[33mWarning[0m for UnhandledException in contract 'PvPCrash':
    |            investments[_address][_roundCount],
    |            userInputAmount[_address],
  > |            fairExchangeContract.balanceOf(_address)
    |        );
    |    }
  at /home/jiaming/slither_fp_files/out3671.sol(349)

[33mWarning[0m for UnhandledException in contract 'PvPCrash':
    |        returns (uint256) 
    |    {
  > |        return pvpCrashFormula.getAdditionalRewardRatio(
    |            userInputAmount[_address],
    |            fairExchangeContract.balanceOf(_address)
  at /home/jiaming/slither_fp_files/out3671.sol(358)

[33mWarning[0m for UnhandledException in contract 'PvPCrash':
    |        return pvpCrashFormula.getAdditionalRewardRatio(
    |            userInputAmount[_address],
  > |            fairExchangeContract.balanceOf(_address)
    |        );
    |    }
  at /home/jiaming/slither_fp_files/out3671.sol(360)

[33mWarning[0m for UnhandledException in contract 'PvPCrash':
    |        returns (uint256) 
    |    {
  > |        return fairExchangeContract.balanceOf(_address);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out3671.sol(394)

[33mWarning[0m for UnhandledException in contract 'PvPCrash':
    |        returns (uint256) 
    |    {
  > |        return fairExchangeContract.myTokens();
    |    }
    |    
  at /home/jiaming/slither_fp_files/out3671.sol(402)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PvPCrash':
    |        public  
    |    {
  > |        fairExchangeContract.transfer(owner, fairExchangeContract.myTokens());
    |    }
    |    
  at /home/jiaming/slither_fp_files/out3671.sol(192)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PvPCrash':
    |            investments[_user][_roundCount] = _amount;
    |            userInputAmount[_user] = userInputAmount[_user].add(_amount);
  > |            bool _status = address(fairExchangeContract).call.value(_amount / 20).gas(1000000)();
    |            require(_status);
    |            emit FairTokenBuy(_amount / 20, myTokens());
  at /home/jiaming/slither_fp_files/out3671.sol(249)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PvPCrash':
    |        uint256 _userBalance;
    |        uint256 _balance = address(this).balance;
  > |        uint256 _totalTokens = fairExchangeContract.myTokens();
    |        uint256 _tokens;
    |        uint256 _tokensTransferRatio;
  at /home/jiaming/slither_fp_files/out3671.sol(277)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PvPCrash':
    |            if (_balance > _userBalance) {
    |                if (_userBalance > 0) {
  > |                    _user.transfer(_userBalance);
    |                    emit Withdraw(_user, _userBalance);
    |                }
  at /home/jiaming/slither_fp_files/out3671.sol(287)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PvPCrash':
    |            } else {
    |                if (_userBalance > 0) {
  > |                    _user.transfer(_balance);
    |                    if (investments[_user][_roundCount].mul(95).div(100) > _balance) {
    |                        
  at /home/jiaming/slither_fp_files/out3671.sol(293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PvPCrash':
    |                        _tokens = _totalTokens
    |                            .mul(_tokensTransferRatio) / 100000;
  > |                        fairExchangeContract.transfer(_user, _tokens);
    |                        emit FairTokenTransfer(_user, _tokens, _roundCount);
    |                    }
  at /home/jiaming/slither_fp_files/out3671.sol(300)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PvPCrash':
    |                _userBalance = investments[_user][_roundCount].mul(refundRatio).div(100);
    |                if (_balance > _userBalance) {
  > |                    _user.transfer(_userBalance);
    |                    emit Withdraw(_user, _userBalance);
    |                } else {
  at /home/jiaming/slither_fp_files/out3671.sol(314)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PvPCrash':
    |                    emit Withdraw(_user, _userBalance);
    |                } else {
  > |                    _user.transfer(_balance);
    |                    roundEnded = true;
    |                    roundEndTime[_roundCount] = _currentTimestamp;
  at /home/jiaming/slither_fp_files/out3671.sol(317)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PvPCrash':
    |            _tokens = _totalTokens
    |                .mul(_tokensTransferRatio) / 100000;
  > |            fairExchangeContract.transfer(_user, _tokens);
    |            joined[_user][_roundCount] = 0;
    |            emit FairTokenTransfer(_user, _tokens, _roundCount);
  at /home/jiaming/slither_fp_files/out3671.sol(327)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PvPCrash':
    |    {
    |        uint256 _roundCount = roundCount;
  > |        return pvpCrashFormula.getBalance(
    |            roundStartTime[_roundCount], 
    |            joined[_address][_roundCount],
  at /home/jiaming/slither_fp_files/out3671.sol(344)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PvPCrash':
    |            investments[_address][_roundCount],
    |            userInputAmount[_address],
  > |            fairExchangeContract.balanceOf(_address)
    |        );
    |    }
  at /home/jiaming/slither_fp_files/out3671.sol(349)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PvPCrash':
    |        returns (uint256) 
    |    {
  > |        return pvpCrashFormula.getAdditionalRewardRatio(
    |            userInputAmount[_address],
    |            fairExchangeContract.balanceOf(_address)
  at /home/jiaming/slither_fp_files/out3671.sol(358)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PvPCrash':
    |        return pvpCrashFormula.getAdditionalRewardRatio(
    |            userInputAmount[_address],
  > |            fairExchangeContract.balanceOf(_address)
    |        );
    |    }
  at /home/jiaming/slither_fp_files/out3671.sol(360)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PvPCrash':
    |        returns (uint256) 
    |    {
  > |        return fairExchangeContract.balanceOf(_address);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out3671.sol(394)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PvPCrash':
    |        returns (uint256) 
    |    {
  > |        return fairExchangeContract.myTokens();
    |    }
    |    
  at /home/jiaming/slither_fp_files/out3671.sol(402)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |        if (gameOpen) {
    |            require(roundEnded);
  > |            gameOpen = false;
    |        } else
    |            gameOpen = true;
  at /home/jiaming/slither_fp_files/out3671.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |            gameOpen = false;
    |        } else
  > |            gameOpen = true;
    |    }
    |    
  at /home/jiaming/slither_fp_files/out3671.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |    {
    |        require(_minimum < maximum);
  > |        minimum = _minimum;
    |    }
    |    
  at /home/jiaming/slither_fp_files/out3671.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |    {
    |        require(_maximum > minimum);
  > |        maximum = _maximum;
    |    }
    |    
  at /home/jiaming/slither_fp_files/out3671.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |    {
    |        require(_refundRatio <= 100);
  > |        refundRatio = _refundRatio;
    |    }
    |    
  at /home/jiaming/slither_fp_files/out3671.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |    {
    |        require(_gasLimit >= 200000);
  > |        gasLimit = _gasLimit;
    |    }
    |    
  at /home/jiaming/slither_fp_files/out3671.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |    {
    |        require(_gasPrice >= 1000000000);
  > |        gasPriceLimit = _gasPrice;
    |    }
    |    
  at /home/jiaming/slither_fp_files/out3671.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |    {
    |        require(!gameOpen);
  > |        startCoolDown = _coolDown;
    |    }
    |    
  at /home/jiaming/slither_fp_files/out3671.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |    {
    |        require(!gameOpen);
  > |        endCoolDown = _coolDown;
    |    }
    |    
  at /home/jiaming/slither_fp_files/out3671.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |    {
    |        require(!gameOpen);
  > |        maxNumBlock = _maxNumBlock;
    |    }
    |    
  at /home/jiaming/slither_fp_files/out3671.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |        
    |        if (roundEnded == true && _currentTimestamp > roundEndTime[_roundCount] + _endCoolDown) {
  > |            roundEnded = false;
    |            roundCount++;
    |            _roundCount = roundCount;
  at /home/jiaming/slither_fp_files/out3671.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |        if (roundEnded == true && _currentTimestamp > roundEndTime[_roundCount] + _endCoolDown) {
    |            roundEnded = false;
  > |            roundCount++;
    |            _roundCount = roundCount;
    |            roundStartTime[_roundCount] = _currentTimestamp + _startCoolDown;
  at /home/jiaming/slither_fp_files/out3671.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |            roundCount++;
    |            _roundCount = roundCount;
  > |            roundStartTime[_roundCount] = _currentTimestamp + _startCoolDown;
    |            
    |        } else if (roundEnded) {
  at /home/jiaming/slither_fp_files/out3671.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |                && _currentTimestamp < roundStartTime[_roundCount]
    |            ) {
  > |                joined[_user][_roundCount] = roundStartTime[_roundCount];
    |            }else if(_currentTimestamp >= roundStartTime[_roundCount]){
    |                joined[_user][_roundCount] = block.timestamp;
  at /home/jiaming/slither_fp_files/out3671.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |                joined[_user][_roundCount] = roundStartTime[_roundCount];
    |            }else if(_currentTimestamp >= roundStartTime[_roundCount]){
  > |                joined[_user][_roundCount] = block.timestamp;
    |            }
    |            investments[_user][_roundCount] = _amount;
  at /home/jiaming/slither_fp_files/out3671.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |                joined[_user][_roundCount] = block.timestamp;
    |            }
  > |            investments[_user][_roundCount] = _amount;
    |            userInputAmount[_user] = userInputAmount[_user].add(_amount);
    |            bool _status = address(fairExchangeContract).call.value(_amount / 20).gas(1000000)();
  at /home/jiaming/slither_fp_files/out3671.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |            }
    |            investments[_user][_roundCount] = _amount;
  > |            userInputAmount[_user] = userInputAmount[_user].add(_amount);
    |            bool _status = address(fairExchangeContract).call.value(_amount / 20).gas(1000000)();
    |            require(_status);
  at /home/jiaming/slither_fp_files/out3671.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |        if (!roundEnded && withdrawBlock[block.number] <= maxNumBlock) {
    |            _userBalance = getBalance(_user);
  > |            joined[_user][_roundCount] = 0;
    |            withdrawBlock[block.number]++;
    |            
  at /home/jiaming/slither_fp_files/out3671.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |            _userBalance = getBalance(_user);
    |            joined[_user][_roundCount] = 0;
  > |            withdrawBlock[block.number]++;
    |            
    |            if (_balance > _userBalance) {
  at /home/jiaming/slither_fp_files/out3671.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |                        emit FairTokenTransfer(_user, _tokens, _roundCount);
    |                    }
  > |                    roundEnded = true;
    |                    roundEndTime[_roundCount] = _currentTimestamp;
    |                    emit Withdraw(_user, _balance);
  at /home/jiaming/slither_fp_files/out3671.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |                    }
    |                    roundEnded = true;
  > |                    roundEndTime[_roundCount] = _currentTimestamp;
    |                    emit Withdraw(_user, _balance);
    |                }
  at /home/jiaming/slither_fp_files/out3671.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |                } else {
    |                    _user.transfer(_balance);
  > |                    roundEnded = true;
    |                    roundEndTime[_roundCount] = _currentTimestamp;
    |                    emit Withdraw(_user, _balance);
  at /home/jiaming/slither_fp_files/out3671.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |                    _user.transfer(_balance);
    |                    roundEnded = true;
  > |                    roundEndTime[_roundCount] = _currentTimestamp;
    |                    emit Withdraw(_user, _balance);
    |                }
  at /home/jiaming/slither_fp_files/out3671.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'PvPCrash':
    |                .mul(_tokensTransferRatio) / 100000;
    |            fairExchangeContract.transfer(_user, _tokens);
  > |            joined[_user][_roundCount] = 0;
    |            emit FairTokenTransfer(_user, _tokens, _roundCount);
    |        }
  at /home/jiaming/slither_fp_files/out3671.sol(328)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/slither_fp_files/out3671.sol(416)


