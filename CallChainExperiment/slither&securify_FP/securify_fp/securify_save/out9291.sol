Processing contract: /home/jiaming/slither_fp_files/out9291.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9291.sol:ERC20
Processing contract: /home/jiaming/slither_fp_files/out9291.sol:ERC20Basic
Processing contract: /home/jiaming/slither_fp_files/out9291.sol:Haltable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9291.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9291.sol:MultiOwners
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9291.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9291.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9291.sol:SessiaCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9291.sol:SessiaToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9291.sol:StagePercentageStep
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9291.sol:StandardToken
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
  at /home/jiaming/slither_fp_files/out9291.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out9291.sol(87)

[33mWarning[0m for LockedEther in contract 'Haltable':
    |}
    |
  > |contract Haltable is MultiOwners {
    |    bool public halted;
    |
  at /home/jiaming/slither_fp_files/out9291.sol(269)

[31mViolation[0m for MissingInputValidation in contract 'Haltable':
    |    }
    |
  > |    function checkOwner(address maybe_owner) constant returns (bool) {
    |        return owners[maybe_owner] ? true : false;
    |    }
  at /home/jiaming/slither_fp_files/out9291.sol(250)

[31mViolation[0m for MissingInputValidation in contract 'Haltable':
    |
    |
  > |    function grant(address _owner) onlyOwner {
    |        owners[_owner] = true;
    |        AccessGrant(_owner);
  at /home/jiaming/slither_fp_files/out9291.sol(255)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |    
    |    mapping(address => bool) owners;
  > |    address public publisher;
    |
    |
  at /home/jiaming/slither_fp_files/out9291.sol(233)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |    }
    |
  > |    function isOwner() constant returns (bool) {
    |        return owners[msg.sender] ? true : false;
    |    }
  at /home/jiaming/slither_fp_files/out9291.sol(246)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |    }
    |
  > |    function revoke(address _owner) onlyOwner {
    |        require(_owner != publisher);
    |        require(msg.sender != _owner);
  at /home/jiaming/slither_fp_files/out9291.sol(260)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |contract Haltable is MultiOwners {
  > |    bool public halted;
    |
    |    modifier stopInEmergency {
  at /home/jiaming/slither_fp_files/out9291.sol(270)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |    // called by the owner on emergency, triggers stopped state
  > |    function halt() external onlyOwner {
    |        halted = true;
    |    }
  at /home/jiaming/slither_fp_files/out9291.sol(283)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |    // called by the owner on end of emergency, returns to normal state
  > |    function unhalt() external onlyOwner onlyInEmergency {
    |        halted = false;
    |    }
  at /home/jiaming/slither_fp_files/out9291.sol(288)

[31mViolation[0m for UnrestrictedWrite in contract 'Haltable':
    |
    |    function grant(address _owner) onlyOwner {
  > |        owners[_owner] = true;
    |        AccessGrant(_owner);
    |    }
  at /home/jiaming/slither_fp_files/out9291.sol(256)

[31mViolation[0m for UnrestrictedWrite in contract 'Haltable':
    |    // called by the owner on emergency, triggers stopped state
    |    function halt() external onlyOwner {
  > |        halted = true;
    |    }
    |
  at /home/jiaming/slither_fp_files/out9291.sol(284)

[31mViolation[0m for UnrestrictedWrite in contract 'Haltable':
    |    // called by the owner on end of emergency, returns to normal state
    |    function unhalt() external onlyOwner onlyInEmergency {
  > |        halted = false;
    |    }
    |
  at /home/jiaming/slither_fp_files/out9291.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |        require(msg.sender != _owner);
    |
  > |        owners[_owner] = false;
    |        AccessRevoke(_owner);
    |    }
  at /home/jiaming/slither_fp_files/out9291.sol(264)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    |}
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/slither_fp_files/out9291.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out9291.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out9291.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/slither_fp_files/out9291.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out9291.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out9291.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out9291.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/slither_fp_files/out9291.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/slither_fp_files/out9291.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out9291.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/slither_fp_files/out9291.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(0x0, _to, _amount);
  at /home/jiaming/slither_fp_files/out9291.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/slither_fp_files/out9291.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/slither_fp_files/out9291.sol(221)

[33mWarning[0m for LockedEther in contract 'MultiOwners':
    |}
    |
  > |contract MultiOwners {
    |
    |    event AccessGrant(address indexed owner);
  at /home/jiaming/slither_fp_files/out9291.sol(227)

[31mViolation[0m for MissingInputValidation in contract 'MultiOwners':
    |    }
    |
  > |    function checkOwner(address maybe_owner) constant returns (bool) {
    |        return owners[maybe_owner] ? true : false;
    |    }
  at /home/jiaming/slither_fp_files/out9291.sol(250)

[31mViolation[0m for MissingInputValidation in contract 'MultiOwners':
    |
    |
  > |    function grant(address _owner) onlyOwner {
    |        owners[_owner] = true;
    |        AccessGrant(_owner);
  at /home/jiaming/slither_fp_files/out9291.sol(255)

[33mWarning[0m for MissingInputValidation in contract 'MultiOwners':
    |    
    |    mapping(address => bool) owners;
  > |    address public publisher;
    |
    |
  at /home/jiaming/slither_fp_files/out9291.sol(233)

[33mWarning[0m for MissingInputValidation in contract 'MultiOwners':
    |    }
    |
  > |    function isOwner() constant returns (bool) {
    |        return owners[msg.sender] ? true : false;
    |    }
  at /home/jiaming/slither_fp_files/out9291.sol(246)

[33mWarning[0m for MissingInputValidation in contract 'MultiOwners':
    |    }
    |
  > |    function revoke(address _owner) onlyOwner {
    |        require(_owner != publisher);
    |        require(msg.sender != _owner);
  at /home/jiaming/slither_fp_files/out9291.sol(260)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiOwners':
    |
    |    function grant(address _owner) onlyOwner {
  > |        owners[_owner] = true;
    |        AccessGrant(_owner);
    |    }
  at /home/jiaming/slither_fp_files/out9291.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiOwners':
    |        require(msg.sender != _owner);
    |
  > |        owners[_owner] = false;
    |        AccessRevoke(_owner);
    |    }
  at /home/jiaming/slither_fp_files/out9291.sol(264)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/slither_fp_files/out9291.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out9291.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/slither_fp_files/out9291.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/slither_fp_files/out9291.sol(61)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/slither_fp_files/out9291.sol(3)

[33mWarning[0m for LockedEther in contract 'SessiaToken':
    |}
    |
  > |contract SessiaToken is MintableToken, MultiOwners {
    |
    |    string public constant name = "Sessia Kickers";
  at /home/jiaming/slither_fp_files/out9291.sol(622)

[31mViolation[0m for UnrestrictedWrite in contract 'SessiaToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/slither_fp_files/out9291.sol(61)

[31mViolation[0m for UnrestrictedWrite in contract 'SessiaToken':
    |   */
    |  function finishMinting() onlyOwner public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/slither_fp_files/out9291.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'SessiaToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out9291.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'SessiaToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out9291.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'SessiaToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/slither_fp_files/out9291.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'SessiaToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out9291.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'SessiaToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out9291.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'SessiaToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out9291.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'SessiaToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/slither_fp_files/out9291.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'SessiaToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/slither_fp_files/out9291.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'SessiaToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out9291.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'SessiaToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/slither_fp_files/out9291.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'SessiaToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(0x0, _to, _amount);
  at /home/jiaming/slither_fp_files/out9291.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'SessiaToken':
    |
    |    function grant(address _owner) onlyOwner {
  > |        owners[_owner] = true;
    |        AccessGrant(_owner);
    |    }
  at /home/jiaming/slither_fp_files/out9291.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'SessiaToken':
    |        require(msg.sender != _owner);
    |
  > |        owners[_owner] = false;
    |        AccessRevoke(_owner);
    |    }
  at /home/jiaming/slither_fp_files/out9291.sol(264)

[33mWarning[0m for LockedEther in contract 'StagePercentageStep':
    |}
    |
  > |contract StagePercentageStep is MultiOwners {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out9291.sol(294)

[31mViolation[0m for UnrestrictedWrite in contract 'StagePercentageStep':
    |
    |    function grant(address _owner) onlyOwner {
  > |        owners[_owner] = true;
    |        AccessGrant(_owner);
    |    }
  at /home/jiaming/slither_fp_files/out9291.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'StagePercentageStep':
    |        require(msg.sender != _owner);
    |
  > |        owners[_owner] = false;
    |        AccessRevoke(_owner);
    |    }
  at /home/jiaming/slither_fp_files/out9291.sol(264)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/slither_fp_files/out9291.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out9291.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out9291.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out9291.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/slither_fp_files/out9291.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/slither_fp_files/out9291.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out9291.sol(182)


