Processing contract: /home/jiaming/slither_fp_files/out521.sol:BMForwarderInterface
Processing contract: /home/jiaming/slither_fp_files/out521.sol:BMPlayerBook
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out521.sol:NameFilter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out521.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out521.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAO in contract 'BMPlayerBook':
    |        require (plyr_[_pID].hasAff == false, "already registered as affiliate");
    |
  > |        Banker_Address.deposit.value(msg.value)();
    |        plyr_[_pID].hasAff = true;
    |
  at /home/jiaming/slither_fp_files/out521.sol(542)

[33mWarning[0m for DAO in contract 'BMPlayerBook':
    |        // registration fee goes directly to community rewards
    |        //Banker_Address.deposit.value(address(this).balance)();
  > |        Banker_Address.deposit.value(msg.value)();
    |        
    |        // fire event
  at /home/jiaming/slither_fp_files/out521.sol(639)

[33mWarning[0m for DAOConstantGas in contract 'BMPlayerBook':
    |        if (_remainValue > 0) {
    |            plyr_[_pID].withdrawnAff = plyr_[_pID].aff;
  > |            address(msg.sender).transfer(_remainValue);
    |        }
    |
  at /home/jiaming/slither_fp_files/out521.sol(611)

[33mWarning[0m for LockedEther in contract 'BMPlayerBook':
    |/// @dev The address of the forwarder is hardcoded. Check 'TODO' before
    |/// deploy.
  > |contract BMPlayerBook is Ownable {
    |    using NameFilter for string;
    |    using SafeMath for uint256;
  at /home/jiaming/slither_fp_files/out521.sol(258)

[31mViolation[0m for TODReceiver in contract 'BMPlayerBook':
    |        require (plyr_[_pID].hasAff == false, "already registered as affiliate");
    |
  > |        Banker_Address.deposit.value(msg.value)();
    |        plyr_[_pID].hasAff = true;
    |
  at /home/jiaming/slither_fp_files/out521.sol(542)

[31mViolation[0m for TODReceiver in contract 'BMPlayerBook':
    |        // registration fee goes directly to community rewards
    |        //Banker_Address.deposit.value(address(this).balance)();
  > |        Banker_Address.deposit.value(msg.value)();
    |        
    |        // fire event
  at /home/jiaming/slither_fp_files/out521.sol(639)

[33mWarning[0m for TODReceiver in contract 'BMPlayerBook':
    |        if (_remainValue > 0) {
    |            plyr_[_pID].withdrawnAff = plyr_[_pID].aff;
  > |            address(msg.sender).transfer(_remainValue);
    |        }
    |
  at /home/jiaming/slither_fp_files/out521.sol(611)

[33mWarning[0m for UnhandledException in contract 'BMPlayerBook':
    |        require (plyr_[_pID].hasAff == false, "already registered as affiliate");
    |
  > |        Banker_Address.deposit.value(msg.value)();
    |        plyr_[_pID].hasAff = true;
    |
  at /home/jiaming/slither_fp_files/out521.sol(542)

[33mWarning[0m for UnhandledException in contract 'BMPlayerBook':
    |        if (_remainValue > 0) {
    |            plyr_[_pID].withdrawnAff = plyr_[_pID].aff;
  > |            address(msg.sender).transfer(_remainValue);
    |        }
    |
  at /home/jiaming/slither_fp_files/out521.sol(611)

[33mWarning[0m for UnhandledException in contract 'BMPlayerBook':
    |        // registration fee goes directly to community rewards
    |        //Banker_Address.deposit.value(address(this).balance)();
  > |        Banker_Address.deposit.value(msg.value)();
    |        
    |        // fire event
  at /home/jiaming/slither_fp_files/out521.sol(639)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BMPlayerBook':
    |        require (plyr_[_pID].hasAff == false, "already registered as affiliate");
    |
  > |        Banker_Address.deposit.value(msg.value)();
    |        plyr_[_pID].hasAff = true;
    |
  at /home/jiaming/slither_fp_files/out521.sol(542)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BMPlayerBook':
    |        if (_remainValue > 0) {
    |            plyr_[_pID].withdrawnAff = plyr_[_pID].aff;
  > |            address(msg.sender).transfer(_remainValue);
    |        }
    |
  at /home/jiaming/slither_fp_files/out521.sol(611)

[31mViolation[0m for UnrestrictedWrite in contract 'BMPlayerBook':
    |
    |        uint256 value = msg.value;
  > |        plyr_[_pID].aff = value.add(plyr_[_pID].aff);
    |    }
    |
  at /home/jiaming/slither_fp_files/out521.sol(595)

[31mViolation[0m for UnrestrictedWrite in contract 'BMPlayerBook':
    |    {
    |        if (_pID != _lAff && plyr_[_pID].laff != _lAff) {
  > |            plyr_[_pID].laff = _lAff;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out521.sol(693)

[33mWarning[0m for UnrestrictedWrite in contract 'BMPlayerBook':
    |
    |        Banker_Address.deposit.value(msg.value)();
  > |        plyr_[_pID].hasAff = true;
    |
    |        bytes32 _name = plyr_[_pID].name;
  at /home/jiaming/slither_fp_files/out521.sol(543)

[33mWarning[0m for UnrestrictedWrite in contract 'BMPlayerBook':
    |        uint256 _remainValue = (plyr_[_pID].aff).sub(plyr_[_pID].withdrawnAff);
    |        if (_remainValue > 0) {
  > |            plyr_[_pID].withdrawnAff = plyr_[_pID].aff;
    |            address(msg.sender).transfer(_remainValue);
    |        }
  at /home/jiaming/slither_fp_files/out521.sol(610)

[33mWarning[0m for UnrestrictedWrite in contract 'BMPlayerBook':
    |        {
    |            pID_++;
  > |            pIDxAddr_[_addr] = pID_;
    |            plyr_[pID_].addr = _addr;
    |            
  at /home/jiaming/slither_fp_files/out521.sol(652)

[33mWarning[0m for UnrestrictedWrite in contract 'BMPlayerBook':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out521.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'BMPlayerBook':
    |    function setDev(address newDev) onlyOwner public {
    |        if (newDev != address(0)) {
  > |            dev = newDev;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out521.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'BMPlayerBook':
    |        onlyOwner()
    |    {
  > |        registeredGames_[_contract] = _enable;
    |
    |        emit onGameRegistered(_contract, _enable, now);
  at /home/jiaming/slither_fp_files/out521.sol(557)

[33mWarning[0m for UnrestrictedWrite in contract 'BMPlayerBook':
    |        onlyOwner()
    |    {
  > |        registrationFee_ = _fee;
    |    }
    |
  at /home/jiaming/slither_fp_files/out521.sol(741)

[33mWarning[0m for UnrestrictedWrite in contract 'BMPlayerBook':
    |        onlyOwner()
    |    {
  > |        affiliateFee_ = _fee;
    |    }
    |
  at /home/jiaming/slither_fp_files/out521.sol(748)

[33mWarning[0m for UnrestrictedWrite in contract 'BMPlayerBook':
    |    {
    |        if (banker != address(0)) {
  > |            Banker_Address = banker;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out521.sol(760)

[33mWarning[0m for LockedEther in contract 'NameFilter':
    |// File: contracts\lib\NameFilter.sol
    |
  > |library NameFilter {
    |    
    |    /**
  at /home/jiaming/slither_fp_files/out521.sol(5)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |    address public dev;
  at /home/jiaming/slither_fp_files/out521.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |    address public dev;
    |
  at /home/jiaming/slither_fp_files/out521.sol(185)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    address public owner;
  > |    address public dev;
    |
    |    /**
  at /home/jiaming/slither_fp_files/out521.sol(186)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/slither_fp_files/out521.sol(225)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @param newDev The new dev address.
    |    */
  > |    function setDev(address newDev) onlyOwner public {
    |        if (newDev != address(0)) {
    |            dev = newDev;
  at /home/jiaming/slither_fp_files/out521.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out521.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function setDev(address newDev) onlyOwner public {
    |        if (newDev != address(0)) {
  > |            dev = newDev;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out521.sol(237)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |/// - changed asserts to requires with error log outputs
    |/// - removed div, its useless
  > |library SafeMath {
    |    
    |    /// @dev Multiplies two numbers, throws on overflow.
  at /home/jiaming/slither_fp_files/out521.sol(92)


