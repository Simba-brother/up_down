Processing contract: /home/jiaming/slither_fp_files/out515.sol:Authorizable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out515.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out515.sol:BurnToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out515.sol:ERC20
Processing contract: /home/jiaming/slither_fp_files/out515.sol:ERC20Basic
Processing contract: /home/jiaming/slither_fp_files/out515.sol:FiatContract
Processing contract: /home/jiaming/slither_fp_files/out515.sol:HumanStandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out515.sol:InterfaceProposal
Processing contract: /home/jiaming/slither_fp_files/out515.sol:OriginToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out515.sol:Ownable
Processing contract: /home/jiaming/slither_fp_files/out515.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out515.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out515.sol:StartToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out515.sol:Startable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out515.sol:Voter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out515.sol:VoterInterface
Processing contract: /home/jiaming/slither_fp_files/out515.sol:WINE
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out515.sol:proposal
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Authorizable':
    | }
    |
  > | contract Authorizable is Ownable {
    |   mapping(address => bool) public authorized;
    |   mapping(address => bool) public blocked;
  at /home/jiaming/slither_fp_files/out515.sol(39)

[31mViolation[0m for MissingInputValidation in contract 'Authorizable':
    |
    | contract Authorizable is Ownable {
  > |   mapping(address => bool) public authorized;
    |   mapping(address => bool) public blocked;
    |
  at /home/jiaming/slither_fp_files/out515.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'Authorizable':
    | contract Authorizable is Ownable {
    |   mapping(address => bool) public authorized;
  > |   mapping(address => bool) public blocked;
    |
    |   event AuthorizationSet(address indexed addressAuthorized, bool indexed authorization);
  at /home/jiaming/slither_fp_files/out515.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'Authorizable':
    |    * @param addressAuthorized The address to change authorization.
    |    */
  > |   function setAuthorized(address addressAuthorized, bool authorization) onlyOwner public {
    |     emit AuthorizationSet(addressAuthorized, authorization);
    |     authorized[addressAuthorized] = authorization;
  at /home/jiaming/slither_fp_files/out515.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'Authorizable':
    |   }
    |
  > |   function setBlocked(address addressAuthorized, bool authorization) onlyOwner public {
    |     blocked[addressAuthorized] = authorization;
    |   }
  at /home/jiaming/slither_fp_files/out515.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Authorizable':
    |
    | contract Ownable {
  > |   address public owner;
    | 
    |   event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/slither_fp_files/out515.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Authorizable':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |   function transferOwnership(address newOwner) onlyOwner public {
    |     require(newOwner != address(0));
    |     emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/slither_fp_files/out515.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'Authorizable':
    |     require(newOwner != address(0));
    |     emit OwnershipTransferred(owner, newOwner);
  > |     owner = newOwner;
    |   }
    | }
  at /home/jiaming/slither_fp_files/out515.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Authorizable':
    |   function setAuthorized(address addressAuthorized, bool authorization) onlyOwner public {
    |     emit AuthorizationSet(addressAuthorized, authorization);
  > |     authorized[addressAuthorized] = authorization;
    |   }
    |
  at /home/jiaming/slither_fp_files/out515.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Authorizable':
    |
    |   function setBlocked(address addressAuthorized, bool authorization) onlyOwner public {
  > |     blocked[addressAuthorized] = authorization;
    |   }
    |
  at /home/jiaming/slither_fp_files/out515.sol(71)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    |  event Approval(address indexed owner, address indexed spender, uint256 value);
    |}
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out515.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[_sender] = balances[_sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(_sender, _to, _value);
  at /home/jiaming/slither_fp_files/out515.sol(134)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/slither_fp_files/out515.sol(495)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |  }
    |}
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/slither_fp_files/out515.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[_sender] = balances[_sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(_sender, _to, _value);
  at /home/jiaming/slither_fp_files/out515.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/slither_fp_files/out515.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out515.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out515.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/slither_fp_files/out515.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/slither_fp_files/out515.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out515.sol(223)

[33mWarning[0m for LockedEther in contract 'Startable':
    | }
    |
  > |contract Startable is Ownable, Authorizable {
    |  event Start();
    |  event StopV();
  at /home/jiaming/slither_fp_files/out515.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'Startable':
    |
    | contract Authorizable is Ownable {
  > |   mapping(address => bool) public authorized;
    |   mapping(address => bool) public blocked;
    |
  at /home/jiaming/slither_fp_files/out515.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'Startable':
    | contract Authorizable is Ownable {
    |   mapping(address => bool) public authorized;
  > |   mapping(address => bool) public blocked;
    |
    |   event AuthorizationSet(address indexed addressAuthorized, bool indexed authorization);
  at /home/jiaming/slither_fp_files/out515.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'Startable':
    |    * @param addressAuthorized The address to change authorization.
    |    */
  > |   function setAuthorized(address addressAuthorized, bool authorization) onlyOwner public {
    |     emit AuthorizationSet(addressAuthorized, authorization);
    |     authorized[addressAuthorized] = authorization;
  at /home/jiaming/slither_fp_files/out515.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'Startable':
    |   }
    |
  > |   function setBlocked(address addressAuthorized, bool authorization) onlyOwner public {
    |     blocked[addressAuthorized] = authorization;
    |   }
  at /home/jiaming/slither_fp_files/out515.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Startable':
    |
    | contract Ownable {
  > |   address public owner;
    | 
    |   event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/slither_fp_files/out515.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Startable':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |   function transferOwnership(address newOwner) onlyOwner public {
    |     require(newOwner != address(0));
    |     emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/slither_fp_files/out515.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Startable':
    |  event StopV();
    |
  > |  bool public started = false;
    |
    |  /**
  at /home/jiaming/slither_fp_files/out515.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'Startable':
    |   * @dev called by the owner to start, go to normal state
    |   */
  > |  function start() onlyOwner public {
    |    started = true;
    |    emit Start();
  at /home/jiaming/slither_fp_files/out515.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'Startable':
    |  }
    |
  > |  function stop() onlyOwner public {
    |    started = false;
    |    emit StopV();
  at /home/jiaming/slither_fp_files/out515.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'Startable':
    |     require(newOwner != address(0));
    |     emit OwnershipTransferred(owner, newOwner);
  > |     owner = newOwner;
    |   }
    | }
  at /home/jiaming/slither_fp_files/out515.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Startable':
    |   function setAuthorized(address addressAuthorized, bool authorization) onlyOwner public {
    |     emit AuthorizationSet(addressAuthorized, authorization);
  > |     authorized[addressAuthorized] = authorization;
    |   }
    |
  at /home/jiaming/slither_fp_files/out515.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Startable':
    |
    |   function setBlocked(address addressAuthorized, bool authorization) onlyOwner public {
  > |     blocked[addressAuthorized] = authorization;
    |   }
    |
  at /home/jiaming/slither_fp_files/out515.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Startable':
    |   */
    |  function start() onlyOwner public {
  > |    started = true;
    |    emit Start();
    |  }
  at /home/jiaming/slither_fp_files/out515.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'Startable':
    |
    |  function stop() onlyOwner public {
  > |    started = false;
    |    emit StopV();
    |  }
  at /home/jiaming/slither_fp_files/out515.sol(99)

[33mWarning[0m for LockedEther in contract 'Voter':
    |}
    |
  > |contract Voter is VoterInterface , proposal {
    |
    |	modifier alreadyVoted {
  at /home/jiaming/slither_fp_files/out515.sol(573)

[33mWarning[0m for UnrestrictedWrite in contract 'Voter':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[_sender] = balances[_sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(_sender, _to, _value);
  at /home/jiaming/slither_fp_files/out515.sol(134)

[33mWarning[0m for LockedEther in contract 'proposal':
    |}
    |
  > |contract proposal is InterfaceProposal, BasicToken {
    |	using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out515.sol(530)

[33mWarning[0m for UnrestrictedWrite in contract 'proposal':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[_sender] = balances[_sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(_sender, _to, _value);
  at /home/jiaming/slither_fp_files/out515.sol(134)


