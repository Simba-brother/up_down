Processing contract: /home/jiaming/slither_fp_files/out5811.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5811.sol:IERC20
Processing contract: /home/jiaming/slither_fp_files/out5811.sol:PiggyBank
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5811.sol:PiggyToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5811.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20':
    | * @dev Implementation of the basic standard token.
    | */
  > |contract ERC20 is IERC20 {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out5811.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(_to != address(0),"Invalid address");
    |
  > |        balances_[msg.sender] = balances_[msg.sender].sub(_value);
    |        balances_[_to] = balances_[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out5811.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed_[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out5811.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        balances_[_from] = balances_[_from].sub(_value);
    |        balances_[_to] = balances_[_to].add(_value);
  > |        allowed_[_from][msg.sender] = allowed_[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out5811.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |      returns (bool)
    |    {
  > |        allowed_[msg.sender][_spender] = (allowed_[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed_[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/slither_fp_files/out5811.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        uint256 oldValue = allowed_[msg.sender][_spender];
    |        if (_subtractedValue >= oldValue) {
  > |            allowed_[msg.sender][_spender] = 0;
    |        } else {
    |            allowed_[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/slither_fp_files/out5811.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |            allowed_[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed_[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed_[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out5811.sol(253)

[31mViolation[0m for DAOConstantGas in contract 'PiggyBank':
    |        uint256 weiAmount = tokens.mul(rate).div(1 ether);
    |        token.burn(_beneficiary, tokens);
  > |        _beneficiary.transfer(weiAmount);
    |        _updatePrice();
    |        
  at /home/jiaming/slither_fp_files/out5811.sol(455)

[33mWarning[0m for LockedEther in contract 'PiggyBank':
    | * @dev PiggyBank is a base contract for managing a token buying and selling
    | */
  > |contract PiggyBank {
    |    using SafeMath for uint256;
    |    address public owner;
  at /home/jiaming/slither_fp_files/out5811.sol(364)

[31mViolation[0m for TODAmount in contract 'PiggyBank':
    |        uint256 weiAmount = tokens.mul(rate).div(1 ether);
    |        token.burn(_beneficiary, tokens);
  > |        _beneficiary.transfer(weiAmount);
    |        _updatePrice();
    |        
  at /home/jiaming/slither_fp_files/out5811.sol(455)

[33mWarning[0m for TODReceiver in contract 'PiggyBank':
    |        uint256 weiAmount = tokens.mul(rate).div(1 ether);
    |        token.burn(_beneficiary, tokens);
  > |        _beneficiary.transfer(weiAmount);
    |        _updatePrice();
    |        
  at /home/jiaming/slither_fp_files/out5811.sol(455)

[33mWarning[0m for UnhandledException in contract 'PiggyBank':
    |
    |    function _takeProfit(address _beneficiary) internal {
  > |        uint256 tokens = token.balanceOf(_beneficiary);
    |        uint256 weiAmount = tokens.mul(rate).div(1 ether);
    |        token.burn(_beneficiary, tokens);
  at /home/jiaming/slither_fp_files/out5811.sol(452)

[33mWarning[0m for UnhandledException in contract 'PiggyBank':
    |        uint256 tokens = token.balanceOf(_beneficiary);
    |        uint256 weiAmount = tokens.mul(rate).div(1 ether);
  > |        token.burn(_beneficiary, tokens);
    |        _beneficiary.transfer(weiAmount);
    |        _updatePrice();
  at /home/jiaming/slither_fp_files/out5811.sol(454)

[33mWarning[0m for UnhandledException in contract 'PiggyBank':
    |        uint256 weiAmount = tokens.mul(rate).div(1 ether);
    |        token.burn(_beneficiary, tokens);
  > |        _beneficiary.transfer(weiAmount);
    |        _updatePrice();
    |        
  at /home/jiaming/slither_fp_files/out5811.sol(455)

[33mWarning[0m for UnhandledException in contract 'PiggyBank':
    |    function _updatePrice() internal {
    |        uint256 oldPrice = rate;
  > |        if (token.totalSupply()>0){
    |            rate = myAddress.balance.mul(1 ether).div(token.totalSupply());
    |            if (rate != oldPrice){
  at /home/jiaming/slither_fp_files/out5811.sol(464)

[33mWarning[0m for UnhandledException in contract 'PiggyBank':
    |        uint256 oldPrice = rate;
    |        if (token.totalSupply()>0){
  > |            rate = myAddress.balance.mul(1 ether).div(token.totalSupply());
    |            if (rate != oldPrice){
    |                emit TokenPrice(rate);
  at /home/jiaming/slither_fp_files/out5811.sol(465)

[33mWarning[0m for UnhandledException in contract 'PiggyBank':
    |    */
    |    function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |        token.mint(_beneficiary, _tokenAmount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out5811.sol(479)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PiggyBank':
    |
    |    function _takeProfit(address _beneficiary) internal {
  > |        uint256 tokens = token.balanceOf(_beneficiary);
    |        uint256 weiAmount = tokens.mul(rate).div(1 ether);
    |        token.burn(_beneficiary, tokens);
  at /home/jiaming/slither_fp_files/out5811.sol(452)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PiggyBank':
    |        uint256 tokens = token.balanceOf(_beneficiary);
    |        uint256 weiAmount = tokens.mul(rate).div(1 ether);
  > |        token.burn(_beneficiary, tokens);
    |        _beneficiary.transfer(weiAmount);
    |        _updatePrice();
  at /home/jiaming/slither_fp_files/out5811.sol(454)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PiggyBank':
    |        uint256 weiAmount = tokens.mul(rate).div(1 ether);
    |        token.burn(_beneficiary, tokens);
  > |        _beneficiary.transfer(weiAmount);
    |        _updatePrice();
    |        
  at /home/jiaming/slither_fp_files/out5811.sol(455)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PiggyBank':
    |    function _updatePrice() internal {
    |        uint256 oldPrice = rate;
  > |        if (token.totalSupply()>0){
    |            rate = myAddress.balance.mul(1 ether).div(token.totalSupply());
    |            if (rate != oldPrice){
  at /home/jiaming/slither_fp_files/out5811.sol(464)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PiggyBank':
    |        uint256 oldPrice = rate;
    |        if (token.totalSupply()>0){
  > |            rate = myAddress.balance.mul(1 ether).div(token.totalSupply());
    |            if (rate != oldPrice){
    |                emit TokenPrice(rate);
  at /home/jiaming/slither_fp_files/out5811.sol(465)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PiggyBank':
    |    */
    |    function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |        token.mint(_beneficiary, _tokenAmount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out5811.sol(479)

[33mWarning[0m for UnrestrictedWrite in contract 'PiggyBank':
    |
    |        // update state
  > |        weiRaised = weiRaised.add(weiAmount);
    |        //rate = myAddress.balance.div(weiRaised);
    |
  at /home/jiaming/slither_fp_files/out5811.sol(436)

[33mWarning[0m for UnrestrictedWrite in contract 'PiggyBank':
    |        uint256 oldPrice = rate;
    |        if (token.totalSupply()>0){
  > |            rate = myAddress.balance.mul(1 ether).div(token.totalSupply());
    |            if (rate != oldPrice){
    |                emit TokenPrice(rate);
  at /home/jiaming/slither_fp_files/out5811.sol(465)

[33mWarning[0m for LockedEther in contract 'PiggyToken':
    | * @dev ERC20 compatible token contract
    | */
  > |contract PiggyToken is ERC20 {
    |    string public constant name = "PiggyBank Token";
    |    string public constant symbol = "Piggy";
  at /home/jiaming/slither_fp_files/out5811.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'PiggyToken':
    |        require(_to != address(0),"Invalid address");
    |
  > |        balances_[msg.sender] = balances_[msg.sender].sub(_value);
    |        balances_[_to] = balances_[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out5811.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'PiggyToken':
    |
    |        balances_[msg.sender] = balances_[msg.sender].sub(_value);
  > |        balances_[_to] = balances_[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out5811.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'PiggyToken':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed_[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out5811.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'PiggyToken':
    |        require(_to != address(0),"Invalid address");
    |
  > |        balances_[_from] = balances_[_from].sub(_value);
    |        balances_[_to] = balances_[_to].add(_value);
    |        allowed_[_from][msg.sender] = allowed_[_from][msg.sender].sub(_value);
  at /home/jiaming/slither_fp_files/out5811.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'PiggyToken':
    |
    |        balances_[_from] = balances_[_from].sub(_value);
  > |        balances_[_to] = balances_[_to].add(_value);
    |        allowed_[_from][msg.sender] = allowed_[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out5811.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'PiggyToken':
    |        balances_[_from] = balances_[_from].sub(_value);
    |        balances_[_to] = balances_[_to].add(_value);
  > |        allowed_[_from][msg.sender] = allowed_[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out5811.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'PiggyToken':
    |      returns (bool)
    |    {
  > |        allowed_[msg.sender][_spender] = (allowed_[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed_[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/slither_fp_files/out5811.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'PiggyToken':
    |        uint256 oldValue = allowed_[msg.sender][_spender];
    |        if (_subtractedValue >= oldValue) {
  > |            allowed_[msg.sender][_spender] = 0;
    |        } else {
    |            allowed_[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/slither_fp_files/out5811.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'PiggyToken':
    |            allowed_[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed_[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed_[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out5811.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'PiggyToken':
    |    function _mint(address _account, uint256 _amount) internal returns (bool) {
    |        require(_account != 0,"Invalid address");
  > |        totalSupply_ = totalSupply_.add(_amount);
    |        balances_[_account] = balances_[_account].add(_amount);
    |        emit Transfer(address(0), _account, _amount);
  at /home/jiaming/slither_fp_files/out5811.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'PiggyToken':
    |        require(_account != 0,"Invalid address");
    |        totalSupply_ = totalSupply_.add(_amount);
  > |        balances_[_account] = balances_[_account].add(_amount);
    |        emit Transfer(address(0), _account, _amount);
    |        return true;
  at /home/jiaming/slither_fp_files/out5811.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'PiggyToken':
    |        require(_amount <= balances_[_account],"Amount is more than balance");
    |
  > |        totalSupply_ = totalSupply_.sub(_amount);
    |        balances_[_account] = balances_[_account].sub(_amount);
    |        emit Transfer(_account, address(0), _amount);
  at /home/jiaming/slither_fp_files/out5811.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'PiggyToken':
    |
    |        totalSupply_ = totalSupply_.sub(_amount);
  > |        balances_[_account] = balances_[_account].sub(_amount);
    |        emit Transfer(_account, address(0), _amount);
    |    }
  at /home/jiaming/slither_fp_files/out5811.sol(285)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/slither_fp_files/out5811.sol(50)


