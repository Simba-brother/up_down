Processing contract: /home/jiaming/slither_fp_files/out8887.sol:AdminAccess
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8887.sol:ERC20_Interface
Processing contract: /home/jiaming/slither_fp_files/out8887.sol:ERC20_Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8887.sol:EthWrapper
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8887.sol:EthWrapper_Interface
Processing contract: /home/jiaming/slither_fp_files/out8887.sol:EtherStore
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8887.sol:Managable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8887.sol:Mergex
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8887.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8887.sol:nonNativeToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8887.sol:nonNativeToken_Interface
[33mWarning[0m for LockedEther in contract 'AdminAccess':
    |}
    |
  > |contract AdminAccess {
    |	mapping(address => uint8) public admins;
    |	event AdminAdded(address admin,uint8 access);
  at /home/jiaming/slither_fp_files/out8887.sol(171)

[31mViolation[0m for MissingInputValidation in contract 'AdminAccess':
    |
    |contract AdminAccess {
  > |	mapping(address => uint8) public admins;
    |	event AdminAdded(address admin,uint8 access);
    |	event AdminAccessChanged(address admin, uint8 old_access, uint8 new_access);
  at /home/jiaming/slither_fp_files/out8887.sol(172)

[31mViolation[0m for MissingInputValidation in contract 'AdminAccess':
    |	}
    |
  > |	function addAdmin(address _admin, uint8 _access) public onlyAdmin(2) {
    |		require(admins[_admin] == 0);
    |		require(_access > 0);
  at /home/jiaming/slither_fp_files/out8887.sol(185)

[31mViolation[0m for MissingInputValidation in contract 'AdminAccess':
    |	}
    |
  > |	function changeAccess(address _admin, uint8 _access) public onlyAdmin(2) {
    |		require(admins[_admin] > 0);
    |		require(_access > 0);
  at /home/jiaming/slither_fp_files/out8887.sol(192)

[31mViolation[0m for MissingInputValidation in contract 'AdminAccess':
    |	}
    |
  > |	function removeAdmin(address _admin) public onlyAdmin(2) {
    |		require(admins[_admin] > 0);
    |		AdminRemoved(_admin);
  at /home/jiaming/slither_fp_files/out8887.sol(199)

[31mViolation[0m for UnrestrictedWrite in contract 'AdminAccess':
    |		require(_access > 0);
    |		AdminAdded(_admin,_access);
  > |		admins[_admin]=_access;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(189)

[31mViolation[0m for UnrestrictedWrite in contract 'AdminAccess':
    |		require(_access > 0);
    |		AdminAccessChanged(_admin, admins[_admin], _access);
  > |		admins[_admin]=_access;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(196)

[31mViolation[0m for UnrestrictedWrite in contract 'AdminAccess':
    |		require(admins[_admin] > 0);
    |		AdminRemoved(_admin);
  > |		admins[_admin]=0;
    |	}
    |}
  at /home/jiaming/slither_fp_files/out8887.sol(202)

[33mWarning[0m for LockedEther in contract 'ERC20_Token':
    |}
    |
  > |contract ERC20_Token is ERC20_Interface{
    |	using SafeMath for uint256;
    |	mapping(address => uint256) balances;
  at /home/jiaming/slither_fp_files/out8887.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20_Token':
    |	function transfer(address _to, uint256 _value) public returns (bool success) {
    |		if (balances[msg.sender] >= _value) {
  > |			balances[msg.sender] = balances[msg.sender].sub(_value);
    |			balances[_to] = balances[_to].add(_value);
    |			return true;
  at /home/jiaming/slither_fp_files/out8887.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20_Token':
    |			balances[_from] = balances[_from].sub(_value);
    |			balances[_to] = balances[_to].add(_value);
  > |			allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |			Transfer(_from, _to, _value);
    |			return true;
  at /home/jiaming/slither_fp_files/out8887.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20_Token':
    |
    |	function approve(address _spender, uint256 _value) public returns (bool success) {
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/slither_fp_files/out8887.sol(84)

[33mWarning[0m for DAOConstantGas in contract 'EthWrapper':
    |		require(balances[msg.sender]>=_amount);
    |		balances[msg.sender]=balances[msg.sender].sub(_amount);
  > |		msg.sender.transfer(_amount);
    |	}
    |}
  at /home/jiaming/slither_fp_files/out8887.sol(167)

[33mWarning[0m for LockedEther in contract 'EthWrapper':
    |}
    |
  > |contract EthWrapper is nonNativeToken, EthWrapper_Interface{
    |	bool isWrapperChanged;
    |
  at /home/jiaming/slither_fp_files/out8887.sol(147)

[33mWarning[0m for TODAmount in contract 'EthWrapper':
    |		require(balances[msg.sender]>=_amount);
    |		balances[msg.sender]=balances[msg.sender].sub(_amount);
  > |		msg.sender.transfer(_amount);
    |	}
    |}
  at /home/jiaming/slither_fp_files/out8887.sol(167)

[33mWarning[0m for TODReceiver in contract 'EthWrapper':
    |		require(balances[msg.sender]>=_amount);
    |		balances[msg.sender]=balances[msg.sender].sub(_amount);
  > |		msg.sender.transfer(_amount);
    |	}
    |}
  at /home/jiaming/slither_fp_files/out8887.sol(167)

[33mWarning[0m for UnhandledException in contract 'EthWrapper':
    |		require(balances[msg.sender]>=_amount);
    |		balances[msg.sender]=balances[msg.sender].sub(_amount);
  > |		msg.sender.transfer(_amount);
    |	}
    |}
  at /home/jiaming/slither_fp_files/out8887.sol(167)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthWrapper':
    |		require(balances[msg.sender]>=_amount);
    |		balances[msg.sender]=balances[msg.sender].sub(_amount);
  > |		msg.sender.transfer(_amount);
    |	}
    |}
  at /home/jiaming/slither_fp_files/out8887.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'EthWrapper':
    |	function transfer(address _to, uint256 _value) public returns (bool success) {
    |		if (balances[msg.sender] >= _value) {
  > |			balances[msg.sender] = balances[msg.sender].sub(_value);
    |			balances[_to] = balances[_to].add(_value);
    |			return true;
  at /home/jiaming/slither_fp_files/out8887.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'EthWrapper':
    |		if (balances[msg.sender] >= _value) {
    |			balances[msg.sender] = balances[msg.sender].sub(_value);
  > |			balances[_to] = balances[_to].add(_value);
    |			return true;
    |		}else return false;
  at /home/jiaming/slither_fp_files/out8887.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'EthWrapper':
    |
    |	function approve(address _spender, uint256 _value) public returns (bool success) {
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/slither_fp_files/out8887.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'EthWrapper':
    |
    |	function makeDeposit(address deposit_to, uint256 amount) public onlyExchange returns (bool success){
  > |		balances[deposit_to] = balances[deposit_to].add(amount);
    |		totalSupply = totalSupply.add(amount);
    |		return true;
  at /home/jiaming/slither_fp_files/out8887.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'EthWrapper':
    |	function makeDeposit(address deposit_to, uint256 amount) public onlyExchange returns (bool success){
    |		balances[deposit_to] = balances[deposit_to].add(amount);
  > |		totalSupply = totalSupply.add(amount);
    |		return true;
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'EthWrapper':
    |	function makeWithdrawal(address withdraw_from, uint256 amount) public onlyExchange returns (bool success){
    |		if(balances[withdraw_from]>=amount) {
  > |			balances[withdraw_from] = balances[withdraw_from].sub(amount);
    |			totalSupply = totalSupply.sub(amount);
    |			return true;
  at /home/jiaming/slither_fp_files/out8887.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'EthWrapper':
    |		if(balances[withdraw_from]>=amount) {
    |			balances[withdraw_from] = balances[withdraw_from].sub(amount);
  > |			totalSupply = totalSupply.sub(amount);
    |			return true;
    |		}
  at /home/jiaming/slither_fp_files/out8887.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'EthWrapper':
    |		if(balances[_from] >= _value) {
    |			if(msg.sender == exchange) {
  > |				balances[_from] = balances[_from].sub(_value);
    |				balances[_to] = balances[_to].add(_value);
    |				Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out8887.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'EthWrapper':
    |			if(msg.sender == exchange) {
    |				balances[_from] = balances[_from].sub(_value);
  > |				balances[_to] = balances[_to].add(_value);
    |				Transfer(_from, _to, _value);
    |				return true;
  at /home/jiaming/slither_fp_files/out8887.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'EthWrapper':
    |				return true;
    |			}else if(allowed[_from][msg.sender] >= _value) {
  > |				balances[_from] = balances[_from].sub(_value);
    |				balances[_to] = balances[_to].add(_value);
    |				allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/slither_fp_files/out8887.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'EthWrapper':
    |			}else if(allowed[_from][msg.sender] >= _value) {
    |				balances[_from] = balances[_from].sub(_value);
  > |				balances[_to] = balances[_to].add(_value);
    |				allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |				Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out8887.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'EthWrapper':
    |				balances[_from] = balances[_from].sub(_value);
    |				balances[_to] = balances[_to].add(_value);
  > |				allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |				Transfer(_from, _to, _value);
    |				return true;
  at /home/jiaming/slither_fp_files/out8887.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'EthWrapper':
    |	function withdrawEther(uint _amount) public notWrapper{
    |		require(balances[msg.sender]>=_amount);
  > |		balances[msg.sender]=balances[msg.sender].sub(_amount);
    |		msg.sender.transfer(_amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'EthWrapper':
    |	function wrapperChanged() public payable onlyExchange{
    |		require(!isWrapperChanged);
  > |		isWrapperChanged=true;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(161)

[31mViolation[0m for DAO in contract 'EtherStore':
    |
    |	function changeWrapper(address _wrapper) public onlyAdmin(2) WrapperEnabled{
  > |		EthWrapper_Interface(EtherWrapper).wrapperChanged.value(this.balance)();
    |		WrapperChanged(EtherWrapper, _wrapper);
    |		EtherWrapper = _wrapper;
  at /home/jiaming/slither_fp_files/out8887.sol(291)

[33mWarning[0m for DAOConstantGas in contract 'EtherStore':
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
  > |		msg.sender.transfer(_amount);
    |		EtherWithdrawal(msg.sender, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(313)

[33mWarning[0m for DAOConstantGas in contract 'EtherStore':
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
  > |		_to.transfer(_amount);
    |		EtherWithdrawal(_to, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(320)

[33mWarning[0m for LockedEther in contract 'EtherStore':
    |}
    |
  > |contract EtherStore is Managable{
    |	bool public WrapperisEnabled;
    |	address public EtherWrapper;
  at /home/jiaming/slither_fp_files/out8887.sol(258)

[31mViolation[0m for MissingInputValidation in contract 'EtherStore':
    |
    |contract AdminAccess {
  > |	mapping(address => uint8) public admins;
    |	event AdminAdded(address admin,uint8 access);
    |	event AdminAccessChanged(address admin, uint8 old_access, uint8 new_access);
  at /home/jiaming/slither_fp_files/out8887.sol(172)

[31mViolation[0m for MissingInputValidation in contract 'EtherStore':
    |	}
    |
  > |	function addAdmin(address _admin, uint8 _access) public onlyAdmin(2) {
    |		require(admins[_admin] == 0);
    |		require(_access > 0);
  at /home/jiaming/slither_fp_files/out8887.sol(185)

[31mViolation[0m for MissingInputValidation in contract 'EtherStore':
    |	}
    |
  > |	function changeAccess(address _admin, uint8 _access) public onlyAdmin(2) {
    |		require(admins[_admin] > 0);
    |		require(_access > 0);
  at /home/jiaming/slither_fp_files/out8887.sol(192)

[31mViolation[0m for MissingInputValidation in contract 'EtherStore':
    |	}
    |
  > |	function removeAdmin(address _admin) public onlyAdmin(2) {
    |		require(admins[_admin] > 0);
    |		AdminRemoved(_admin);
  at /home/jiaming/slither_fp_files/out8887.sol(199)

[31mViolation[0m for MissingInputValidation in contract 'EtherStore':
    |	}
    |
  > |	function setFeeAddress(address _fee) public onlyAdmin(2) {
    |		FeeAddressChanged(feeAddress, _fee);
    |		feeAddress=_fee;
  at /home/jiaming/slither_fp_files/out8887.sol(222)

[31mViolation[0m for MissingInputValidation in contract 'EtherStore':
    |	}
    |
  > |	function deployNonNativeToken(string _name,string _symbol,uint256 _decimals) public onlyAdmin(2) returns(address tokenAddress){
    |		address nToken = new nonNativeToken(_name, _symbol, _decimals);
    |		nTokens[_symbol]=nToken;
  at /home/jiaming/slither_fp_files/out8887.sol(234)

[31mViolation[0m for MissingInputValidation in contract 'EtherStore':
    |	}
    |
  > |	function setupWrapper(address _wrapper) public onlyAdmin(2) PreWrapper{
    |		EtherWrapper=_wrapper;
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(282)

[31mViolation[0m for MissingInputValidation in contract 'EtherStore':
    |	}
    |
  > |	function changeWrapper(address _wrapper) public onlyAdmin(2) WrapperEnabled{
    |		EthWrapper_Interface(EtherWrapper).wrapperChanged.value(this.balance)();
    |		WrapperChanged(EtherWrapper, _wrapper);
  at /home/jiaming/slither_fp_files/out8887.sol(290)

[31mViolation[0m for MissingInputValidation in contract 'EtherStore':
    |	}
    |
  > |	function depositTo(address _to) public payable WrapperEnabled{
    |		require(EthWrapper_Interface(EtherWrapper).makeDeposit(_to, msg.value));
    |		EtherDeposit(_to,msg.value);
  at /home/jiaming/slither_fp_files/out8887.sol(301)

[31mViolation[0m for MissingInputValidation in contract 'EtherStore':
    |	}
    |
  > |	function withdrawTo(address _to,uint256 _amount) public WrapperEnabled{
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
  at /home/jiaming/slither_fp_files/out8887.sol(317)

[33mWarning[0m for MissingInputValidation in contract 'EtherStore':
    |
    |contract Managable is AdminAccess {
  > |	uint public feePercent;
    |	address public feeAddress;
    |	mapping (string => address) nTokens;
  at /home/jiaming/slither_fp_files/out8887.sol(207)

[33mWarning[0m for MissingInputValidation in contract 'EtherStore':
    |contract Managable is AdminAccess {
    |	uint public feePercent;
  > |	address public feeAddress;
    |	mapping (string => address) nTokens;
    |
  at /home/jiaming/slither_fp_files/out8887.sol(208)

[33mWarning[0m for MissingInputValidation in contract 'EtherStore':
    |
    |	//1 fee unit equals 0.01% fee
  > |	function setFee(uint _fee) public onlyAdmin(2) {
    |		require(_fee < 100);
    |		TradingFeeChanged(feePercent, _fee);
  at /home/jiaming/slither_fp_files/out8887.sol(228)

[33mWarning[0m for MissingInputValidation in contract 'EtherStore':
    |	}
    |
  > |	function getTokenAddress(string _symbol) public constant returns(address tokenAddress){
    |		return nTokens[_symbol];
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(253)

[33mWarning[0m for MissingInputValidation in contract 'EtherStore':
    |}
    |
  > |contract EtherStore is Managable{
    |	bool public WrapperisEnabled;
    |	address public EtherWrapper;
  at /home/jiaming/slither_fp_files/out8887.sol(258)

[33mWarning[0m for MissingInputValidation in contract 'EtherStore':
    |
    |contract EtherStore is Managable{
  > |	bool public WrapperisEnabled;
    |	address public EtherWrapper;
    |
  at /home/jiaming/slither_fp_files/out8887.sol(259)

[33mWarning[0m for MissingInputValidation in contract 'EtherStore':
    |contract EtherStore is Managable{
    |	bool public WrapperisEnabled;
  > |	address public EtherWrapper;
    |
    |	modifier WrapperEnabled{
  at /home/jiaming/slither_fp_files/out8887.sol(260)

[33mWarning[0m for MissingInputValidation in contract 'EtherStore':
    |	}
    |
  > |	function deployWrapper() public onlyAdmin(2) PreWrapper{
    |		EtherWrapper = new EthWrapper('EtherWrapper', 'ETH', 18);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(286)

[33mWarning[0m for MissingInputValidation in contract 'EtherStore':
    |	}
    |
  > |	function deposit() public payable WrapperEnabled{
    |		require(EthWrapper_Interface(EtherWrapper).makeDeposit(msg.sender, msg.value));
    |		EtherDeposit(msg.sender,msg.value);
  at /home/jiaming/slither_fp_files/out8887.sol(296)

[33mWarning[0m for MissingInputValidation in contract 'EtherStore':
    |	}
    |
  > |	function withdraw(uint _amount) public WrapperEnabled{
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
  at /home/jiaming/slither_fp_files/out8887.sol(310)

[31mViolation[0m for TODAmount in contract 'EtherStore':
    |
    |	function changeWrapper(address _wrapper) public onlyAdmin(2) WrapperEnabled{
  > |		EthWrapper_Interface(EtherWrapper).wrapperChanged.value(this.balance)();
    |		WrapperChanged(EtherWrapper, _wrapper);
    |		EtherWrapper = _wrapper;
  at /home/jiaming/slither_fp_files/out8887.sol(291)

[33mWarning[0m for TODAmount in contract 'EtherStore':
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
  > |		msg.sender.transfer(_amount);
    |		EtherWithdrawal(msg.sender, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(313)

[33mWarning[0m for TODAmount in contract 'EtherStore':
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
  > |		_to.transfer(_amount);
    |		EtherWithdrawal(_to, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(320)

[31mViolation[0m for TODReceiver in contract 'EtherStore':
    |
    |	function changeWrapper(address _wrapper) public onlyAdmin(2) WrapperEnabled{
  > |		EthWrapper_Interface(EtherWrapper).wrapperChanged.value(this.balance)();
    |		WrapperChanged(EtherWrapper, _wrapper);
    |		EtherWrapper = _wrapper;
  at /home/jiaming/slither_fp_files/out8887.sol(291)

[33mWarning[0m for TODReceiver in contract 'EtherStore':
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
  > |		msg.sender.transfer(_amount);
    |		EtherWithdrawal(msg.sender, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(313)

[33mWarning[0m for TODReceiver in contract 'EtherStore':
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
  > |		_to.transfer(_amount);
    |		EtherWithdrawal(_to, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(320)

[33mWarning[0m for UnhandledException in contract 'EtherStore':
    |	function depositNonNative(string _symbol,address _to,uint256 _amount) public onlyAdmin(2){
    |		require(nTokens[_symbol] != address(0));
  > |		nonNativeToken_Interface(nTokens[_symbol]).makeDeposit(_to, _amount);
    |		nonNativeDeposit(_symbol, _to, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(243)

[33mWarning[0m for UnhandledException in contract 'EtherStore':
    |	function withdrawNonNative(string _symbol,address _from,uint256 _amount) public onlyAdmin(2){
    |		require(nTokens[_symbol] != address(0));
  > |		nonNativeToken_Interface(nTokens[_symbol]).makeWithdrawal(_from, _amount);
    |		nonNativeWithdrawal(_symbol, _from, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(249)

[33mWarning[0m for UnhandledException in contract 'EtherStore':
    |
    |	function changeWrapper(address _wrapper) public onlyAdmin(2) WrapperEnabled{
  > |		EthWrapper_Interface(EtherWrapper).wrapperChanged.value(this.balance)();
    |		WrapperChanged(EtherWrapper, _wrapper);
    |		EtherWrapper = _wrapper;
  at /home/jiaming/slither_fp_files/out8887.sol(291)

[33mWarning[0m for UnhandledException in contract 'EtherStore':
    |
    |	function deposit() public payable WrapperEnabled{
  > |		require(EthWrapper_Interface(EtherWrapper).makeDeposit(msg.sender, msg.value));
    |		EtherDeposit(msg.sender,msg.value);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(297)

[33mWarning[0m for UnhandledException in contract 'EtherStore':
    |
    |	function depositTo(address _to) public payable WrapperEnabled{
  > |		require(EthWrapper_Interface(EtherWrapper).makeDeposit(_to, msg.value));
    |		EtherDeposit(_to,msg.value);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(302)

[33mWarning[0m for UnhandledException in contract 'EtherStore':
    |
    |	function withdraw(uint _amount) public WrapperEnabled{
  > |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
    |		msg.sender.transfer(_amount);
  at /home/jiaming/slither_fp_files/out8887.sol(311)

[33mWarning[0m for UnhandledException in contract 'EtherStore':
    |	function withdraw(uint _amount) public WrapperEnabled{
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
  > |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
    |		msg.sender.transfer(_amount);
    |		EtherWithdrawal(msg.sender, _amount);
  at /home/jiaming/slither_fp_files/out8887.sol(312)

[33mWarning[0m for UnhandledException in contract 'EtherStore':
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
  > |		msg.sender.transfer(_amount);
    |		EtherWithdrawal(msg.sender, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(313)

[33mWarning[0m for UnhandledException in contract 'EtherStore':
    |
    |	function withdrawTo(address _to,uint256 _amount) public WrapperEnabled{
  > |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
    |		_to.transfer(_amount);
  at /home/jiaming/slither_fp_files/out8887.sol(318)

[33mWarning[0m for UnhandledException in contract 'EtherStore':
    |	function withdrawTo(address _to,uint256 _amount) public WrapperEnabled{
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
  > |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
    |		_to.transfer(_amount);
    |		EtherWithdrawal(_to, _amount);
  at /home/jiaming/slither_fp_files/out8887.sol(319)

[33mWarning[0m for UnhandledException in contract 'EtherStore':
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
  > |		_to.transfer(_amount);
    |		EtherWithdrawal(_to, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(320)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'EtherStore':
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
  > |		msg.sender.transfer(_amount);
    |		EtherWithdrawal(msg.sender, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(313)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'EtherStore':
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
  > |		_to.transfer(_amount);
    |		EtherWithdrawal(_to, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(320)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherStore':
    |	function depositNonNative(string _symbol,address _to,uint256 _amount) public onlyAdmin(2){
    |		require(nTokens[_symbol] != address(0));
  > |		nonNativeToken_Interface(nTokens[_symbol]).makeDeposit(_to, _amount);
    |		nonNativeDeposit(_symbol, _to, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(243)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherStore':
    |	function withdrawNonNative(string _symbol,address _from,uint256 _amount) public onlyAdmin(2){
    |		require(nTokens[_symbol] != address(0));
  > |		nonNativeToken_Interface(nTokens[_symbol]).makeWithdrawal(_from, _amount);
    |		nonNativeWithdrawal(_symbol, _from, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(249)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherStore':
    |
    |	function deposit() public payable WrapperEnabled{
  > |		require(EthWrapper_Interface(EtherWrapper).makeDeposit(msg.sender, msg.value));
    |		EtherDeposit(msg.sender,msg.value);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(297)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherStore':
    |
    |	function depositTo(address _to) public payable WrapperEnabled{
  > |		require(EthWrapper_Interface(EtherWrapper).makeDeposit(_to, msg.value));
    |		EtherDeposit(_to,msg.value);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(302)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherStore':
    |
    |	function withdraw(uint _amount) public WrapperEnabled{
  > |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
    |		msg.sender.transfer(_amount);
  at /home/jiaming/slither_fp_files/out8887.sol(311)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherStore':
    |	function withdraw(uint _amount) public WrapperEnabled{
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
  > |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
    |		msg.sender.transfer(_amount);
    |		EtherWithdrawal(msg.sender, _amount);
  at /home/jiaming/slither_fp_files/out8887.sol(312)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherStore':
    |
    |	function withdrawTo(address _to,uint256 _amount) public WrapperEnabled{
  > |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
    |		_to.transfer(_amount);
  at /home/jiaming/slither_fp_files/out8887.sol(318)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherStore':
    |	function withdrawTo(address _to,uint256 _amount) public WrapperEnabled{
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
  > |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
    |		_to.transfer(_amount);
    |		EtherWithdrawal(_to, _amount);
  at /home/jiaming/slither_fp_files/out8887.sol(319)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherStore':
    |		require(_access > 0);
    |		AdminAdded(_admin,_access);
  > |		admins[_admin]=_access;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(189)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherStore':
    |		require(_access > 0);
    |		AdminAccessChanged(_admin, admins[_admin], _access);
  > |		admins[_admin]=_access;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(196)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherStore':
    |		require(admins[_admin] > 0);
    |		AdminRemoved(_admin);
  > |		admins[_admin]=0;
    |	}
    |}
  at /home/jiaming/slither_fp_files/out8887.sol(202)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherStore':
    |	function setFeeAddress(address _fee) public onlyAdmin(2) {
    |		FeeAddressChanged(feeAddress, _fee);
  > |		feeAddress=_fee;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(224)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherStore':
    |		require(_fee < 100);
    |		TradingFeeChanged(feePercent, _fee);
  > |		feePercent=_fee;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(231)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherStore':
    |	function deployNonNativeToken(string _name,string _symbol,uint256 _decimals) public onlyAdmin(2) returns(address tokenAddress){
    |		address nToken = new nonNativeToken(_name, _symbol, _decimals);
  > |		nTokens[_symbol]=nToken;
    |		TokenDeployed(nToken, _name, _symbol);
    |		return nToken;
  at /home/jiaming/slither_fp_files/out8887.sol(236)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherStore':
    |		_;
    |		WrapperSetup(EtherWrapper);
  > |		WrapperisEnabled=true;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(270)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherStore':
    |
    |	function setupWrapper(address _wrapper) public onlyAdmin(2) PreWrapper{
  > |		EtherWrapper=_wrapper;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(283)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherStore':
    |
    |	function deployWrapper() public onlyAdmin(2) PreWrapper{
  > |		EtherWrapper = new EthWrapper('EtherWrapper', 'ETH', 18);
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(287)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherStore':
    |		EthWrapper_Interface(EtherWrapper).wrapperChanged.value(this.balance)();
    |		WrapperChanged(EtherWrapper, _wrapper);
  > |		EtherWrapper = _wrapper;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(293)

[33mWarning[0m for LockedEther in contract 'Managable':
    |}
    |
  > |contract Managable is AdminAccess {
    |	uint public feePercent;
    |	address public feeAddress;
  at /home/jiaming/slither_fp_files/out8887.sol(206)

[31mViolation[0m for MissingInputValidation in contract 'Managable':
    |
    |contract AdminAccess {
  > |	mapping(address => uint8) public admins;
    |	event AdminAdded(address admin,uint8 access);
    |	event AdminAccessChanged(address admin, uint8 old_access, uint8 new_access);
  at /home/jiaming/slither_fp_files/out8887.sol(172)

[31mViolation[0m for MissingInputValidation in contract 'Managable':
    |	}
    |
  > |	function addAdmin(address _admin, uint8 _access) public onlyAdmin(2) {
    |		require(admins[_admin] == 0);
    |		require(_access > 0);
  at /home/jiaming/slither_fp_files/out8887.sol(185)

[31mViolation[0m for MissingInputValidation in contract 'Managable':
    |	}
    |
  > |	function changeAccess(address _admin, uint8 _access) public onlyAdmin(2) {
    |		require(admins[_admin] > 0);
    |		require(_access > 0);
  at /home/jiaming/slither_fp_files/out8887.sol(192)

[31mViolation[0m for MissingInputValidation in contract 'Managable':
    |	}
    |
  > |	function removeAdmin(address _admin) public onlyAdmin(2) {
    |		require(admins[_admin] > 0);
    |		AdminRemoved(_admin);
  at /home/jiaming/slither_fp_files/out8887.sol(199)

[31mViolation[0m for MissingInputValidation in contract 'Managable':
    |	}
    |
  > |	function setFeeAddress(address _fee) public onlyAdmin(2) {
    |		FeeAddressChanged(feeAddress, _fee);
    |		feeAddress=_fee;
  at /home/jiaming/slither_fp_files/out8887.sol(222)

[31mViolation[0m for MissingInputValidation in contract 'Managable':
    |	}
    |
  > |	function deployNonNativeToken(string _name,string _symbol,uint256 _decimals) public onlyAdmin(2) returns(address tokenAddress){
    |		address nToken = new nonNativeToken(_name, _symbol, _decimals);
    |		nTokens[_symbol]=nToken;
  at /home/jiaming/slither_fp_files/out8887.sol(234)

[33mWarning[0m for MissingInputValidation in contract 'Managable':
    |}
    |
  > |contract Managable is AdminAccess {
    |	uint public feePercent;
    |	address public feeAddress;
  at /home/jiaming/slither_fp_files/out8887.sol(206)

[33mWarning[0m for MissingInputValidation in contract 'Managable':
    |
    |contract Managable is AdminAccess {
  > |	uint public feePercent;
    |	address public feeAddress;
    |	mapping (string => address) nTokens;
  at /home/jiaming/slither_fp_files/out8887.sol(207)

[33mWarning[0m for MissingInputValidation in contract 'Managable':
    |contract Managable is AdminAccess {
    |	uint public feePercent;
  > |	address public feeAddress;
    |	mapping (string => address) nTokens;
    |
  at /home/jiaming/slither_fp_files/out8887.sol(208)

[33mWarning[0m for MissingInputValidation in contract 'Managable':
    |
    |	//1 fee unit equals 0.01% fee
  > |	function setFee(uint _fee) public onlyAdmin(2) {
    |		require(_fee < 100);
    |		TradingFeeChanged(feePercent, _fee);
  at /home/jiaming/slither_fp_files/out8887.sol(228)

[33mWarning[0m for MissingInputValidation in contract 'Managable':
    |	}
    |
  > |	function getTokenAddress(string _symbol) public constant returns(address tokenAddress){
    |		return nTokens[_symbol];
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(253)

[33mWarning[0m for UnhandledException in contract 'Managable':
    |	function depositNonNative(string _symbol,address _to,uint256 _amount) public onlyAdmin(2){
    |		require(nTokens[_symbol] != address(0));
  > |		nonNativeToken_Interface(nTokens[_symbol]).makeDeposit(_to, _amount);
    |		nonNativeDeposit(_symbol, _to, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(243)

[33mWarning[0m for UnhandledException in contract 'Managable':
    |	function withdrawNonNative(string _symbol,address _from,uint256 _amount) public onlyAdmin(2){
    |		require(nTokens[_symbol] != address(0));
  > |		nonNativeToken_Interface(nTokens[_symbol]).makeWithdrawal(_from, _amount);
    |		nonNativeWithdrawal(_symbol, _from, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(249)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Managable':
    |	function depositNonNative(string _symbol,address _to,uint256 _amount) public onlyAdmin(2){
    |		require(nTokens[_symbol] != address(0));
  > |		nonNativeToken_Interface(nTokens[_symbol]).makeDeposit(_to, _amount);
    |		nonNativeDeposit(_symbol, _to, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(243)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Managable':
    |	function withdrawNonNative(string _symbol,address _from,uint256 _amount) public onlyAdmin(2){
    |		require(nTokens[_symbol] != address(0));
  > |		nonNativeToken_Interface(nTokens[_symbol]).makeWithdrawal(_from, _amount);
    |		nonNativeWithdrawal(_symbol, _from, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(249)

[31mViolation[0m for UnrestrictedWrite in contract 'Managable':
    |		require(_access > 0);
    |		AdminAdded(_admin,_access);
  > |		admins[_admin]=_access;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(189)

[31mViolation[0m for UnrestrictedWrite in contract 'Managable':
    |		require(_access > 0);
    |		AdminAccessChanged(_admin, admins[_admin], _access);
  > |		admins[_admin]=_access;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(196)

[31mViolation[0m for UnrestrictedWrite in contract 'Managable':
    |		require(admins[_admin] > 0);
    |		AdminRemoved(_admin);
  > |		admins[_admin]=0;
    |	}
    |}
  at /home/jiaming/slither_fp_files/out8887.sol(202)

[31mViolation[0m for UnrestrictedWrite in contract 'Managable':
    |	function setFeeAddress(address _fee) public onlyAdmin(2) {
    |		FeeAddressChanged(feeAddress, _fee);
  > |		feeAddress=_fee;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(224)

[31mViolation[0m for UnrestrictedWrite in contract 'Managable':
    |		require(_fee < 100);
    |		TradingFeeChanged(feePercent, _fee);
  > |		feePercent=_fee;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(231)

[31mViolation[0m for UnrestrictedWrite in contract 'Managable':
    |	function deployNonNativeToken(string _name,string _symbol,uint256 _decimals) public onlyAdmin(2) returns(address tokenAddress){
    |		address nToken = new nonNativeToken(_name, _symbol, _decimals);
  > |		nTokens[_symbol]=nToken;
    |		TokenDeployed(nToken, _name, _symbol);
    |		return nToken;
  at /home/jiaming/slither_fp_files/out8887.sol(236)

[31mViolation[0m for DAO in contract 'Mergex':
    |
    |	function changeWrapper(address _wrapper) public onlyAdmin(2) WrapperEnabled{
  > |		EthWrapper_Interface(EtherWrapper).wrapperChanged.value(this.balance)();
    |		WrapperChanged(EtherWrapper, _wrapper);
    |		EtherWrapper = _wrapper;
  at /home/jiaming/slither_fp_files/out8887.sol(291)

[33mWarning[0m for DAOConstantGas in contract 'Mergex':
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
  > |		msg.sender.transfer(_amount);
    |		EtherWithdrawal(msg.sender, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(313)

[33mWarning[0m for DAOConstantGas in contract 'Mergex':
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
  > |		_to.transfer(_amount);
    |		EtherWithdrawal(_to, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(320)

[33mWarning[0m for LockedEther in contract 'Mergex':
    |}
    |
  > |contract Mergex is EtherStore{
    |	using SafeMath for uint256;
    |	mapping(address => mapping(bytes32 => uint256)) public fills;
  at /home/jiaming/slither_fp_files/out8887.sol(325)

[31mViolation[0m for TODAmount in contract 'Mergex':
    |
    |	function changeWrapper(address _wrapper) public onlyAdmin(2) WrapperEnabled{
  > |		EthWrapper_Interface(EtherWrapper).wrapperChanged.value(this.balance)();
    |		WrapperChanged(EtherWrapper, _wrapper);
    |		EtherWrapper = _wrapper;
  at /home/jiaming/slither_fp_files/out8887.sol(291)

[33mWarning[0m for TODAmount in contract 'Mergex':
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
  > |		msg.sender.transfer(_amount);
    |		EtherWithdrawal(msg.sender, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(313)

[33mWarning[0m for TODAmount in contract 'Mergex':
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
  > |		_to.transfer(_amount);
    |		EtherWithdrawal(_to, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(320)

[31mViolation[0m for TODReceiver in contract 'Mergex':
    |
    |	function changeWrapper(address _wrapper) public onlyAdmin(2) WrapperEnabled{
  > |		EthWrapper_Interface(EtherWrapper).wrapperChanged.value(this.balance)();
    |		WrapperChanged(EtherWrapper, _wrapper);
    |		EtherWrapper = _wrapper;
  at /home/jiaming/slither_fp_files/out8887.sol(291)

[33mWarning[0m for TODReceiver in contract 'Mergex':
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
  > |		msg.sender.transfer(_amount);
    |		EtherWithdrawal(msg.sender, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(313)

[33mWarning[0m for TODReceiver in contract 'Mergex':
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
  > |		_to.transfer(_amount);
    |		EtherWithdrawal(_to, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(320)

[33mWarning[0m for UnhandledException in contract 'Mergex':
    |	function depositNonNative(string _symbol,address _to,uint256 _amount) public onlyAdmin(2){
    |		require(nTokens[_symbol] != address(0));
  > |		nonNativeToken_Interface(nTokens[_symbol]).makeDeposit(_to, _amount);
    |		nonNativeDeposit(_symbol, _to, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(243)

[33mWarning[0m for UnhandledException in contract 'Mergex':
    |	function withdrawNonNative(string _symbol,address _from,uint256 _amount) public onlyAdmin(2){
    |		require(nTokens[_symbol] != address(0));
  > |		nonNativeToken_Interface(nTokens[_symbol]).makeWithdrawal(_from, _amount);
    |		nonNativeWithdrawal(_symbol, _from, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(249)

[33mWarning[0m for UnhandledException in contract 'Mergex':
    |
    |	function changeWrapper(address _wrapper) public onlyAdmin(2) WrapperEnabled{
  > |		EthWrapper_Interface(EtherWrapper).wrapperChanged.value(this.balance)();
    |		WrapperChanged(EtherWrapper, _wrapper);
    |		EtherWrapper = _wrapper;
  at /home/jiaming/slither_fp_files/out8887.sol(291)

[33mWarning[0m for UnhandledException in contract 'Mergex':
    |
    |	function deposit() public payable WrapperEnabled{
  > |		require(EthWrapper_Interface(EtherWrapper).makeDeposit(msg.sender, msg.value));
    |		EtherDeposit(msg.sender,msg.value);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(297)

[33mWarning[0m for UnhandledException in contract 'Mergex':
    |
    |	function depositTo(address _to) public payable WrapperEnabled{
  > |		require(EthWrapper_Interface(EtherWrapper).makeDeposit(_to, msg.value));
    |		EtherDeposit(_to,msg.value);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(302)

[33mWarning[0m for UnhandledException in contract 'Mergex':
    |
    |	function withdraw(uint _amount) public WrapperEnabled{
  > |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
    |		msg.sender.transfer(_amount);
  at /home/jiaming/slither_fp_files/out8887.sol(311)

[33mWarning[0m for UnhandledException in contract 'Mergex':
    |	function withdraw(uint _amount) public WrapperEnabled{
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
  > |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
    |		msg.sender.transfer(_amount);
    |		EtherWithdrawal(msg.sender, _amount);
  at /home/jiaming/slither_fp_files/out8887.sol(312)

[33mWarning[0m for UnhandledException in contract 'Mergex':
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
  > |		msg.sender.transfer(_amount);
    |		EtherWithdrawal(msg.sender, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(313)

[33mWarning[0m for UnhandledException in contract 'Mergex':
    |
    |	function withdrawTo(address _to,uint256 _amount) public WrapperEnabled{
  > |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
    |		_to.transfer(_amount);
  at /home/jiaming/slither_fp_files/out8887.sol(318)

[33mWarning[0m for UnhandledException in contract 'Mergex':
    |	function withdrawTo(address _to,uint256 _amount) public WrapperEnabled{
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
  > |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
    |		_to.transfer(_amount);
    |		EtherWithdrawal(_to, _amount);
  at /home/jiaming/slither_fp_files/out8887.sol(319)

[33mWarning[0m for UnhandledException in contract 'Mergex':
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
  > |		_to.transfer(_amount);
    |		EtherWithdrawal(_to, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(320)

[33mWarning[0m for UnhandledException in contract 'Mergex':
    |
    |	function checkAllowance(address token, address owner, uint256 amount) internal constant returns (bool allowed){
  > |		return ERC20_Interface(token).allowance(owner,address(this)) >= amount;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(335)

[33mWarning[0m for UnhandledException in contract 'Mergex':
    |
    |	function fillOrder(address owner, address tokenA, address tokenB, uint tradeAmount, uint valueA, uint valueB, uint expiration, uint nonce, uint8 v, bytes32 r, bytes32 s) public{
  > |		bytes32 hash=sha256('mergex',owner,tokenA,tokenB,valueA,valueB,expiration,nonce);
    |		if(validateOrder(owner,hash,expiration,tradeAmount,valueA,v,r,s)){
    |			if(!tradeTokens(hash, msg.sender, owner, tokenA, tokenB, tradeAmount, valueA, valueB)){
  at /home/jiaming/slither_fp_files/out8887.sol(343)

[33mWarning[0m for UnhandledException in contract 'Mergex':
    |		require(fills[owner][hash].add(tradeAmount) <= Value);
    |		require(block.number<=expiration);
  > |		require(ecrecover(keccak256("\x19Ethereum Signed Message:\n32",hash),v,r,s)==owner);
    |		return true;
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(358)

[33mWarning[0m for UnhandledException in contract 'Mergex':
    |
    |	function cancelOrder(address tokenA, address tokenB, uint valueA, uint valueB, uint expiration, uint nonce, uint8 v, bytes32 r, bytes32 s) public{
  > |		bytes32 hash=sha256('mergex', msg.sender, tokenA, tokenB, valueA, valueB, expiration, nonce);
    |		require(block.number<=expiration);
    |		require(ecrecover(keccak256("\x19Ethereum Signed Message:\n32",hash),v,r,s)==msg.sender);
  at /home/jiaming/slither_fp_files/out8887.sol(363)

[33mWarning[0m for UnhandledException in contract 'Mergex':
    |		bytes32 hash=sha256('mergex', msg.sender, tokenA, tokenB, valueA, valueB, expiration, nonce);
    |		require(block.number<=expiration);
  > |		require(ecrecover(keccak256("\x19Ethereum Signed Message:\n32",hash),v,r,s)==msg.sender);
    |		Cancel(hash);
    |		fills[msg.sender][hash]=valueA;
  at /home/jiaming/slither_fp_files/out8887.sol(365)

[33mWarning[0m for UnhandledException in contract 'Mergex':
    |	function tradeTokens(bytes32 hash, address userA,address userB,address tokenA,address tokenB,uint amountA,uint valueA,uint valueB) internal returns(bool success){
    |		uint amountB=valueB.mul(amountA).div(valueA);
  > |		require(ERC20_Interface(tokenA).balanceOf(userA)>=amountA);
    |		require(ERC20_Interface(tokenB).balanceOf(userB)>=amountB);
    |		if(!checkAllowance(tokenA, userA, amountA))return false;
  at /home/jiaming/slither_fp_files/out8887.sol(372)

[33mWarning[0m for UnhandledException in contract 'Mergex':
    |		uint amountB=valueB.mul(amountA).div(valueA);
    |		require(ERC20_Interface(tokenA).balanceOf(userA)>=amountA);
  > |		require(ERC20_Interface(tokenB).balanceOf(userB)>=amountB);
    |		if(!checkAllowance(tokenA, userA, amountA))return false;
    |		if(!checkAllowance(tokenB, userB, amountB))return false;
  at /home/jiaming/slither_fp_files/out8887.sol(373)

[33mWarning[0m for UnhandledException in contract 'Mergex':
    |		uint tradeA=amountA.sub(feeA);
    |		uint tradeB=amountB.sub(feeB);
  > |		if(!ERC20_Interface(tokenA).transferFrom(userA,userB,tradeA))return false;
    |		if(!ERC20_Interface(tokenB).transferFrom(userB,userA,tradeB))return false;
    |		if(!ERC20_Interface(tokenA).transferFrom(userA,feeAddress,feeA))return false;
  at /home/jiaming/slither_fp_files/out8887.sol(380)

[33mWarning[0m for UnhandledException in contract 'Mergex':
    |		uint tradeB=amountB.sub(feeB);
    |		if(!ERC20_Interface(tokenA).transferFrom(userA,userB,tradeA))return false;
  > |		if(!ERC20_Interface(tokenB).transferFrom(userB,userA,tradeB))return false;
    |		if(!ERC20_Interface(tokenA).transferFrom(userA,feeAddress,feeA))return false;
    |		if(!ERC20_Interface(tokenB).transferFrom(userB,feeAddress,feeB))return false;
  at /home/jiaming/slither_fp_files/out8887.sol(381)

[33mWarning[0m for UnhandledException in contract 'Mergex':
    |		if(!ERC20_Interface(tokenA).transferFrom(userA,userB,tradeA))return false;
    |		if(!ERC20_Interface(tokenB).transferFrom(userB,userA,tradeB))return false;
  > |		if(!ERC20_Interface(tokenA).transferFrom(userA,feeAddress,feeA))return false;
    |		if(!ERC20_Interface(tokenB).transferFrom(userB,feeAddress,feeB))return false;
    |		Trade(hash, tokenA, tokenB, amountA, amountB);
  at /home/jiaming/slither_fp_files/out8887.sol(382)

[33mWarning[0m for UnhandledException in contract 'Mergex':
    |		if(!ERC20_Interface(tokenB).transferFrom(userB,userA,tradeB))return false;
    |		if(!ERC20_Interface(tokenA).transferFrom(userA,feeAddress,feeA))return false;
  > |		if(!ERC20_Interface(tokenB).transferFrom(userB,feeAddress,feeB))return false;
    |		Trade(hash, tokenA, tokenB, amountA, amountB);
    |		return true;
  at /home/jiaming/slither_fp_files/out8887.sol(383)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'Mergex':
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
  > |		msg.sender.transfer(_amount);
    |		EtherWithdrawal(msg.sender, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(313)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'Mergex':
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
  > |		_to.transfer(_amount);
    |		EtherWithdrawal(_to, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(320)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mergex':
    |	function depositNonNative(string _symbol,address _to,uint256 _amount) public onlyAdmin(2){
    |		require(nTokens[_symbol] != address(0));
  > |		nonNativeToken_Interface(nTokens[_symbol]).makeDeposit(_to, _amount);
    |		nonNativeDeposit(_symbol, _to, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(243)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mergex':
    |	function withdrawNonNative(string _symbol,address _from,uint256 _amount) public onlyAdmin(2){
    |		require(nTokens[_symbol] != address(0));
  > |		nonNativeToken_Interface(nTokens[_symbol]).makeWithdrawal(_from, _amount);
    |		nonNativeWithdrawal(_symbol, _from, _amount);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(249)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mergex':
    |
    |	function deposit() public payable WrapperEnabled{
  > |		require(EthWrapper_Interface(EtherWrapper).makeDeposit(msg.sender, msg.value));
    |		EtherDeposit(msg.sender,msg.value);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(297)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mergex':
    |
    |	function depositTo(address _to) public payable WrapperEnabled{
  > |		require(EthWrapper_Interface(EtherWrapper).makeDeposit(_to, msg.value));
    |		EtherDeposit(_to,msg.value);
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(302)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mergex':
    |
    |	function withdraw(uint _amount) public WrapperEnabled{
  > |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
    |		msg.sender.transfer(_amount);
  at /home/jiaming/slither_fp_files/out8887.sol(311)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mergex':
    |	function withdraw(uint _amount) public WrapperEnabled{
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
  > |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
    |		msg.sender.transfer(_amount);
    |		EtherWithdrawal(msg.sender, _amount);
  at /home/jiaming/slither_fp_files/out8887.sol(312)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mergex':
    |
    |	function withdrawTo(address _to,uint256 _amount) public WrapperEnabled{
  > |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
    |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
    |		_to.transfer(_amount);
  at /home/jiaming/slither_fp_files/out8887.sol(318)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mergex':
    |	function withdrawTo(address _to,uint256 _amount) public WrapperEnabled{
    |		require(EthWrapper_Interface(EtherWrapper).balanceOf(msg.sender) >= _amount);
  > |		require(EthWrapper_Interface(EtherWrapper).makeWithdrawal(msg.sender, _amount));
    |		_to.transfer(_amount);
    |		EtherWithdrawal(_to, _amount);
  at /home/jiaming/slither_fp_files/out8887.sol(319)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mergex':
    |
    |	function checkAllowance(address token, address owner, uint256 amount) internal constant returns (bool allowed){
  > |		return ERC20_Interface(token).allowance(owner,address(this)) >= amount;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(335)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mergex':
    |
    |	function fillOrder(address owner, address tokenA, address tokenB, uint tradeAmount, uint valueA, uint valueB, uint expiration, uint nonce, uint8 v, bytes32 r, bytes32 s) public{
  > |		bytes32 hash=sha256('mergex',owner,tokenA,tokenB,valueA,valueB,expiration,nonce);
    |		if(validateOrder(owner,hash,expiration,tradeAmount,valueA,v,r,s)){
    |			if(!tradeTokens(hash, msg.sender, owner, tokenA, tokenB, tradeAmount, valueA, valueB)){
  at /home/jiaming/slither_fp_files/out8887.sol(343)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mergex':
    |		require(fills[owner][hash].add(tradeAmount) <= Value);
    |		require(block.number<=expiration);
  > |		require(ecrecover(keccak256("\x19Ethereum Signed Message:\n32",hash),v,r,s)==owner);
    |		return true;
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(358)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mergex':
    |
    |	function cancelOrder(address tokenA, address tokenB, uint valueA, uint valueB, uint expiration, uint nonce, uint8 v, bytes32 r, bytes32 s) public{
  > |		bytes32 hash=sha256('mergex', msg.sender, tokenA, tokenB, valueA, valueB, expiration, nonce);
    |		require(block.number<=expiration);
    |		require(ecrecover(keccak256("\x19Ethereum Signed Message:\n32",hash),v,r,s)==msg.sender);
  at /home/jiaming/slither_fp_files/out8887.sol(363)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mergex':
    |		bytes32 hash=sha256('mergex', msg.sender, tokenA, tokenB, valueA, valueB, expiration, nonce);
    |		require(block.number<=expiration);
  > |		require(ecrecover(keccak256("\x19Ethereum Signed Message:\n32",hash),v,r,s)==msg.sender);
    |		Cancel(hash);
    |		fills[msg.sender][hash]=valueA;
  at /home/jiaming/slither_fp_files/out8887.sol(365)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mergex':
    |	function tradeTokens(bytes32 hash, address userA,address userB,address tokenA,address tokenB,uint amountA,uint valueA,uint valueB) internal returns(bool success){
    |		uint amountB=valueB.mul(amountA).div(valueA);
  > |		require(ERC20_Interface(tokenA).balanceOf(userA)>=amountA);
    |		require(ERC20_Interface(tokenB).balanceOf(userB)>=amountB);
    |		if(!checkAllowance(tokenA, userA, amountA))return false;
  at /home/jiaming/slither_fp_files/out8887.sol(372)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mergex':
    |		uint amountB=valueB.mul(amountA).div(valueA);
    |		require(ERC20_Interface(tokenA).balanceOf(userA)>=amountA);
  > |		require(ERC20_Interface(tokenB).balanceOf(userB)>=amountB);
    |		if(!checkAllowance(tokenA, userA, amountA))return false;
    |		if(!checkAllowance(tokenB, userB, amountB))return false;
  at /home/jiaming/slither_fp_files/out8887.sol(373)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mergex':
    |		uint tradeA=amountA.sub(feeA);
    |		uint tradeB=amountB.sub(feeB);
  > |		if(!ERC20_Interface(tokenA).transferFrom(userA,userB,tradeA))return false;
    |		if(!ERC20_Interface(tokenB).transferFrom(userB,userA,tradeB))return false;
    |		if(!ERC20_Interface(tokenA).transferFrom(userA,feeAddress,feeA))return false;
  at /home/jiaming/slither_fp_files/out8887.sol(380)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mergex':
    |		uint tradeB=amountB.sub(feeB);
    |		if(!ERC20_Interface(tokenA).transferFrom(userA,userB,tradeA))return false;
  > |		if(!ERC20_Interface(tokenB).transferFrom(userB,userA,tradeB))return false;
    |		if(!ERC20_Interface(tokenA).transferFrom(userA,feeAddress,feeA))return false;
    |		if(!ERC20_Interface(tokenB).transferFrom(userB,feeAddress,feeB))return false;
  at /home/jiaming/slither_fp_files/out8887.sol(381)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mergex':
    |		if(!ERC20_Interface(tokenA).transferFrom(userA,userB,tradeA))return false;
    |		if(!ERC20_Interface(tokenB).transferFrom(userB,userA,tradeB))return false;
  > |		if(!ERC20_Interface(tokenA).transferFrom(userA,feeAddress,feeA))return false;
    |		if(!ERC20_Interface(tokenB).transferFrom(userB,feeAddress,feeB))return false;
    |		Trade(hash, tokenA, tokenB, amountA, amountB);
  at /home/jiaming/slither_fp_files/out8887.sol(382)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mergex':
    |		if(!ERC20_Interface(tokenB).transferFrom(userB,userA,tradeB))return false;
    |		if(!ERC20_Interface(tokenA).transferFrom(userA,feeAddress,feeA))return false;
  > |		if(!ERC20_Interface(tokenB).transferFrom(userB,feeAddress,feeB))return false;
    |		Trade(hash, tokenA, tokenB, amountA, amountB);
    |		return true;
  at /home/jiaming/slither_fp_files/out8887.sol(383)

[31mViolation[0m for UnrestrictedWrite in contract 'Mergex':
    |		require(_access > 0);
    |		AdminAdded(_admin,_access);
  > |		admins[_admin]=_access;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(189)

[31mViolation[0m for UnrestrictedWrite in contract 'Mergex':
    |		require(_access > 0);
    |		AdminAccessChanged(_admin, admins[_admin], _access);
  > |		admins[_admin]=_access;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(196)

[31mViolation[0m for UnrestrictedWrite in contract 'Mergex':
    |		require(admins[_admin] > 0);
    |		AdminRemoved(_admin);
  > |		admins[_admin]=0;
    |	}
    |}
  at /home/jiaming/slither_fp_files/out8887.sol(202)

[31mViolation[0m for UnrestrictedWrite in contract 'Mergex':
    |	function setFeeAddress(address _fee) public onlyAdmin(2) {
    |		FeeAddressChanged(feeAddress, _fee);
  > |		feeAddress=_fee;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(224)

[31mViolation[0m for UnrestrictedWrite in contract 'Mergex':
    |		require(_fee < 100);
    |		TradingFeeChanged(feePercent, _fee);
  > |		feePercent=_fee;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(231)

[31mViolation[0m for UnrestrictedWrite in contract 'Mergex':
    |	function deployNonNativeToken(string _name,string _symbol,uint256 _decimals) public onlyAdmin(2) returns(address tokenAddress){
    |		address nToken = new nonNativeToken(_name, _symbol, _decimals);
  > |		nTokens[_symbol]=nToken;
    |		TokenDeployed(nToken, _name, _symbol);
    |		return nToken;
  at /home/jiaming/slither_fp_files/out8887.sol(236)

[31mViolation[0m for UnrestrictedWrite in contract 'Mergex':
    |		_;
    |		WrapperSetup(EtherWrapper);
  > |		WrapperisEnabled=true;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(270)

[31mViolation[0m for UnrestrictedWrite in contract 'Mergex':
    |
    |	function setupWrapper(address _wrapper) public onlyAdmin(2) PreWrapper{
  > |		EtherWrapper=_wrapper;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(283)

[31mViolation[0m for UnrestrictedWrite in contract 'Mergex':
    |
    |	function deployWrapper() public onlyAdmin(2) PreWrapper{
  > |		EtherWrapper = new EthWrapper('EtherWrapper', 'ETH', 18);
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(287)

[31mViolation[0m for UnrestrictedWrite in contract 'Mergex':
    |		EthWrapper_Interface(EtherWrapper).wrapperChanged.value(this.balance)();
    |		WrapperChanged(EtherWrapper, _wrapper);
  > |		EtherWrapper = _wrapper;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(293)

[31mViolation[0m for UnrestrictedWrite in contract 'Mergex':
    |				revert();
    |			}
  > |			fills[owner][hash]=fills[owner][hash].add(tradeAmount);
    |			if(fills[owner][hash] == valueA){
    |				Filled(hash);
  at /home/jiaming/slither_fp_files/out8887.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'Mergex':
    |		require(ecrecover(keccak256("\x19Ethereum Signed Message:\n32",hash),v,r,s)==msg.sender);
    |		Cancel(hash);
  > |		fills[msg.sender][hash]=valueA;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8887.sol(367)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |	function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |		uint256 c = a * b;
  at /home/jiaming/slither_fp_files/out8887.sol(24)

[33mWarning[0m for LockedEther in contract 'nonNativeToken':
    |}
    |
  > |contract nonNativeToken is ERC20_Token, nonNativeToken_Interface{
    |	address public exchange;
    |	modifier onlyExchange{
  at /home/jiaming/slither_fp_files/out8887.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'nonNativeToken':
    |	function transfer(address _to, uint256 _value) public returns (bool success) {
    |		if (balances[msg.sender] >= _value) {
  > |			balances[msg.sender] = balances[msg.sender].sub(_value);
    |			balances[_to] = balances[_to].add(_value);
    |			return true;
  at /home/jiaming/slither_fp_files/out8887.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'nonNativeToken':
    |		if (balances[msg.sender] >= _value) {
    |			balances[msg.sender] = balances[msg.sender].sub(_value);
  > |			balances[_to] = balances[_to].add(_value);
    |			return true;
    |		}else return false;
  at /home/jiaming/slither_fp_files/out8887.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'nonNativeToken':
    |
    |	function approve(address _spender, uint256 _value) public returns (bool success) {
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/slither_fp_files/out8887.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'nonNativeToken':
    |
    |	function makeDeposit(address deposit_to, uint256 amount) public onlyExchange returns (bool success){
  > |		balances[deposit_to] = balances[deposit_to].add(amount);
    |		totalSupply = totalSupply.add(amount);
    |		return true;
  at /home/jiaming/slither_fp_files/out8887.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'nonNativeToken':
    |	function makeDeposit(address deposit_to, uint256 amount) public onlyExchange returns (bool success){
    |		balances[deposit_to] = balances[deposit_to].add(amount);
  > |		totalSupply = totalSupply.add(amount);
    |		return true;
    |	}
  at /home/jiaming/slither_fp_files/out8887.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'nonNativeToken':
    |	function makeWithdrawal(address withdraw_from, uint256 amount) public onlyExchange returns (bool success){
    |		if(balances[withdraw_from]>=amount) {
  > |			balances[withdraw_from] = balances[withdraw_from].sub(amount);
    |			totalSupply = totalSupply.sub(amount);
    |			return true;
  at /home/jiaming/slither_fp_files/out8887.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'nonNativeToken':
    |		if(balances[withdraw_from]>=amount) {
    |			balances[withdraw_from] = balances[withdraw_from].sub(amount);
  > |			totalSupply = totalSupply.sub(amount);
    |			return true;
    |		}
  at /home/jiaming/slither_fp_files/out8887.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'nonNativeToken':
    |		if(balances[_from] >= _value) {
    |			if(msg.sender == exchange) {
  > |				balances[_from] = balances[_from].sub(_value);
    |				balances[_to] = balances[_to].add(_value);
    |				Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out8887.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'nonNativeToken':
    |			if(msg.sender == exchange) {
    |				balances[_from] = balances[_from].sub(_value);
  > |				balances[_to] = balances[_to].add(_value);
    |				Transfer(_from, _to, _value);
    |				return true;
  at /home/jiaming/slither_fp_files/out8887.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'nonNativeToken':
    |				return true;
    |			}else if(allowed[_from][msg.sender] >= _value) {
  > |				balances[_from] = balances[_from].sub(_value);
    |				balances[_to] = balances[_to].add(_value);
    |				allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/slither_fp_files/out8887.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'nonNativeToken':
    |			}else if(allowed[_from][msg.sender] >= _value) {
    |				balances[_from] = balances[_from].sub(_value);
  > |				balances[_to] = balances[_to].add(_value);
    |				allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |				Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out8887.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'nonNativeToken':
    |				balances[_from] = balances[_from].sub(_value);
    |				balances[_to] = balances[_to].add(_value);
  > |				allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |				Transfer(_from, _to, _value);
    |				return true;
  at /home/jiaming/slither_fp_files/out8887.sol(130)


