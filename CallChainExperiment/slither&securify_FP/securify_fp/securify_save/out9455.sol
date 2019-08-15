Processing contract: /home/jiaming/slither_fp_files/out9455.sol:Button
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9455.sol:MetaToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9455.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9455.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9455.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9455.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9455.sol:Token
[31mViolation[0m for DAOConstantGas in contract 'Button':
    |        require(msg.sender == best, "The caller is not the winner");
    |        require(now >= end, "The round didn't end");
  > |        require(best.send(address(this).balance), "The winner can't receive ETH");
    |        emit Claim(msg.sender, address(this).balance);
    |        _ticket = 750000000000000;
  at /home/jiaming/slither_fp_files/out9455.sol(234)

[33mWarning[0m for LockedEther in contract 'Button':
    |}
    |
  > |contract Button is Ownable {
    |    // metadata
    |    string public constant name = "THE BUTTON";
  at /home/jiaming/slither_fp_files/out9455.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'Button':
    |    }
    |    
  > |    function setOwner(address _owner) external returns (bool) {
    |        require(owner == msg.sender);
    |        owner = _owner;
  at /home/jiaming/slither_fp_files/out9455.sol(108)

[31mViolation[0m for MissingInputValidation in contract 'Button':
    |    
    |    // Bids
  > |    mapping(uint256 => uint256) public total;
    |    
    |    // Events 
  at /home/jiaming/slither_fp_files/out9455.sol(203)

[31mViolation[0m for MissingInputValidation in contract 'Button':
    |    }
    |    
  > |    function transfer(address _to, uint256 _amount) external returns (bool) {
    |        require(_amount == 1, "THERE IS ONLY ONE BUTTON");
    |        require(msg.sender == best, "THE BUTTON IS NOT YOURS");
  at /home/jiaming/slither_fp_files/out9455.sol(240)

[33mWarning[0m for MissingInputValidation in contract 'Button':
    |    event TransferOwner(address _from, address _to);
    |
  > |    address public owner;
    |    
    |    constructor() public {
  at /home/jiaming/slither_fp_files/out9455.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'Button':
    |contract Button is Ownable {
    |    // metadata
  > |    string public constant name = "THE BUTTON";
    |    string public constant symbol = "BUTTON";
    |    string public constant version = "0.0";
  at /home/jiaming/slither_fp_files/out9455.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'Button':
    |    // metadata
    |    string public constant name = "THE BUTTON";
  > |    string public constant symbol = "BUTTON";
    |    string public constant version = "0.0";
    |    uint8 public constant decimals = 0;
  at /home/jiaming/slither_fp_files/out9455.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'Button':
    |    string public constant name = "THE BUTTON";
    |    string public constant symbol = "BUTTON";
  > |    string public constant version = "0.0";
    |    uint8 public constant decimals = 0;
    |    uint256 public constant totalSupply = 1;
  at /home/jiaming/slither_fp_files/out9455.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'Button':
    |    string public constant symbol = "BUTTON";
    |    string public constant version = "0.0";
  > |    uint8 public constant decimals = 0;
    |    uint256 public constant totalSupply = 1;
    |    
  at /home/jiaming/slither_fp_files/out9455.sol(180)

[33mWarning[0m for MissingInputValidation in contract 'Button':
    |    string public constant version = "0.0";
    |    uint8 public constant decimals = 0;
  > |    uint256 public constant totalSupply = 1;
    |    
    |    uint256 private _ticket = 750000000000000;
  at /home/jiaming/slither_fp_files/out9455.sol(181)

[33mWarning[0m for MissingInputValidation in contract 'Button':
    |    
    |    uint256 private _ticket = 750000000000000;
  > |    uint256 public end;
    |    
    |    // 1 hour
  at /home/jiaming/slither_fp_files/out9455.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'Button':
    |    
    |    // 1 hour
  > |    uint256 public duration = 1 * 60 * 60;
    |    
    |    // Ticket window
  at /home/jiaming/slither_fp_files/out9455.sol(187)

[33mWarning[0m for MissingInputValidation in contract 'Button':
    |    
    |    // Ticket window
  > |    uint256 public window = 24 * 60 * 60;
    |    
    |    // Plays in window
  at /home/jiaming/slither_fp_files/out9455.sol(190)

[33mWarning[0m for MissingInputValidation in contract 'Button':
    |    
    |    // E-BUTTON Tokens
  > |    MetaToken public eButton;
    |    MetaToken public eTicket;
    |    MetaToken public wtToken;
  at /home/jiaming/slither_fp_files/out9455.sol(195)

[33mWarning[0m for MissingInputValidation in contract 'Button':
    |    // E-BUTTON Tokens
    |    MetaToken public eButton;
  > |    MetaToken public eTicket;
    |    MetaToken public wtToken;
    |
  at /home/jiaming/slither_fp_files/out9455.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'Button':
    |    MetaToken public eButton;
    |    MetaToken public eTicket;
  > |    MetaToken public wtToken;
    |
    |    // Winner
  at /home/jiaming/slither_fp_files/out9455.sol(197)

[33mWarning[0m for MissingInputValidation in contract 'Button':
    |
    |    // Winner
  > |    address public best;
    |    
    |    // Bids
  at /home/jiaming/slither_fp_files/out9455.sol(200)

[33mWarning[0m for MissingInputValidation in contract 'Button':
    |    }
    |    
  > |    function balanceOf(address _owner) external view returns (uint256) {
    |        return _owner == best ? 1 : 0; 
    |    }
  at /home/jiaming/slither_fp_files/out9455.sol(217)

[33mWarning[0m for MissingInputValidation in contract 'Button':
    |    }
    |    
  > |    function ticket() external view returns (uint256) {
    |        if (total[now / window] == 0) {
    |            // Recalc ticket
  at /home/jiaming/slither_fp_files/out9455.sol(221)

[33mWarning[0m for MissingInputValidation in contract 'Button':
    |    }
    |    
  > |    function claim() external returns (bool) {
    |        require(msg.sender == best, "The caller is not the winner");
    |        require(now >= end, "The round didn't end");
  at /home/jiaming/slither_fp_files/out9455.sol(231)

[31mViolation[0m for TODAmount in contract 'Button':
    |        require(msg.sender == best, "The caller is not the winner");
    |        require(now >= end, "The round didn't end");
  > |        require(best.send(address(this).balance), "The winner can't receive ETH");
    |        emit Claim(msg.sender, address(this).balance);
    |        _ticket = 750000000000000;
  at /home/jiaming/slither_fp_files/out9455.sol(234)

[31mViolation[0m for TODReceiver in contract 'Button':
    |        require(msg.sender == best, "The caller is not the winner");
    |        require(now >= end, "The round didn't end");
  > |        require(best.send(address(this).balance), "The winner can't receive ETH");
    |        emit Claim(msg.sender, address(this).balance);
    |        _ticket = 750000000000000;
  at /home/jiaming/slither_fp_files/out9455.sol(234)

[33mWarning[0m for UnhandledException in contract 'Button':
    |        require(msg.sender == best, "The caller is not the winner");
    |        require(now >= end, "The round didn't end");
  > |        require(best.send(address(this).balance), "The winner can't receive ETH");
    |        emit Claim(msg.sender, address(this).balance);
    |        _ticket = 750000000000000;
  at /home/jiaming/slither_fp_files/out9455.sol(234)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Button':
    |        require(msg.sender == best, "The caller is not the winner");
    |        require(now >= end, "The round didn't end");
  > |        require(best.send(address(this).balance), "The winner can't receive ETH");
    |        emit Claim(msg.sender, address(this).balance);
    |        _ticket = 750000000000000;
  at /home/jiaming/slither_fp_files/out9455.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'Button':
    |    function setOwner(address _owner) external returns (bool) {
    |        require(owner == msg.sender);
  > |        owner = _owner;
    |        emit TransferOwner(msg.sender, _owner);
    |        return true;
  at /home/jiaming/slither_fp_files/out9455.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Button':
    |        require(best.send(address(this).balance), "The winner can't receive ETH");
    |        emit Claim(msg.sender, address(this).balance);
  > |        _ticket = 750000000000000;
    |        return true;
    |    }
  at /home/jiaming/slither_fp_files/out9455.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'Button':
    |        require(msg.sender == best, "THE BUTTON IS NOT YOURS");
    |        emit Transfer(msg.sender, _to, 1);
  > |        best = _to;
    |        return true;
    |    }
  at /home/jiaming/slither_fp_files/out9455.sol(244)

[31mViolation[0m for LockedEther in contract 'MetaToken':
    |}
    |
  > |contract MetaToken is MintableToken {
    |    string private iName;
    |    string private iSymbol;
  at /home/jiaming/slither_fp_files/out9455.sol(126)

[31mViolation[0m for UnrestrictedWrite in contract 'MetaToken':
    |}
    |
  > |contract MetaToken is MintableToken {
    |    string private iName;
    |    string private iSymbol;
  at /home/jiaming/slither_fp_files/out9455.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'MetaToken':
    |    function transfer(address _to, uint256 _value) external returns (bool success) {
    |      if (balances[msg.sender] >= _value) {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out9455.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'MetaToken':
    |      if (balances[msg.sender] >= _value) {
    |        balances[msg.sender] -= _value;
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out9455.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'MetaToken':
    |      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value) {
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out9455.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'MetaToken':
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out9455.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'MetaToken':
    |
    |    function approve(address _spender,  uint256 _value) external returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out9455.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'MetaToken':
    |
    |    function increaseApproval (address _spender, uint _addedValue) external returns (bool success) {
  > |      allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |      emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |      return true;
  at /home/jiaming/slither_fp_files/out9455.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'MetaToken':
    |      uint oldValue = allowed[msg.sender][_spender];
    |      if (_subtractedValue >= oldValue) {
  > |        allowed[msg.sender][_spender] = 0;
    |      } else {
    |        allowed[msg.sender][_spender] -= _subtractedValue;
  at /home/jiaming/slither_fp_files/out9455.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'MetaToken':
    |        allowed[msg.sender][_spender] = 0;
    |      } else {
  > |        allowed[msg.sender][_spender] -= _subtractedValue;
    |      }
    |      emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out9455.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'MetaToken':
    |    function mint(address _to, uint256 _amount) external returns (bool) {
    |        require(owner == msg.sender, "Only owner can mint");
  > |        totalSupply = totalSupply.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(0x0, _to, _amount);
  at /home/jiaming/slither_fp_files/out9455.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'MetaToken':
    |        require(owner == msg.sender, "Only owner can mint");
    |        totalSupply = totalSupply.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(0x0, _to, _amount);
    |        return true;
  at /home/jiaming/slither_fp_files/out9455.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'MetaToken':
    |    function setOwner(address _owner) external returns (bool) {
    |        require(owner == msg.sender);
  > |        owner = _owner;
    |        emit TransferOwner(msg.sender, _owner);
    |        return true;
  at /home/jiaming/slither_fp_files/out9455.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'MetaToken':
    |}
    |
  > |contract MetaToken is MintableToken {
    |    string private iName;
    |    string private iSymbol;
  at /home/jiaming/slither_fp_files/out9455.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'MetaToken':
    |    function setAdmin(address _admin) external {
    |        require(msg.sender == admin, "Only admin");
  > |        admin = _admin;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out9455.sol(171)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    |}
    |
  > |contract MintableToken is StandardToken, Ownable {
    |    function mint(address _to, uint256 _amount) external returns (bool) {
    |        require(owner == msg.sender, "Only owner can mint");
  at /home/jiaming/slither_fp_files/out9455.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function transfer(address _to, uint256 _value) external returns (bool success) {
    |      if (balances[msg.sender] >= _value) {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out9455.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      if (balances[msg.sender] >= _value) {
    |        balances[msg.sender] -= _value;
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out9455.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value) {
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out9455.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out9455.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    function approve(address _spender,  uint256 _value) external returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out9455.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    function increaseApproval (address _spender, uint _addedValue) external returns (bool success) {
  > |      allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |      emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |      return true;
  at /home/jiaming/slither_fp_files/out9455.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      uint oldValue = allowed[msg.sender][_spender];
    |      if (_subtractedValue >= oldValue) {
  > |        allowed[msg.sender][_spender] = 0;
    |      } else {
    |        allowed[msg.sender][_spender] -= _subtractedValue;
  at /home/jiaming/slither_fp_files/out9455.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        allowed[msg.sender][_spender] = 0;
    |      } else {
  > |        allowed[msg.sender][_spender] -= _subtractedValue;
    |      }
    |      emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out9455.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function mint(address _to, uint256 _amount) external returns (bool) {
    |        require(owner == msg.sender, "Only owner can mint");
  > |        totalSupply = totalSupply.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(0x0, _to, _amount);
  at /home/jiaming/slither_fp_files/out9455.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(owner == msg.sender, "Only owner can mint");
    |        totalSupply = totalSupply.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(0x0, _to, _amount);
    |        return true;
  at /home/jiaming/slither_fp_files/out9455.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function setOwner(address _owner) external returns (bool) {
    |        require(owner == msg.sender);
  > |        owner = _owner;
    |        emit TransferOwner(msg.sender, _owner);
    |        return true;
  at /home/jiaming/slither_fp_files/out9455.sol(110)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    event TransferOwner(address _from, address _to);
    |
  at /home/jiaming/slither_fp_files/out9455.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |    
  > |    function setOwner(address _owner) external returns (bool) {
    |        require(owner == msg.sender);
    |        owner = _owner;
  at /home/jiaming/slither_fp_files/out9455.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    event TransferOwner(address _from, address _to);
    |
  > |    address public owner;
    |    
    |    constructor() public {
  at /home/jiaming/slither_fp_files/out9455.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function setOwner(address _owner) external returns (bool) {
    |        require(owner == msg.sender);
  > |        owner = _owner;
    |        emit TransferOwner(msg.sender, _owner);
    |        return true;
  at /home/jiaming/slither_fp_files/out9455.sol(110)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/slither_fp_files/out9455.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |/*  ERC 20 token */
  > |contract StandardToken is Token {
    |    using SafeMath for uint256;
    |    function transfer(address _to, uint256 _value) external returns (bool success) {
  at /home/jiaming/slither_fp_files/out9455.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) external returns (bool success) {
    |      if (balances[msg.sender] >= _value) {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out9455.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value) {
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out9455.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender,  uint256 _value) external returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out9455.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function increaseApproval (address _spender, uint _addedValue) external returns (bool success) {
  > |      allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |      emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |      return true;
  at /home/jiaming/slither_fp_files/out9455.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      uint oldValue = allowed[msg.sender][_spender];
    |      if (_subtractedValue >= oldValue) {
  > |        allowed[msg.sender][_spender] = 0;
    |      } else {
    |        allowed[msg.sender][_spender] -= _subtractedValue;
  at /home/jiaming/slither_fp_files/out9455.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        allowed[msg.sender][_spender] = 0;
    |      } else {
  > |        allowed[msg.sender][_spender] -= _subtractedValue;
    |      }
    |      emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out9455.sol(88)


