Processing contract: /home/jiaming/slither_fp_files/out4935.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out4935.sol:Control
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out4935.sol:ERC20
Processing contract: /home/jiaming/slither_fp_files/out4935.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out4935.sol:YOUSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out4935.sol:YOUToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20, Control {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out4935.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |		require(_value <= balances[msg.sender]);
    |
  > |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out4935.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |		balances[_from] = balances[_from].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
  > |		allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |		Transfer(_from, _to, _value);
    |		return true;
  at /home/jiaming/slither_fp_files/out4935.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |	function approve(address _spender, uint256 _value) public returns (bool) {
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/slither_fp_files/out4935.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    function pause() public onlyOwner whenNotPaused returns (bool) {
  > |        paused = true;
    |        Pause();
    |        return true;
  at /home/jiaming/slither_fp_files/out4935.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    function unpause() public onlyOwner whenPaused returns (bool) {
  > |        paused = false;
    |        Unpause();
    |        return true;
  at /home/jiaming/slither_fp_files/out4935.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |	function setOwner(address newOwner) public onlyOwner {
    |		require(newOwner != address(0));
  > |		owner = newOwner;
    |	}
    |}
  at /home/jiaming/slither_fp_files/out4935.sol(70)

[33mWarning[0m for LockedEther in contract 'Control':
    |}
    |
  > |contract Control {
    |	address public owner;
    |    bool public paused = false;//暂停交易
  at /home/jiaming/slither_fp_files/out4935.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Control':
    |
    |contract Control {
  > |	address public owner;
    |    bool public paused = false;//暂停交易
    |    uint256 constant internal _totalSupply  = (10 ** 9) * (10 ** 18);   // 1 billion YOU, decimals set to 18
  at /home/jiaming/slither_fp_files/out4935.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Control':
    |contract Control {
    |	address public owner;
  > |    bool public paused = false;//暂停交易
    |    uint256 constant internal _totalSupply  = (10 ** 9) * (10 ** 18);   // 1 billion YOU, decimals set to 18
    |
  at /home/jiaming/slither_fp_files/out4935.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Control':
    |    }
    |
  > |    function pause() public onlyOwner whenNotPaused returns (bool) {
    |        paused = true;
    |        Pause();
  at /home/jiaming/slither_fp_files/out4935.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Control':
    |    }
    |
  > |    function unpause() public onlyOwner whenPaused returns (bool) {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/slither_fp_files/out4935.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Control':
    |    }
    |
  > |	function setOwner(address newOwner) public onlyOwner {
    |		require(newOwner != address(0));
    |		owner = newOwner;
  at /home/jiaming/slither_fp_files/out4935.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Control':
    |
    |    function pause() public onlyOwner whenNotPaused returns (bool) {
  > |        paused = true;
    |        Pause();
    |        return true;
  at /home/jiaming/slither_fp_files/out4935.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'Control':
    |
    |    function unpause() public onlyOwner whenPaused returns (bool) {
  > |        paused = false;
    |        Unpause();
    |        return true;
  at /home/jiaming/slither_fp_files/out4935.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Control':
    |	function setOwner(address newOwner) public onlyOwner {
    |		require(newOwner != address(0));
  > |		owner = newOwner;
    |	}
    |}
  at /home/jiaming/slither_fp_files/out4935.sol(70)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/slither_fp_files/out4935.sol(3)


