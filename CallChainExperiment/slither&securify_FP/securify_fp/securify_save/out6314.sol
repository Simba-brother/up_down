Processing contract: /home/jiaming/slither_fp_files/out6314.sol:FSBook
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6314.sol:FSForwarderInterface
Processing contract: /home/jiaming/slither_fp_files/out6314.sol:NameFilter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6314.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAO in contract 'FSBook':
    |        require (plyr_[_pID].hasAff == false, "already registered as affiliate");
    |
  > |        FSKingCorp.deposit.value(msg.value)();
    |        plyr_[_pID].hasAff = true;
    |
  at /home/jiaming/slither_fp_files/out6314.sol(327)

[33mWarning[0m for DAO in contract 'FSBook':
    |        // registration fee goes directly to community rewards
    |        //FSKingCorp.deposit.value(address(this).balance)();
  > |        FSKingCorp.deposit.value(msg.value)();
    |        
    |        // fire event
  at /home/jiaming/slither_fp_files/out6314.sol(424)

[33mWarning[0m for DAOConstantGas in contract 'FSBook':
    |        if (_remainValue > 0) {
    |            plyr_[_pID].withdrawnAff = plyr_[_pID].aff;
  > |            address(msg.sender).transfer(_remainValue);
    |        }
    |
  at /home/jiaming/slither_fp_files/out6314.sol(396)

[33mWarning[0m for LockedEther in contract 'FSBook':
    |/// @dev The address of the forwarder is hardcoded. Check 'TODO' before
    |/// deploy.
  > |contract FSBook {
    |    using NameFilter for string;
    |    using SafeMath for uint256;
  at /home/jiaming/slither_fp_files/out6314.sol(17)

[33mWarning[0m for TODReceiver in contract 'FSBook':
    |        require (plyr_[_pID].hasAff == false, "already registered as affiliate");
    |
  > |        FSKingCorp.deposit.value(msg.value)();
    |        plyr_[_pID].hasAff = true;
    |
  at /home/jiaming/slither_fp_files/out6314.sol(327)

[33mWarning[0m for TODReceiver in contract 'FSBook':
    |        if (_remainValue > 0) {
    |            plyr_[_pID].withdrawnAff = plyr_[_pID].aff;
  > |            address(msg.sender).transfer(_remainValue);
    |        }
    |
  at /home/jiaming/slither_fp_files/out6314.sol(396)

[33mWarning[0m for TODReceiver in contract 'FSBook':
    |        // registration fee goes directly to community rewards
    |        //FSKingCorp.deposit.value(address(this).balance)();
  > |        FSKingCorp.deposit.value(msg.value)();
    |        
    |        // fire event
  at /home/jiaming/slither_fp_files/out6314.sol(424)

[33mWarning[0m for UnhandledException in contract 'FSBook':
    |        require (plyr_[_pID].hasAff == false, "already registered as affiliate");
    |
  > |        FSKingCorp.deposit.value(msg.value)();
    |        plyr_[_pID].hasAff = true;
    |
  at /home/jiaming/slither_fp_files/out6314.sol(327)

[33mWarning[0m for UnhandledException in contract 'FSBook':
    |        if (_remainValue > 0) {
    |            plyr_[_pID].withdrawnAff = plyr_[_pID].aff;
  > |            address(msg.sender).transfer(_remainValue);
    |        }
    |
  at /home/jiaming/slither_fp_files/out6314.sol(396)

[33mWarning[0m for UnhandledException in contract 'FSBook':
    |        // registration fee goes directly to community rewards
    |        //FSKingCorp.deposit.value(address(this).balance)();
  > |        FSKingCorp.deposit.value(msg.value)();
    |        
    |        // fire event
  at /home/jiaming/slither_fp_files/out6314.sol(424)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FSBook':
    |        require (plyr_[_pID].hasAff == false, "already registered as affiliate");
    |
  > |        FSKingCorp.deposit.value(msg.value)();
    |        plyr_[_pID].hasAff = true;
    |
  at /home/jiaming/slither_fp_files/out6314.sol(327)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FSBook':
    |        if (_remainValue > 0) {
    |            plyr_[_pID].withdrawnAff = plyr_[_pID].aff;
  > |            address(msg.sender).transfer(_remainValue);
    |        }
    |
  at /home/jiaming/slither_fp_files/out6314.sol(396)

[31mViolation[0m for UnrestrictedWrite in contract 'FSBook':
    |
    |        uint256 value = msg.value;
  > |        plyr_[_pID].aff = value.add(plyr_[_pID].aff);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6314.sol(380)

[31mViolation[0m for UnrestrictedWrite in contract 'FSBook':
    |    {
    |        if (_pID != _lAff && plyr_[_pID].laff != _lAff) {
  > |            plyr_[_pID].laff = _lAff;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out6314.sol(478)

[33mWarning[0m for UnrestrictedWrite in contract 'FSBook':
    |
    |        FSKingCorp.deposit.value(msg.value)();
  > |        plyr_[_pID].hasAff = true;
    |
    |        bytes32 _name = plyr_[_pID].name;
  at /home/jiaming/slither_fp_files/out6314.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'FSBook':
    |        uint256 _remainValue = (plyr_[_pID].aff).sub(plyr_[_pID].withdrawnAff);
    |        if (_remainValue > 0) {
  > |            plyr_[_pID].withdrawnAff = plyr_[_pID].aff;
    |            address(msg.sender).transfer(_remainValue);
    |        }
  at /home/jiaming/slither_fp_files/out6314.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'FSBook':
    |        {
    |            pID_++;
  > |            pIDxAddr_[_addr] = pID_;
    |            plyr_[pID_].addr = _addr;
    |            
  at /home/jiaming/slither_fp_files/out6314.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'FSBook':
    |        onlyDevs()
    |    {
  > |        registeredGames_[_contract] = _enable;
    |
    |        emit onGameRegistered(_contract, _enable, now);
  at /home/jiaming/slither_fp_files/out6314.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'FSBook':
    |        onlyDevs()
    |    {
  > |        registrationFee_ = _fee;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6314.sol(526)

[33mWarning[0m for UnrestrictedWrite in contract 'FSBook':
    |        onlyDevs()
    |    {
  > |        affiliateFee_ = _fee;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6314.sol(533)

[33mWarning[0m for LockedEther in contract 'NameFilter':
    |} 
    |
  > |library NameFilter {
    |    
    |    /**
  at /home/jiaming/slither_fp_files/out6314.sol(538)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * - removed div, its useless
    | */
  > |library SafeMath {
    |    
    |    /**
  at /home/jiaming/slither_fp_files/out6314.sol(625)


