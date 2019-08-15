Processing contract: /home/jiaming/slither_fp_files/out8874.sol:ERC20Basic
Processing contract: /home/jiaming/slither_fp_files/out8874.sol:GlobalStorageMultiId
Processing contract: /home/jiaming/slither_fp_files/out8874.sol:RegDocuments
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8874.sol:UpgDocs
[31mViolation[0m for DAO in contract 'RegDocuments':
    |		uint _value = Storage.regPrice();
    |		storKey = _storKey;
  > |		Storage.registerUser.value(_value)(_storKey);
    |		registered = true;
    |	}
  at /home/jiaming/slither_fp_files/out8874.sol(96)

[33mWarning[0m for DAOConstantGas in contract 'RegDocuments':
    |		require(newDocs.confirm(storKey));
    |		Storage.changeAddress(storKey,_newAddress);
  > |		_newAddress.send(this.balance);
    |	}
    |
  at /home/jiaming/slither_fp_files/out8874.sol(105)

[33mWarning[0m for LockedEther in contract 'RegDocuments':
    |
    |// The Token
  > |contract RegDocuments {
    |	string public version;
    |	address public admin;
  at /home/jiaming/slither_fp_files/out8874.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'RegDocuments':
    |	}
    |
  > |	function registerDocs(bytes32 _storKey) onlyAdmin payable {
    |		// Register key with IntelligentStorage
    |		require(!registered); // It only does it one time
  at /home/jiaming/slither_fp_files/out8874.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'RegDocuments':
    |	}
    |
  > |	function confirm(bytes32 _storKey) returns(bool) {
    |		// This is called from older version, to register key for IntelligentStorage
    |		require(!registered);
  at /home/jiaming/slither_fp_files/out8874.sol(108)

[31mViolation[0m for MissingInputValidation in contract 'RegDocuments':
    |	// -------------------------------------
    |
  > |	function changeOwner(address _newOwnerAddress) onlyOwner returns(bool){
    |		owner = _newOwnerAddress;
    |		return true;
  at /home/jiaming/slither_fp_files/out8874.sol(120)

[31mViolation[0m for MissingInputValidation in contract 'RegDocuments':
    |	}
    |
  > |	function changeAdmin(address _newAdmin) onlyOwner returns(bool) {
    |		admin = _newAdmin;
    |		return true;
  at /home/jiaming/slither_fp_files/out8874.sol(125)

[31mViolation[0m for MissingInputValidation in contract 'RegDocuments':
    |	}
    |
  > |	function sendToken(address _token,address _to , uint _value) onlyOwner returns(bool) {
    |		// To send ERC20 tokens sent accidentally
    |		ERC20Basic Token = ERC20Basic(_token);
  at /home/jiaming/slither_fp_files/out8874.sol(130)

[31mViolation[0m for MissingInputValidation in contract 'RegDocuments':
    |	}
    |
  > |	function changePerc(uint _newperc) onlyAdmin public {
    |		adminPerc = _newperc;
    |	}
  at /home/jiaming/slither_fp_files/out8874.sol(137)

[31mViolation[0m for MissingInputValidation in contract 'RegDocuments':
    |	}
    |
  > |	function changePrice(uint _newPrice) onlyAdmin public {
    |		price = _newPrice;
    |	}
  at /home/jiaming/slither_fp_files/out8874.sol(141)

[31mViolation[0m for MissingInputValidation in contract 'RegDocuments':
    |	}
    |
  > |	function getBalance(address _address) constant returns(uint) {
    |		return getUint(_address);
    |	}
  at /home/jiaming/slither_fp_files/out8874.sol(166)

[31mViolation[0m for MissingInputValidation in contract 'RegDocuments':
    |	}
    |
  > |	function regDoc(address _address, string _hash) onlyAdmin returns (bool success) {
    |		uint a = getUint(_address);
    |		require(a >= price);
  at /home/jiaming/slither_fp_files/out8874.sol(170)

[33mWarning[0m for MissingInputValidation in contract 'RegDocuments':
    |// The Token
    |contract RegDocuments {
  > |	string public version;
    |	address public admin;
    |	address public owner;
  at /home/jiaming/slither_fp_files/out8874.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'RegDocuments':
    |contract RegDocuments {
    |	string public version;
  > |	address public admin;
    |	address public owner;
    |	uint public price;
  at /home/jiaming/slither_fp_files/out8874.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'RegDocuments':
    |	string public version;
    |	address public admin;
  > |	address public owner;
    |	uint public price;
    |	bool registered;
  at /home/jiaming/slither_fp_files/out8874.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'RegDocuments':
    |	address public admin;
    |	address public owner;
  > |	uint public price;
    |	bool registered;
    |	address storageAddress;
  at /home/jiaming/slither_fp_files/out8874.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'RegDocuments':
    |	bool registered;
    |	address storageAddress;
  > |	bytes32 public storKey;
    |	uint public adminPerc;
    |
  at /home/jiaming/slither_fp_files/out8874.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'RegDocuments':
    |	address storageAddress;
    |	bytes32 public storKey;
  > |	uint public adminPerc;
    |
    |	GlobalStorageMultiId public Storage;
  at /home/jiaming/slither_fp_files/out8874.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'RegDocuments':
    |	uint public adminPerc;
    |
  > |	GlobalStorageMultiId public Storage;
    |
    |	event RegDocument(address indexed from);
  at /home/jiaming/slither_fp_files/out8874.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'RegDocuments':
    |	// ----------------------------------------
    |
  > |	function getStoragePrice() onlyAdmin constant returns(uint) {
    |		return Storage.regPrice();
    |	}
  at /home/jiaming/slither_fp_files/out8874.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'RegDocuments':
    |	}
    |
  > |	function upgradeDocs(address _newAddress) onlyAdmin {
    |		// This is to update this contract to a new address and transfer ownership of Storage to the new address
    |		UpgDocs newDocs = UpgDocs(_newAddress);
  at /home/jiaming/slither_fp_files/out8874.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'RegDocuments':
    |		}
    |
  > |	function getPrice() constant returns(uint) {
    |		return price;
    |	}
  at /home/jiaming/slither_fp_files/out8874.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'RegDocuments':
    |	// Internal functions
    |
  > |	function setUint(address _address, uint _value) internal {
    |		Storage.setUint(storKey, bytes32(_address), _value, true);
    |	}
  at /home/jiaming/slither_fp_files/out8874.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'RegDocuments':
    |	}
    |
  > |	function getUint(address _address) internal constant returns(uint) {
    |		return Storage.getUint(storKey, bytes32(_address));
    |
  at /home/jiaming/slither_fp_files/out8874.sol(188)

[31mViolation[0m for TODAmount in contract 'RegDocuments':
    |		require(newDocs.confirm(storKey));
    |		Storage.changeAddress(storKey,_newAddress);
  > |		_newAddress.send(this.balance);
    |	}
    |
  at /home/jiaming/slither_fp_files/out8874.sol(105)

[33mWarning[0m for TODAmount in contract 'RegDocuments':
    |		uint _value = Storage.regPrice();
    |		storKey = _storKey;
  > |		Storage.registerUser.value(_value)(_storKey);
    |		registered = true;
    |	}
  at /home/jiaming/slither_fp_files/out8874.sol(96)

[33mWarning[0m for TODReceiver in contract 'RegDocuments':
    |		uint _value = Storage.regPrice();
    |		storKey = _storKey;
  > |		Storage.registerUser.value(_value)(_storKey);
    |		registered = true;
    |	}
  at /home/jiaming/slither_fp_files/out8874.sol(96)

[33mWarning[0m for TODReceiver in contract 'RegDocuments':
    |		require(newDocs.confirm(storKey));
    |		Storage.changeAddress(storKey,_newAddress);
  > |		_newAddress.send(this.balance);
    |	}
    |
  at /home/jiaming/slither_fp_files/out8874.sol(105)

[31mViolation[0m for UnhandledException in contract 'RegDocuments':
    |		require(newDocs.confirm(storKey));
    |		Storage.changeAddress(storKey,_newAddress);
  > |		_newAddress.send(this.balance);
    |	}
    |
  at /home/jiaming/slither_fp_files/out8874.sol(105)

[33mWarning[0m for UnhandledException in contract 'RegDocuments':
    |
    |	function getStoragePrice() onlyAdmin constant returns(uint) {
  > |		return Storage.regPrice();
    |	}
    |
  at /home/jiaming/slither_fp_files/out8874.sol(88)

[33mWarning[0m for UnhandledException in contract 'RegDocuments':
    |		// Register key with IntelligentStorage
    |		require(!registered); // It only does it one time
  > |		uint _value = Storage.regPrice();
    |		storKey = _storKey;
    |		Storage.registerUser.value(_value)(_storKey);
  at /home/jiaming/slither_fp_files/out8874.sol(94)

[33mWarning[0m for UnhandledException in contract 'RegDocuments':
    |		uint _value = Storage.regPrice();
    |		storKey = _storKey;
  > |		Storage.registerUser.value(_value)(_storKey);
    |		registered = true;
    |	}
  at /home/jiaming/slither_fp_files/out8874.sol(96)

[33mWarning[0m for UnhandledException in contract 'RegDocuments':
    |		// This is to update this contract to a new address and transfer ownership of Storage to the new address
    |		UpgDocs newDocs = UpgDocs(_newAddress);
  > |		require(newDocs.confirm(storKey));
    |		Storage.changeAddress(storKey,_newAddress);
    |		_newAddress.send(this.balance);
  at /home/jiaming/slither_fp_files/out8874.sol(103)

[33mWarning[0m for UnhandledException in contract 'RegDocuments':
    |		UpgDocs newDocs = UpgDocs(_newAddress);
    |		require(newDocs.confirm(storKey));
  > |		Storage.changeAddress(storKey,_newAddress);
    |		_newAddress.send(this.balance);
    |	}
  at /home/jiaming/slither_fp_files/out8874.sol(104)

[33mWarning[0m for UnhandledException in contract 'RegDocuments':
    |		// To send ERC20 tokens sent accidentally
    |		ERC20Basic Token = ERC20Basic(_token);
  > |		require(Token.transfer(_to, _value));
    |		return true;
    |	}
  at /home/jiaming/slither_fp_files/out8874.sol(133)

[33mWarning[0m for UnhandledException in contract 'RegDocuments':
    |
    |	function setUint(address _address, uint _value) internal {
  > |		Storage.setUint(storKey, bytes32(_address), _value, true);
    |	}
    |
  at /home/jiaming/slither_fp_files/out8874.sol(185)

[33mWarning[0m for UnhandledException in contract 'RegDocuments':
    |
    |	function getUint(address _address) internal constant returns(uint) {
  > |		return Storage.getUint(storKey, bytes32(_address));
    |
    |	}
  at /home/jiaming/slither_fp_files/out8874.sol(189)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RegDocuments':
    |
    |	function getStoragePrice() onlyAdmin constant returns(uint) {
  > |		return Storage.regPrice();
    |	}
    |
  at /home/jiaming/slither_fp_files/out8874.sol(88)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RegDocuments':
    |		// Register key with IntelligentStorage
    |		require(!registered); // It only does it one time
  > |		uint _value = Storage.regPrice();
    |		storKey = _storKey;
    |		Storage.registerUser.value(_value)(_storKey);
  at /home/jiaming/slither_fp_files/out8874.sol(94)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RegDocuments':
    |		// This is to update this contract to a new address and transfer ownership of Storage to the new address
    |		UpgDocs newDocs = UpgDocs(_newAddress);
  > |		require(newDocs.confirm(storKey));
    |		Storage.changeAddress(storKey,_newAddress);
    |		_newAddress.send(this.balance);
  at /home/jiaming/slither_fp_files/out8874.sol(103)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RegDocuments':
    |		UpgDocs newDocs = UpgDocs(_newAddress);
    |		require(newDocs.confirm(storKey));
  > |		Storage.changeAddress(storKey,_newAddress);
    |		_newAddress.send(this.balance);
    |	}
  at /home/jiaming/slither_fp_files/out8874.sol(104)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RegDocuments':
    |		require(newDocs.confirm(storKey));
    |		Storage.changeAddress(storKey,_newAddress);
  > |		_newAddress.send(this.balance);
    |	}
    |
  at /home/jiaming/slither_fp_files/out8874.sol(105)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RegDocuments':
    |		// To send ERC20 tokens sent accidentally
    |		ERC20Basic Token = ERC20Basic(_token);
  > |		require(Token.transfer(_to, _value));
    |		return true;
    |	}
  at /home/jiaming/slither_fp_files/out8874.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RegDocuments':
    |
    |	function setUint(address _address, uint _value) internal {
  > |		Storage.setUint(storKey, bytes32(_address), _value, true);
    |	}
    |
  at /home/jiaming/slither_fp_files/out8874.sol(185)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RegDocuments':
    |
    |	function getUint(address _address) internal constant returns(uint) {
  > |		return Storage.getUint(storKey, bytes32(_address));
    |
    |	}
  at /home/jiaming/slither_fp_files/out8874.sol(189)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RegDocuments':
    |		uint _value = Storage.regPrice();
    |		storKey = _storKey;
  > |		Storage.registerUser.value(_value)(_storKey);
    |		registered = true;
    |	}
  at /home/jiaming/slither_fp_files/out8874.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'RegDocuments':
    |		// This is called from older version, to register key for IntelligentStorage
    |		require(!registered);
  > |		storKey = _storKey;
    |		registered = true;
    |		emit DocsUpgraded(msg.sender,this);
  at /home/jiaming/slither_fp_files/out8874.sol(111)

[31mViolation[0m for UnrestrictedWrite in contract 'RegDocuments':
    |		require(!registered);
    |		storKey = _storKey;
  > |		registered = true;
    |		emit DocsUpgraded(msg.sender,this);
    |		return true;
  at /home/jiaming/slither_fp_files/out8874.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'RegDocuments':
    |		require(!registered); // It only does it one time
    |		uint _value = Storage.regPrice();
  > |		storKey = _storKey;
    |		Storage.registerUser.value(_value)(_storKey);
    |		registered = true;
  at /home/jiaming/slither_fp_files/out8874.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'RegDocuments':
    |		storKey = _storKey;
    |		Storage.registerUser.value(_value)(_storKey);
  > |		registered = true;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8874.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'RegDocuments':
    |
    |	function changeOwner(address _newOwnerAddress) onlyOwner returns(bool){
  > |		owner = _newOwnerAddress;
    |		return true;
    |	}
  at /home/jiaming/slither_fp_files/out8874.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'RegDocuments':
    |
    |	function changeAdmin(address _newAdmin) onlyOwner returns(bool) {
  > |		admin = _newAdmin;
    |		return true;
    |	}
  at /home/jiaming/slither_fp_files/out8874.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'RegDocuments':
    |
    |	function changePerc(uint _newperc) onlyAdmin public {
  > |		adminPerc = _newperc;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8874.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'RegDocuments':
    |
    |	function changePrice(uint _newPrice) onlyAdmin public {
  > |		price = _newPrice;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8874.sol(142)


