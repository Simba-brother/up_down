Processing contract: /home/jiaming/slither_fp_files/out12979.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out12979.sol:ERC20Interface
Processing contract: /home/jiaming/slither_fp_files/out12979.sol:ERC223Interface
Processing contract: /home/jiaming/slither_fp_files/out12979.sol:ERC223ReceivingContract
Processing contract: /home/jiaming/slither_fp_files/out12979.sol:ICOToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out12979.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out12979.sol:PreICO
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out12979.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out12979.sol:Standard223Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out12979.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |// File: contracts/BurnableToken.sol
    |
  > |contract BurnableToken is StandardToken {
    |    /**
    |     * @dev Burns a specific amount of tokens.
  at /home/jiaming/slither_fp_files/out12979.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        require(_value <= holderBalance);
    |
  > |        balances[msg.sender] = holderBalance.subtract(_value);
    |        balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/slither_fp_files/out12979.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        balances[msg.sender] = holderBalance.subtract(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out12979.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        require(_value <= allowToTrans);
    |
  > |        balances[_from] = balanceFrom.subtract(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowToTrans.subtract(_value);
  at /home/jiaming/slither_fp_files/out12979.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        balances[_from] = balanceFrom.subtract(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowToTrans.subtract(_value);
    |
  at /home/jiaming/slither_fp_files/out12979.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        balances[_from] = balanceFrom.subtract(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowToTrans.subtract(_value);
    |
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out12979.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        //    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |        //    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/slither_fp_files/out12979.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    function increaseApproval(address _spender, uint256 _addedValue) onlyPayloadSize(2 * 32) public returns (bool ok) {
    |        uint256 oldValue = allowed[msg.sender][_spender];
  > |        allowed[msg.sender][_spender] = oldValue.add(_addedValue);
    |
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out12979.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.subtract(_subtractedValue);
  at /home/jiaming/slither_fp_files/out12979.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.subtract(_subtractedValue);
    |        }
    |
  at /home/jiaming/slither_fp_files/out12979.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        require(_value <= balances[_holder]);
    |
  > |        balances[_holder] = balances[_holder].subtract(_value);
    |        totalSupply = totalSupply.subtract(_value);
    |
  at /home/jiaming/slither_fp_files/out12979.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        balances[_holder] = balances[_holder].subtract(_value);
  > |        totalSupply = totalSupply.subtract(_value);
    |
    |        emit Burn(_holder, _value);
  at /home/jiaming/slither_fp_files/out12979.sol(191)

[33mWarning[0m for LockedEther in contract 'ICOToken':
    |// ICO Token contract
    |// ----------------------------------------------------------------------------
  > |contract ICOToken is BurnableToken, Ownable, Standard223Token {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/slither_fp_files/out12979.sol(312)

[33mWarning[0m for UnhandledException in contract 'ICOToken':
    |    function contractFallback(address _origin, address _to, uint256 _value, bytes _data) private {
    |        ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |        receiver.tokenFallback(_origin, _value, _data);
    |    }
    |
  at /home/jiaming/slither_fp_files/out12979.sol(294)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOToken':
    |    function contractFallback(address _origin, address _to, uint256 _value, bytes _data) private {
    |        ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |        receiver.tokenFallback(_origin, _value, _data);
    |    }
    |
  at /home/jiaming/slither_fp_files/out12979.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |        require(_value <= holderBalance);
    |
  > |        balances[msg.sender] = holderBalance.subtract(_value);
    |        balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/slither_fp_files/out12979.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |
    |        balances[msg.sender] = holderBalance.subtract(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out12979.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |        require(_value <= allowToTrans);
    |
  > |        balances[_from] = balanceFrom.subtract(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowToTrans.subtract(_value);
  at /home/jiaming/slither_fp_files/out12979.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |
    |        balances[_from] = balanceFrom.subtract(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowToTrans.subtract(_value);
    |
  at /home/jiaming/slither_fp_files/out12979.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |        balances[_from] = balanceFrom.subtract(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowToTrans.subtract(_value);
    |
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out12979.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |        //    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |        //    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/slither_fp_files/out12979.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |    function increaseApproval(address _spender, uint256 _addedValue) onlyPayloadSize(2 * 32) public returns (bool ok) {
    |        uint256 oldValue = allowed[msg.sender][_spender];
  > |        allowed[msg.sender][_spender] = oldValue.add(_addedValue);
    |
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out12979.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.subtract(_subtractedValue);
  at /home/jiaming/slither_fp_files/out12979.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.subtract(_subtractedValue);
    |        }
    |
  at /home/jiaming/slither_fp_files/out12979.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |        require(_value <= balances[_holder]);
    |
  > |        balances[_holder] = balances[_holder].subtract(_value);
    |        totalSupply = totalSupply.subtract(_value);
    |
  at /home/jiaming/slither_fp_files/out12979.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |
    |        balances[_holder] = balances[_holder].subtract(_value);
  > |        totalSupply = totalSupply.subtract(_value);
    |
    |        emit Burn(_holder, _value);
  at /home/jiaming/slither_fp_files/out12979.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |     */
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out12979.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |        require(msg.sender == newOwner);
    |
  > |        owner = newOwner;
    |        newOwner = address(0);
    |
  at /home/jiaming/slither_fp_files/out12979.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |
    |        owner = newOwner;
  > |        newOwner = address(0);
    |
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/slither_fp_files/out12979.sol(239)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/slither_fp_files/out12979.sol(207)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |     * @param _newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/slither_fp_files/out12979.sol(231)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/slither_fp_files/out12979.sol(208)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwner;
    |
    |    /**
  at /home/jiaming/slither_fp_files/out12979.sol(209)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |
  at /home/jiaming/slither_fp_files/out12979.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |     */
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out12979.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(msg.sender == newOwner);
    |
  > |        owner = newOwner;
    |        newOwner = address(0);
    |
  at /home/jiaming/slither_fp_files/out12979.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |
    |        owner = newOwner;
  > |        newOwner = address(0);
    |
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/slither_fp_files/out12979.sol(239)

[31mViolation[0m for DAOConstantGas in contract 'PreICO':
    |                    toTransfer = balance;
    |                }
  > |                beneficiary.wallet.transfer(toTransfer);
    |                beneficiary.transferred = beneficiary.transferred.add(toTransfer);
    |                break;
  at /home/jiaming/slither_fp_files/out12979.sol(453)

[33mWarning[0m for DAOConstantGas in contract 'PreICO':
    |        require(balance > 0);
    |
  > |        wallet.transfer(balance);
    |    }
    |
  at /home/jiaming/slither_fp_files/out12979.sol(438)

[33mWarning[0m for LockedEther in contract 'PreICO':
    |// File: contracts/PreICO.sol
    |
  > |contract PreICO is Ownable, ERC223ReceivingContract {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out12979.sol(343)

[31mViolation[0m for TODAmount in contract 'PreICO':
    |
    |        if (toReturn > 0) {
  > |            msg.sender.transfer(toReturn);
    |        }
    |        token.transfer(msg.sender, purchased.add(reward));
  at /home/jiaming/slither_fp_files/out12979.sol(391)

[31mViolation[0m for TODAmount in contract 'PreICO':
    |        require(balance > 0);
    |
  > |        wallet.transfer(balance);
    |    }
    |
  at /home/jiaming/slither_fp_files/out12979.sol(438)

[31mViolation[0m for TODAmount in contract 'PreICO':
    |                    toTransfer = balance;
    |                }
  > |                beneficiary.wallet.transfer(toTransfer);
    |                beneficiary.transferred = beneficiary.transferred.add(toTransfer);
    |                break;
  at /home/jiaming/slither_fp_files/out12979.sol(453)

[33mWarning[0m for TODReceiver in contract 'PreICO':
    |
    |        if (toReturn > 0) {
  > |            msg.sender.transfer(toReturn);
    |        }
    |        token.transfer(msg.sender, purchased.add(reward));
  at /home/jiaming/slither_fp_files/out12979.sol(391)

[33mWarning[0m for TODReceiver in contract 'PreICO':
    |        require(balance > 0);
    |
  > |        wallet.transfer(balance);
    |    }
    |
  at /home/jiaming/slither_fp_files/out12979.sol(438)

[33mWarning[0m for UnhandledException in contract 'PreICO':
    |
    |        if (toReturn > 0) {
  > |            msg.sender.transfer(toReturn);
    |        }
    |        token.transfer(msg.sender, purchased.add(reward));
  at /home/jiaming/slither_fp_files/out12979.sol(391)

[33mWarning[0m for UnhandledException in contract 'PreICO':
    |            msg.sender.transfer(toReturn);
    |        }
  > |        token.transfer(msg.sender, purchased.add(reward));
    |        allocateFunds();
    |        totalSold = totalSold.add(purchased);
  at /home/jiaming/slither_fp_files/out12979.sol(393)

[33mWarning[0m for UnhandledException in contract 'PreICO':
    |
    |    function burnUnsold() public onlyOwner afterEnd {
  > |        uint256 unsold = token.balanceOf(address(this));
    |        token.burn(unsold);
    |    }
  at /home/jiaming/slither_fp_files/out12979.sol(410)

[33mWarning[0m for UnhandledException in contract 'PreICO':
    |    function burnUnsold() public onlyOwner afterEnd {
    |        uint256 unsold = token.balanceOf(address(this));
  > |        token.burn(unsold);
    |    }
    |
  at /home/jiaming/slither_fp_files/out12979.sol(411)

[33mWarning[0m for UnhandledException in contract 'PreICO':
    |        require(balance > 0);
    |
  > |        wallet.transfer(balance);
    |    }
    |
  at /home/jiaming/slither_fp_files/out12979.sol(438)

[33mWarning[0m for UnhandledException in contract 'PreICO':
    |                    toTransfer = balance;
    |                }
  > |                beneficiary.wallet.transfer(toTransfer);
    |                beneficiary.transferred = beneficiary.transferred.add(toTransfer);
    |                break;
  at /home/jiaming/slither_fp_files/out12979.sol(453)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreICO':
    |            msg.sender.transfer(toReturn);
    |        }
  > |        token.transfer(msg.sender, purchased.add(reward));
    |        allocateFunds();
    |        totalSold = totalSold.add(purchased);
  at /home/jiaming/slither_fp_files/out12979.sol(393)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreICO':
    |
    |    function burnUnsold() public onlyOwner afterEnd {
  > |        uint256 unsold = token.balanceOf(address(this));
    |        token.burn(unsold);
    |    }
  at /home/jiaming/slither_fp_files/out12979.sol(410)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreICO':
    |    function burnUnsold() public onlyOwner afterEnd {
    |        uint256 unsold = token.balanceOf(address(this));
  > |        token.burn(unsold);
    |    }
    |
  at /home/jiaming/slither_fp_files/out12979.sol(411)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreICO':
    |        require(balance > 0);
    |
  > |        wallet.transfer(balance);
    |    }
    |
  at /home/jiaming/slither_fp_files/out12979.sol(438)

[31mViolation[0m for UnrestrictedWrite in contract 'PreICO':
    |        token.transfer(msg.sender, purchased.add(reward));
    |        allocateFunds();
  > |        totalSold = totalSold.add(purchased);
    |    }
    |
  at /home/jiaming/slither_fp_files/out12979.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICO':
    |                }
    |                beneficiary.wallet.transfer(toTransfer);
  > |                beneficiary.transferred = beneficiary.transferred.add(toTransfer);
    |                break;
    |            }
  at /home/jiaming/slither_fp_files/out12979.sol(454)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICO':
    |     */
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out12979.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICO':
    |        require(msg.sender == newOwner);
    |
  > |        owner = newOwner;
    |        newOwner = address(0);
    |
  at /home/jiaming/slither_fp_files/out12979.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICO':
    |
    |        owner = newOwner;
  > |        newOwner = address(0);
    |
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/slither_fp_files/out12979.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICO':
    |
    |    function changeStartTime(uint256 _startTime) public onlyOwner {
  > |        salePeriod.start = _startTime;
    |    }
    |
  at /home/jiaming/slither_fp_files/out12979.sol(415)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICO':
    |
    |    function changeEndTime(uint256 _endTime) public onlyOwner {
  > |        salePeriod.end = _endTime;
    |    }
    |
  at /home/jiaming/slither_fp_files/out12979.sol(419)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |library SafeMath {
    |    function multiply(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/slither_fp_files/out12979.sol(36)

[33mWarning[0m for LockedEther in contract 'Standard223Token':
    |// File: contracts/Standard223Token.sol
    |
  > |contract Standard223Token is ERC223Interface, StandardToken {
    |    function transfer(address _to, uint256 _value, bytes _data) public returns (bool ok) {
    |        if (!super.transfer(_to, _value)) {
  at /home/jiaming/slither_fp_files/out12979.sol(257)

[33mWarning[0m for UnhandledException in contract 'Standard223Token':
    |    function contractFallback(address _origin, address _to, uint256 _value, bytes _data) private {
    |        ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |        receiver.tokenFallback(_origin, _value, _data);
    |    }
    |
  at /home/jiaming/slither_fp_files/out12979.sol(294)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Standard223Token':
    |    function contractFallback(address _origin, address _to, uint256 _value, bytes _data) private {
    |        ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |        receiver.tokenFallback(_origin, _value, _data);
    |    }
    |
  at /home/jiaming/slither_fp_files/out12979.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'Standard223Token':
    |        require(_value <= holderBalance);
    |
  > |        balances[msg.sender] = holderBalance.subtract(_value);
    |        balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/slither_fp_files/out12979.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Standard223Token':
    |        balances[_from] = balanceFrom.subtract(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowToTrans.subtract(_value);
    |
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out12979.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'Standard223Token':
    |        //    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |        //    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/slither_fp_files/out12979.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'Standard223Token':
    |    function increaseApproval(address _spender, uint256 _addedValue) onlyPayloadSize(2 * 32) public returns (bool ok) {
    |        uint256 oldValue = allowed[msg.sender][_spender];
  > |        allowed[msg.sender][_spender] = oldValue.add(_addedValue);
    |
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out12979.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'Standard223Token':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.subtract(_subtractedValue);
  at /home/jiaming/slither_fp_files/out12979.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'Standard223Token':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.subtract(_subtractedValue);
    |        }
    |
  at /home/jiaming/slither_fp_files/out12979.sol(166)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |// File: contracts/StandardToken.sol
    |
  > |contract StandardToken is ERC20Interface {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out12979.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_value <= holderBalance);
    |
  > |        balances[msg.sender] = holderBalance.subtract(_value);
    |        balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/slither_fp_files/out12979.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balanceFrom.subtract(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowToTrans.subtract(_value);
    |
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out12979.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |        //    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/slither_fp_files/out12979.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function increaseApproval(address _spender, uint256 _addedValue) onlyPayloadSize(2 * 32) public returns (bool ok) {
    |        uint256 oldValue = allowed[msg.sender][_spender];
  > |        allowed[msg.sender][_spender] = oldValue.add(_addedValue);
    |
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out12979.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.subtract(_subtractedValue);
  at /home/jiaming/slither_fp_files/out12979.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.subtract(_subtractedValue);
    |        }
    |
  at /home/jiaming/slither_fp_files/out12979.sol(166)


