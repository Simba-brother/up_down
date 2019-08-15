Processing contract: /home/jiaming/slither_fp_files/out13696.sol:EC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out13696.sol:ERC20
Processing contract: /home/jiaming/slither_fp_files/out13696.sol:ERC20Basic
Processing contract: /home/jiaming/slither_fp_files/out13696.sol:IUpgradable
Processing contract: /home/jiaming/slither_fp_files/out13696.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out13696.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out13696.sol:TaskRegister
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out13696.sol:Upgradable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out13696.sol:VanityLib
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'EC':
    |// File: libs/EC.sol
    |
  > |contract EC {
    |
    |    uint256 constant public gx = 0x79BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798;
  at /home/jiaming/slither_fp_files/out13696.sol(5)

[33mWarning[0m for UnhandledException in contract 'EC':
    |    {
    |        uint256 m = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141;
  > |        address signer = ecrecover(0, y1 % 2 != 0 ? 28 : 27, bytes32(x1), bytes32(mulmod(scalar, x1, m)));
    |        address xyAddress = address(uint256(keccak256(abi.encodePacked(qx, qy))) & 0x00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
    |        return xyAddress == signer;
  at /home/jiaming/slither_fp_files/out13696.sol(201)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EC':
    |    {
    |        uint256 m = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141;
  > |        address signer = ecrecover(0, y1 % 2 != 0 ? 28 : 27, bytes32(x1), bytes32(mulmod(scalar, x1, m)));
    |        address xyAddress = address(uint256(keccak256(abi.encodePacked(qx, qy))) & 0x00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
    |        return xyAddress == signer;
  at /home/jiaming/slither_fp_files/out13696.sol(201)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/slither_fp_files/out13696.sol(236)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out13696.sol(237)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/slither_fp_files/out13696.sol(269)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out13696.sol(278)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out13696.sol(286)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out13696.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out13696.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out13696.sol(289)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/slither_fp_files/out13696.sol(546)

[33mWarning[0m for DAOConstantGas in contract 'TaskRegister':
    |
    |        if (upgradableState.nextVersion != 0) {
  > |            upgradableState.nextVersion.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out13696.sol(748)

[33mWarning[0m for DAOConstantGas in contract 'TaskRegister':
    |    function claim(ERC20Basic _token, address _to) public onlyOwner {
    |        if (_token == address(0)) {
  > |            _to.transfer(address(this).balance - totalReward);
    |        } else {
    |            _token.transfer(_to, _token.balanceOf(this));
  at /home/jiaming/slither_fp_files/out13696.sol(867)

[33mWarning[0m for LockedEther in contract 'TaskRegister':
    |// File: contracts/TaskRegister.sol
    |
  > |contract TaskRegister is Upgradable, VanityLib {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out13696.sol(629)

[31mViolation[0m for TODAmount in contract 'TaskRegister':
    |
    |        if (upgradableState.nextVersion != 0) {
  > |            upgradableState.nextVersion.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out13696.sol(748)

[31mViolation[0m for TODAmount in contract 'TaskRegister':
    |    function claim(ERC20Basic _token, address _to) public onlyOwner {
    |        if (_token == address(0)) {
  > |            _to.transfer(address(this).balance - totalReward);
    |        } else {
    |            _token.transfer(_to, _token.balanceOf(this));
  at /home/jiaming/slither_fp_files/out13696.sol(867)

[31mViolation[0m for TODReceiver in contract 'TaskRegister':
    |
    |        if (upgradableState.nextVersion != 0) {
  > |            upgradableState.nextVersion.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out13696.sol(748)

[33mWarning[0m for TODReceiver in contract 'TaskRegister':
    |    function claim(ERC20Basic _token, address _to) public onlyOwner {
    |        if (_token == address(0)) {
  > |            _to.transfer(address(this).balance - totalReward);
    |        } else {
    |            _token.transfer(_to, _token.balanceOf(this));
  at /home/jiaming/slither_fp_files/out13696.sol(867)

[33mWarning[0m for UnhandledException in contract 'TaskRegister':
    |        else  {
    |            if (upgradableState.prevVersion != address(0)) {
  > |                Upgradable(upgradableState.prevVersion).endUpgrade();
    |            }
    |            emit Initialized(upgradableState.prevVersion);
  at /home/jiaming/slither_fp_files/out13696.sol(355)

[33mWarning[0m for UnhandledException in contract 'TaskRegister':
    |    // Create BTC Address: https://en.bitcoin.it/wiki/Technical_background_of_version_1_Bitcoin_addresses#How_to_create_Bitcoin_Address
    |    function createBtcAddressHex(uint256 publicXPoint, uint256 publicYPoint) public pure returns(uint256) {
  > |        bytes20 publicKeyPart = ripemd160(abi.encodePacked(sha256(abi.encodePacked(byte(0x04), publicXPoint, publicYPoint))));
    |        bytes32 publicKeyCheckCode = sha256(abi.encodePacked(sha256(abi.encodePacked(byte(0x00), publicKeyPart))));
    |        
  at /home/jiaming/slither_fp_files/out13696.sol(423)

[33mWarning[0m for UnhandledException in contract 'TaskRegister':
    |    function createBtcAddressHex(uint256 publicXPoint, uint256 publicYPoint) public pure returns(uint256) {
    |        bytes20 publicKeyPart = ripemd160(abi.encodePacked(sha256(abi.encodePacked(byte(0x04), publicXPoint, publicYPoint))));
  > |        bytes32 publicKeyCheckCode = sha256(abi.encodePacked(sha256(abi.encodePacked(byte(0x00), publicKeyPart))));
    |        
    |        bytes memory publicKey = new bytes(32);
  at /home/jiaming/slither_fp_files/out13696.sol(424)

[33mWarning[0m for UnhandledException in contract 'TaskRegister':
    |
    |        // Migrate some vars
  > |        nextTaskId = TaskRegister(upgradableState.prevVersion).nextTaskId();
    |        totalReward = TaskRegister(upgradableState.prevVersion).totalReward();
    |        serviceFee = TaskRegister(upgradableState.prevVersion).serviceFee();
  at /home/jiaming/slither_fp_files/out13696.sol(683)

[33mWarning[0m for UnhandledException in contract 'TaskRegister':
    |        // Migrate some vars
    |        nextTaskId = TaskRegister(upgradableState.prevVersion).nextTaskId();
  > |        totalReward = TaskRegister(upgradableState.prevVersion).totalReward();
    |        serviceFee = TaskRegister(upgradableState.prevVersion).serviceFee();
    |        referrerFee = TaskRegister(upgradableState.prevVersion).referrerFee();
  at /home/jiaming/slither_fp_files/out13696.sol(684)

[33mWarning[0m for UnhandledException in contract 'TaskRegister':
    |        nextTaskId = TaskRegister(upgradableState.prevVersion).nextTaskId();
    |        totalReward = TaskRegister(upgradableState.prevVersion).totalReward();
  > |        serviceFee = TaskRegister(upgradableState.prevVersion).serviceFee();
    |        referrerFee = TaskRegister(upgradableState.prevVersion).referrerFee();
    |        
  at /home/jiaming/slither_fp_files/out13696.sol(685)

[33mWarning[0m for UnhandledException in contract 'TaskRegister':
    |        totalReward = TaskRegister(upgradableState.prevVersion).totalReward();
    |        serviceFee = TaskRegister(upgradableState.prevVersion).serviceFee();
  > |        referrerFee = TaskRegister(upgradableState.prevVersion).referrerFee();
    |        
    |        uint index = tasks.length;
  at /home/jiaming/slither_fp_files/out13696.sol(686)

[33mWarning[0m for UnhandledException in contract 'TaskRegister':
    |        
    |        uint index = tasks.length;
  > |        uint tasksCount = TaskRegister(upgradableState.prevVersion).tasksCount();
    |
    |        // Migrate tasks
  at /home/jiaming/slither_fp_files/out13696.sol(689)

[33mWarning[0m for UnhandledException in contract 'TaskRegister':
    |                ,//tasks[j].requestPublicYPoint,
    |                 //tasks[j].answerPrivateKey
  > |            ) = TaskRegister(upgradableState.prevVersion).tasks(j);
    |            indexOfTaskId[tasks[j].taskId] = j + 1;
    |        }
  at /home/jiaming/slither_fp_files/out13696.sol(709)

[33mWarning[0m for UnhandledException in contract 'TaskRegister':
    |                ,//tasks[j].requestPublicYPoint,
    |                 //tasks[j].answerPrivateKey
  > |            ) = TaskRegister(upgradableState.prevVersion).tasks(j);
    |        }
    |
  at /home/jiaming/slither_fp_files/out13696.sol(725)

[33mWarning[0m for UnhandledException in contract 'TaskRegister':
    |                tasks[j].requestPublicYPoint,
    |                tasks[j].answerPrivateKey
  > |            ) = TaskRegister(upgradableState.prevVersion).tasks(j);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out13696.sol(740)

[33mWarning[0m for UnhandledException in contract 'TaskRegister':
    |
    |        if (upgradableState.nextVersion != 0) {
  > |            upgradableState.nextVersion.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out13696.sol(748)

[33mWarning[0m for UnhandledException in contract 'TaskRegister':
    |        if (task.taskType == TaskType.BITCOIN_ADDRESS_PREFIX) {
    |            ///(publicXPoint, publicYPoint) = ec.publicKey(_answerPrivateKey);
  > |            require(ec.publicKeyVerify(_answerPrivateKey, publicXPoint, publicYPoint));
    |            (publicXPoint, publicYPoint) = ec.ecadd(
    |                task.requestPublicXPoint,
  at /home/jiaming/slither_fp_files/out13696.sol(822)

[33mWarning[0m for UnhandledException in contract 'TaskRegister':
    |            ///(publicXPoint, publicYPoint) = ec.publicKey(_answerPrivateKey);
    |            require(ec.publicKeyVerify(_answerPrivateKey, publicXPoint, publicYPoint));
  > |            (publicXPoint, publicYPoint) = ec.ecadd(
    |                task.requestPublicXPoint,
    |                task.requestPublicYPoint,
  at /home/jiaming/slither_fp_files/out13696.sol(823)

[33mWarning[0m for UnhandledException in contract 'TaskRegister':
    |    function claim(ERC20Basic _token, address _to) public onlyOwner {
    |        if (_token == address(0)) {
  > |            _to.transfer(address(this).balance - totalReward);
    |        } else {
    |            _token.transfer(_to, _token.balanceOf(this));
  at /home/jiaming/slither_fp_files/out13696.sol(867)

[33mWarning[0m for UnhandledException in contract 'TaskRegister':
    |            _to.transfer(address(this).balance - totalReward);
    |        } else {
  > |            _token.transfer(_to, _token.balanceOf(this));
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out13696.sol(869)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaskRegister':
    |        else  {
    |            if (upgradableState.prevVersion != address(0)) {
  > |                Upgradable(upgradableState.prevVersion).endUpgrade();
    |            }
    |            emit Initialized(upgradableState.prevVersion);
  at /home/jiaming/slither_fp_files/out13696.sol(355)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaskRegister':
    |    // Create BTC Address: https://en.bitcoin.it/wiki/Technical_background_of_version_1_Bitcoin_addresses#How_to_create_Bitcoin_Address
    |    function createBtcAddressHex(uint256 publicXPoint, uint256 publicYPoint) public pure returns(uint256) {
  > |        bytes20 publicKeyPart = ripemd160(abi.encodePacked(sha256(abi.encodePacked(byte(0x04), publicXPoint, publicYPoint))));
    |        bytes32 publicKeyCheckCode = sha256(abi.encodePacked(sha256(abi.encodePacked(byte(0x00), publicKeyPart))));
    |        
  at /home/jiaming/slither_fp_files/out13696.sol(423)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaskRegister':
    |    function createBtcAddressHex(uint256 publicXPoint, uint256 publicYPoint) public pure returns(uint256) {
    |        bytes20 publicKeyPart = ripemd160(abi.encodePacked(sha256(abi.encodePacked(byte(0x04), publicXPoint, publicYPoint))));
  > |        bytes32 publicKeyCheckCode = sha256(abi.encodePacked(sha256(abi.encodePacked(byte(0x00), publicKeyPart))));
    |        
    |        bytes memory publicKey = new bytes(32);
  at /home/jiaming/slither_fp_files/out13696.sol(424)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaskRegister':
    |
    |        // Migrate some vars
  > |        nextTaskId = TaskRegister(upgradableState.prevVersion).nextTaskId();
    |        totalReward = TaskRegister(upgradableState.prevVersion).totalReward();
    |        serviceFee = TaskRegister(upgradableState.prevVersion).serviceFee();
  at /home/jiaming/slither_fp_files/out13696.sol(683)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaskRegister':
    |        // Migrate some vars
    |        nextTaskId = TaskRegister(upgradableState.prevVersion).nextTaskId();
  > |        totalReward = TaskRegister(upgradableState.prevVersion).totalReward();
    |        serviceFee = TaskRegister(upgradableState.prevVersion).serviceFee();
    |        referrerFee = TaskRegister(upgradableState.prevVersion).referrerFee();
  at /home/jiaming/slither_fp_files/out13696.sol(684)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaskRegister':
    |        nextTaskId = TaskRegister(upgradableState.prevVersion).nextTaskId();
    |        totalReward = TaskRegister(upgradableState.prevVersion).totalReward();
  > |        serviceFee = TaskRegister(upgradableState.prevVersion).serviceFee();
    |        referrerFee = TaskRegister(upgradableState.prevVersion).referrerFee();
    |        
  at /home/jiaming/slither_fp_files/out13696.sol(685)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaskRegister':
    |        totalReward = TaskRegister(upgradableState.prevVersion).totalReward();
    |        serviceFee = TaskRegister(upgradableState.prevVersion).serviceFee();
  > |        referrerFee = TaskRegister(upgradableState.prevVersion).referrerFee();
    |        
    |        uint index = tasks.length;
  at /home/jiaming/slither_fp_files/out13696.sol(686)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaskRegister':
    |        
    |        uint index = tasks.length;
  > |        uint tasksCount = TaskRegister(upgradableState.prevVersion).tasksCount();
    |
    |        // Migrate tasks
  at /home/jiaming/slither_fp_files/out13696.sol(689)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaskRegister':
    |                ,//tasks[j].requestPublicYPoint,
    |                 //tasks[j].answerPrivateKey
  > |            ) = TaskRegister(upgradableState.prevVersion).tasks(j);
    |            indexOfTaskId[tasks[j].taskId] = j + 1;
    |        }
  at /home/jiaming/slither_fp_files/out13696.sol(709)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaskRegister':
    |                ,//tasks[j].requestPublicYPoint,
    |                 //tasks[j].answerPrivateKey
  > |            ) = TaskRegister(upgradableState.prevVersion).tasks(j);
    |        }
    |
  at /home/jiaming/slither_fp_files/out13696.sol(725)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaskRegister':
    |                tasks[j].requestPublicYPoint,
    |                tasks[j].answerPrivateKey
  > |            ) = TaskRegister(upgradableState.prevVersion).tasks(j);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out13696.sol(740)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaskRegister':
    |
    |        if (upgradableState.nextVersion != 0) {
  > |            upgradableState.nextVersion.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out13696.sol(748)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaskRegister':
    |        if (task.taskType == TaskType.BITCOIN_ADDRESS_PREFIX) {
    |            ///(publicXPoint, publicYPoint) = ec.publicKey(_answerPrivateKey);
  > |            require(ec.publicKeyVerify(_answerPrivateKey, publicXPoint, publicYPoint));
    |            (publicXPoint, publicYPoint) = ec.ecadd(
    |                task.requestPublicXPoint,
  at /home/jiaming/slither_fp_files/out13696.sol(822)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaskRegister':
    |            ///(publicXPoint, publicYPoint) = ec.publicKey(_answerPrivateKey);
    |            require(ec.publicKeyVerify(_answerPrivateKey, publicXPoint, publicYPoint));
  > |            (publicXPoint, publicYPoint) = ec.ecadd(
    |                task.requestPublicXPoint,
    |                task.requestPublicYPoint,
  at /home/jiaming/slither_fp_files/out13696.sol(823)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaskRegister':
    |    function claim(ERC20Basic _token, address _to) public onlyOwner {
    |        if (_token == address(0)) {
  > |            _to.transfer(address(this).balance - totalReward);
    |        } else {
    |            _token.transfer(_to, _token.balanceOf(this));
  at /home/jiaming/slither_fp_files/out13696.sol(867)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaskRegister':
    |            _to.transfer(address(this).balance - totalReward);
    |        } else {
  > |            _token.transfer(_to, _token.balanceOf(this));
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out13696.sol(869)

[31mViolation[0m for UnrestrictedWrite in contract 'TaskRegister':
    |pragma solidity ^0.4.24;
    |
  > |// File: libs/EC.sol
    |
    |contract EC {
  at /home/jiaming/slither_fp_files/out13696.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'TaskRegister':
    |    function endUpgrade() public onlyOwnerOrigin {
    |        require(upgradableState.isUpgrading);
  > |        upgradableState.isUpgrading = false;
    |        if (msg.sender != owner) {
    |            require(upgradableState.nextVersion == msg.sender);
  at /home/jiaming/slither_fp_files/out13696.sol(348)

[31mViolation[0m for UnrestrictedWrite in contract 'TaskRegister':
    |
    |        for (uint i = index; i < index + _size && i < tasksCount; i++) {
  > |            tasks.push(Task(TaskType.BITCOIN_ADDRESS_PREFIX,0,0,0,0,bytes32(0),0,0,0,0));
    |        }
    |
  at /home/jiaming/slither_fp_files/out13696.sol(694)

[31mViolation[0m for UnrestrictedWrite in contract 'TaskRegister':
    |
    |        for (uint j = index; j < index + _size && j < tasksCount; j++) {
  > |            (
    |                tasks[j].taskType,
    |                tasks[j].taskId,
  at /home/jiaming/slither_fp_files/out13696.sol(698)

[31mViolation[0m for UnrestrictedWrite in contract 'TaskRegister':
    |                 //tasks[j].answerPrivateKey
    |            ) = TaskRegister(upgradableState.prevVersion).tasks(j);
  > |            indexOfTaskId[tasks[j].taskId] = j + 1;
    |        }
    |
  at /home/jiaming/slither_fp_files/out13696.sol(710)

[31mViolation[0m for UnrestrictedWrite in contract 'TaskRegister':
    |
    |        for (j = index; j < index + _size && j < tasksCount; j++) {
  > |            (
    |                ,//tasks[j].taskType,
    |                ,//tasks[j].taskId,
  at /home/jiaming/slither_fp_files/out13696.sol(714)

[31mViolation[0m for UnrestrictedWrite in contract 'TaskRegister':
    |
    |        for (j = index; j < index + _size && j < tasksCount; j++) {
  > |            (
    |                ,//tasks[j].taskType,
    |                ,//tasks[j].taskId,
  at /home/jiaming/slither_fp_files/out13696.sol(729)

[33mWarning[0m for UnrestrictedWrite in contract 'TaskRegister':
    |pragma solidity ^0.4.24;
    |
  > |// File: libs/EC.sol
    |
    |contract EC {
  at /home/jiaming/slither_fp_files/out13696.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'TaskRegister':
    |        if (msg.value > 0) {
    |            Task storage task = tasks[safeIndexOfTaskId(_taskId)];
  > |            task.reward = task.reward.add(msg.value);
    |            totalReward = totalReward.add(msg.value);
    |            emit TaskPayed(_taskId, msg.value);
  at /home/jiaming/slither_fp_files/out13696.sol(763)

[33mWarning[0m for UnrestrictedWrite in contract 'TaskRegister':
    |            Task storage task = tasks[safeIndexOfTaskId(_taskId)];
    |            task.reward = task.reward.add(msg.value);
  > |            totalReward = totalReward.add(msg.value);
    |            emit TaskPayed(_taskId, msg.value);
    |        }
  at /home/jiaming/slither_fp_files/out13696.sol(764)

[33mWarning[0m for UnrestrictedWrite in contract 'TaskRegister':
    |        Task memory task = Task({
    |            taskType: TaskType.BITCOIN_ADDRESS_PREFIX,
  > |            taskId: nextTaskId++,
    |            creator: msg.sender,
    |            referrer: referrer,
  at /home/jiaming/slither_fp_files/out13696.sol(796)

[33mWarning[0m for UnrestrictedWrite in contract 'TaskRegister':
    |        });
    |
  > |        indexOfTaskId[task.taskId] = tasks.push(task); // incremented to avoid 0 index
    |        emit TaskCreated(task.taskId);
    |        payForTask(task.taskId);
  at /home/jiaming/slither_fp_files/out13696.sol(807)

[33mWarning[0m for UnrestrictedWrite in contract 'TaskRegister':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out13696.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'TaskRegister':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out13696.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'TaskRegister':
    |        require(!upgradableState.isUpgrading);
    |        require(upgradableState.nextVersion == 0);
  > |        upgradableState.isUpgrading = true;
    |        upgradableState.nextVersion = msg.sender;
    |        emit Upgrading(msg.sender);
  at /home/jiaming/slither_fp_files/out13696.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'TaskRegister':
    |        require(upgradableState.nextVersion == 0);
    |        upgradableState.isUpgrading = true;
  > |        upgradableState.nextVersion = msg.sender;
    |        emit Upgrading(msg.sender);
    |    }
  at /home/jiaming/slither_fp_files/out13696.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'TaskRegister':
    |    function setServiceFee(uint256 _serviceFee) public onlyOwner {
    |        require(_serviceFee <= 20000); // 2% of reward
  > |        serviceFee = _serviceFee;
    |    }
    |
  at /home/jiaming/slither_fp_files/out13696.sol(670)

[33mWarning[0m for UnrestrictedWrite in contract 'TaskRegister':
    |    function setReferrerFee(uint256 _referrerFee) public onlyOwner {
    |        require(_referrerFee <= 500000); // 50% of serviceFee
  > |        referrerFee = _referrerFee;
    |    }
    |
  at /home/jiaming/slither_fp_files/out13696.sol(675)

[33mWarning[0m for UnrestrictedWrite in contract 'TaskRegister':
    |
    |        // Migrate some vars
  > |        nextTaskId = TaskRegister(upgradableState.prevVersion).nextTaskId();
    |        totalReward = TaskRegister(upgradableState.prevVersion).totalReward();
    |        serviceFee = TaskRegister(upgradableState.prevVersion).serviceFee();
  at /home/jiaming/slither_fp_files/out13696.sol(683)

[33mWarning[0m for UnrestrictedWrite in contract 'TaskRegister':
    |        // Migrate some vars
    |        nextTaskId = TaskRegister(upgradableState.prevVersion).nextTaskId();
  > |        totalReward = TaskRegister(upgradableState.prevVersion).totalReward();
    |        serviceFee = TaskRegister(upgradableState.prevVersion).serviceFee();
    |        referrerFee = TaskRegister(upgradableState.prevVersion).referrerFee();
  at /home/jiaming/slither_fp_files/out13696.sol(684)

[33mWarning[0m for UnrestrictedWrite in contract 'TaskRegister':
    |        nextTaskId = TaskRegister(upgradableState.prevVersion).nextTaskId();
    |        totalReward = TaskRegister(upgradableState.prevVersion).totalReward();
  > |        serviceFee = TaskRegister(upgradableState.prevVersion).serviceFee();
    |        referrerFee = TaskRegister(upgradableState.prevVersion).referrerFee();
    |        
  at /home/jiaming/slither_fp_files/out13696.sol(685)

[33mWarning[0m for UnrestrictedWrite in contract 'TaskRegister':
    |        totalReward = TaskRegister(upgradableState.prevVersion).totalReward();
    |        serviceFee = TaskRegister(upgradableState.prevVersion).serviceFee();
  > |        referrerFee = TaskRegister(upgradableState.prevVersion).referrerFee();
    |        
    |        uint index = tasks.length;
  at /home/jiaming/slither_fp_files/out13696.sol(686)

[33mWarning[0m for LockedEther in contract 'Upgradable':
    |}
    |
  > |contract Upgradable is Ownable {
    |    struct UpgradableState {
    |        bool isUpgrading;
  at /home/jiaming/slither_fp_files/out13696.sol(300)

[33mWarning[0m for MissingInputValidation in contract 'Upgradable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out13696.sol(237)

[33mWarning[0m for MissingInputValidation in contract 'Upgradable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/slither_fp_files/out13696.sol(269)

[33mWarning[0m for MissingInputValidation in contract 'Upgradable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out13696.sol(278)

[33mWarning[0m for MissingInputValidation in contract 'Upgradable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out13696.sol(286)

[33mWarning[0m for MissingInputValidation in contract 'Upgradable':
    |    }
    |
  > |    UpgradableState public upgradableState;
    |
    |    event Initialized(address indexed prevVersion);
  at /home/jiaming/slither_fp_files/out13696.sol(307)

[33mWarning[0m for MissingInputValidation in contract 'Upgradable':
    |    }
    |
  > |    function startUpgrade() public onlyOwnerOrigin {
    |        require(msg.sender != owner);
    |        require(!upgradableState.isUpgrading);
  at /home/jiaming/slither_fp_files/out13696.sol(335)

[33mWarning[0m for MissingInputValidation in contract 'Upgradable':
    |    //function upgrade(uint index, uint size) public onlyOwner {}
    |
  > |    function endUpgrade() public onlyOwnerOrigin {
    |        require(upgradableState.isUpgrading);
    |        upgradableState.isUpgrading = false;
  at /home/jiaming/slither_fp_files/out13696.sol(346)

[33mWarning[0m for UnhandledException in contract 'Upgradable':
    |        else  {
    |            if (upgradableState.prevVersion != address(0)) {
  > |                Upgradable(upgradableState.prevVersion).endUpgrade();
    |            }
    |            emit Initialized(upgradableState.prevVersion);
  at /home/jiaming/slither_fp_files/out13696.sol(355)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Upgradable':
    |        else  {
    |            if (upgradableState.prevVersion != address(0)) {
  > |                Upgradable(upgradableState.prevVersion).endUpgrade();
    |            }
    |            emit Initialized(upgradableState.prevVersion);
  at /home/jiaming/slither_fp_files/out13696.sol(355)

[31mViolation[0m for UnrestrictedWrite in contract 'Upgradable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out13696.sol(289)

[31mViolation[0m for UnrestrictedWrite in contract 'Upgradable':
    |    function endUpgrade() public onlyOwnerOrigin {
    |        require(upgradableState.isUpgrading);
  > |        upgradableState.isUpgrading = false;
    |        if (msg.sender != owner) {
    |            require(upgradableState.nextVersion == msg.sender);
  at /home/jiaming/slither_fp_files/out13696.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'Upgradable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out13696.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'Upgradable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out13696.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'Upgradable':
    |        require(!upgradableState.isUpgrading);
    |        require(upgradableState.nextVersion == 0);
  > |        upgradableState.isUpgrading = true;
    |        upgradableState.nextVersion = msg.sender;
    |        emit Upgrading(msg.sender);
  at /home/jiaming/slither_fp_files/out13696.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'Upgradable':
    |        require(upgradableState.nextVersion == 0);
    |        upgradableState.isUpgrading = true;
  > |        upgradableState.nextVersion = msg.sender;
    |        emit Upgrading(msg.sender);
    |    }
  at /home/jiaming/slither_fp_files/out13696.sol(340)

[33mWarning[0m for LockedEther in contract 'VanityLib':
    |// File: contracts/VanityLib.sol
    |
  > |contract VanityLib {
    |    uint constant m = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffc2f;
    |
  at /home/jiaming/slither_fp_files/out13696.sol(364)

[33mWarning[0m for UnhandledException in contract 'VanityLib':
    |    // Create BTC Address: https://en.bitcoin.it/wiki/Technical_background_of_version_1_Bitcoin_addresses#How_to_create_Bitcoin_Address
    |    function createBtcAddressHex(uint256 publicXPoint, uint256 publicYPoint) public pure returns(uint256) {
  > |        bytes20 publicKeyPart = ripemd160(abi.encodePacked(sha256(abi.encodePacked(byte(0x04), publicXPoint, publicYPoint))));
    |        bytes32 publicKeyCheckCode = sha256(abi.encodePacked(sha256(abi.encodePacked(byte(0x00), publicKeyPart))));
    |        
  at /home/jiaming/slither_fp_files/out13696.sol(423)

[33mWarning[0m for UnhandledException in contract 'VanityLib':
    |    function createBtcAddressHex(uint256 publicXPoint, uint256 publicYPoint) public pure returns(uint256) {
    |        bytes20 publicKeyPart = ripemd160(abi.encodePacked(sha256(abi.encodePacked(byte(0x04), publicXPoint, publicYPoint))));
  > |        bytes32 publicKeyCheckCode = sha256(abi.encodePacked(sha256(abi.encodePacked(byte(0x00), publicKeyPart))));
    |        
    |        bytes memory publicKey = new bytes(32);
  at /home/jiaming/slither_fp_files/out13696.sol(424)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VanityLib':
    |    // Create BTC Address: https://en.bitcoin.it/wiki/Technical_background_of_version_1_Bitcoin_addresses#How_to_create_Bitcoin_Address
    |    function createBtcAddressHex(uint256 publicXPoint, uint256 publicYPoint) public pure returns(uint256) {
  > |        bytes20 publicKeyPart = ripemd160(abi.encodePacked(sha256(abi.encodePacked(byte(0x04), publicXPoint, publicYPoint))));
    |        bytes32 publicKeyCheckCode = sha256(abi.encodePacked(sha256(abi.encodePacked(byte(0x00), publicKeyPart))));
    |        
  at /home/jiaming/slither_fp_files/out13696.sol(423)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VanityLib':
    |    function createBtcAddressHex(uint256 publicXPoint, uint256 publicYPoint) public pure returns(uint256) {
    |        bytes20 publicKeyPart = ripemd160(abi.encodePacked(sha256(abi.encodePacked(byte(0x04), publicXPoint, publicYPoint))));
  > |        bytes32 publicKeyCheckCode = sha256(abi.encodePacked(sha256(abi.encodePacked(byte(0x00), publicKeyPart))));
    |        
    |        bytes memory publicKey = new bytes(32);
  at /home/jiaming/slither_fp_files/out13696.sol(424)


