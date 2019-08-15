Processing contract: /home/jiaming/slither_fp_files/out11123.sol:AssetID
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:AssetIDInterface
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:BytecodeExecutor
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:BytecodeExecutorInterface
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:CommonModifiers
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:CommonModifiersInterface
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:CrydrControllerBase
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:CrydrControllerBaseInterface
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:CrydrControllerBlockable
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:CrydrControllerBlockableInterface
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:CrydrControllerERC20
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:CrydrControllerERC20Interface
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:CrydrControllerForcedTransfer
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:CrydrControllerForcedTransferInterface
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:CrydrControllerMintable
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:CrydrControllerMintableInterface
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:CrydrStorageAllowanceInterface
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:CrydrStorageBalanceInterface
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:CrydrStorageBlocksInterface
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:CrydrStorageERC20Interface
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:CrydrViewBaseInterface
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:CrydrViewERC20LoggableInterface
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:CrydrViewERC20MintableInterface
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:JNTController
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:JNTPaymentGateway
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:JNTPaymentGatewayInterface
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:Manageable
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:ManageableInterface
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:OwnableInterface
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:Pausable
Processing contract: /home/jiaming/slither_fp_files/out11123.sol:PausableInterface
[33mWarning[0m for LockedEther in contract 'AssetID':
    | * @dev Base contract implementing AssetIDInterface
    | */
  > |contract AssetID is AssetIDInterface {
    |
    |  /* Storage */
  at /home/jiaming/slither_fp_files/out11123.sol(65)

[33mWarning[0m for LockedEther in contract 'CommonModifiers':
    | * @dev Base contract which contains common checks.
    | */
  > |contract CommonModifiers is CommonModifiersInterface {
    |
    |  /**
  at /home/jiaming/slither_fp_files/out11123.sol(31)

[31mViolation[0m for DAOConstantGas in contract 'JNTController':
    |
    |    underExecution = true; // Avoid recursive calling
  > |    _target.call.gas(_suppliedGas).value(_ethValue)(_transactionBytecode);
    |    underExecution = false;
    |
  at /home/jiaming/slither_fp_files/out11123.sol(538)

[33mWarning[0m for LockedEther in contract 'JNTController':
    | * @dev Mediates views and storage of JNT, provides additional methods for Jibrel contracts
    | */
  > |contract JNTController is CommonModifiers,
    |                          AssetID,
    |                          Ownable,
  at /home/jiaming/slither_fp_files/out11123.sol(1200)

[33mWarning[0m for TODAmount in contract 'JNTController':
    |
    |    underExecution = true; // Avoid recursive calling
  > |    _target.call.gas(_suppliedGas).value(_ethValue)(_transactionBytecode);
    |    underExecution = false;
    |
  at /home/jiaming/slither_fp_files/out11123.sol(538)

[33mWarning[0m for TODReceiver in contract 'JNTController':
    |
    |    underExecution = true; // Avoid recursive calling
  > |    _target.call.gas(_suppliedGas).value(_ethValue)(_transactionBytecode);
    |    underExecution = false;
    |
  at /home/jiaming/slither_fp_files/out11123.sol(538)

[31mViolation[0m for UnhandledException in contract 'JNTController':
    |
    |    underExecution = true; // Avoid recursive calling
  > |    _target.call.gas(_suppliedGas).value(_ethValue)(_transactionBytecode);
    |    underExecution = false;
    |
  at /home/jiaming/slither_fp_files/out11123.sol(538)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |
    |    CrydrViewBaseInterface crydrViewInstance = CrydrViewBaseInterface(_newCrydrView);
  > |    bytes32 standardNameHash = crydrViewInstance.getCrydrViewStandardNameHash();
    |    require(standardNameHash == keccak256(_viewApiStandardName));
    |
  at /home/jiaming/slither_fp_files/out11123.sol(785)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |    onlyAllowedManager('block_account')
    |  {
  > |    CrydrStorageBlocksInterface(getCrydrStorageAddress()).blockAccount(_account);
    |  }
    |
  at /home/jiaming/slither_fp_files/out11123.sol(884)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |    onlyAllowedManager('unblock_account')
    |  {
  > |    CrydrStorageBlocksInterface(getCrydrStorageAddress()).unblockAccount(_account);
    |  }
    |
  at /home/jiaming/slither_fp_files/out11123.sol(893)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |    onlyAllowedManager('block_account_funds')
    |  {
  > |    CrydrStorageBlocksInterface(getCrydrStorageAddress()).blockAccountFunds(_account, _value);
    |  }
    |
  at /home/jiaming/slither_fp_files/out11123.sol(903)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |    onlyAllowedManager('unblock_account_funds')
    |  {
  > |    CrydrStorageBlocksInterface(getCrydrStorageAddress()).unblockAccountFunds(_account, _value);
    |  }
    |}
  at /home/jiaming/slither_fp_files/out11123.sol(913)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |    // input parameters checked by the storage
    |
  > |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).increaseBalance(_account, _value);
    |
    |    emit MintEvent(_account, _value);
  at /home/jiaming/slither_fp_files/out11123.sol(958)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |    emit MintEvent(_account, _value);
    |    if (isCrydrViewRegistered('erc20') == true) {
  > |      CrydrViewERC20MintableInterface(getCrydrViewAddress('erc20')).emitMintEvent(_account, _value);
    |      CrydrViewERC20LoggableInterface(getCrydrViewAddress('erc20')).emitTransferEvent(address(0x0), _account, _value);
    |    }
  at /home/jiaming/slither_fp_files/out11123.sol(962)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |    if (isCrydrViewRegistered('erc20') == true) {
    |      CrydrViewERC20MintableInterface(getCrydrViewAddress('erc20')).emitMintEvent(_account, _value);
  > |      CrydrViewERC20LoggableInterface(getCrydrViewAddress('erc20')).emitTransferEvent(address(0x0), _account, _value);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out11123.sol(963)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |    // input parameters checked by the storage
    |
  > |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).decreaseBalance(_account, _value);
    |
    |    emit BurnEvent(_account, _value);
  at /home/jiaming/slither_fp_files/out11123.sol(976)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |    emit BurnEvent(_account, _value);
    |    if (isCrydrViewRegistered('erc20') == true) {
  > |      CrydrViewERC20MintableInterface(getCrydrViewAddress('erc20')).emitBurnEvent(_account, _value);
    |      CrydrViewERC20LoggableInterface(getCrydrViewAddress('erc20')).emitTransferEvent(_account, address(0x0), _value);
    |    }
  at /home/jiaming/slither_fp_files/out11123.sol(980)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |    if (isCrydrViewRegistered('erc20') == true) {
    |      CrydrViewERC20MintableInterface(getCrydrViewAddress('erc20')).emitBurnEvent(_account, _value);
  > |      CrydrViewERC20LoggableInterface(getCrydrViewAddress('erc20')).emitTransferEvent(_account, address(0x0), _value);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out11123.sol(981)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |    whenContractNotPaused
    |  {
  > |    CrydrStorageERC20Interface(getCrydrStorageAddress()).transfer(_msgsender, _to, _value);
    |
    |    if (isCrydrViewRegistered('erc20') == true) {
  at /home/jiaming/slither_fp_files/out11123.sol(1024)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |
    |    if (isCrydrViewRegistered('erc20') == true) {
  > |      CrydrViewERC20LoggableInterface(getCrydrViewAddress('erc20')).emitTransferEvent(_msgsender, _to, _value);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out11123.sol(1027)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |
    |  function getTotalSupply() public constant returns (uint256) {
  > |    return CrydrStorageBalanceInterface(getCrydrStorageAddress()).getTotalSupply();
    |  }
    |
  at /home/jiaming/slither_fp_files/out11123.sol(1032)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |
    |  function getBalance(address _owner) public constant returns (uint256) {
  > |    return CrydrStorageBalanceInterface(getCrydrStorageAddress()).getBalance(_owner);
    |  }
    |
  at /home/jiaming/slither_fp_files/out11123.sol(1036)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |    // https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    // We decided to enforce users to set 0 before set new value
  > |    uint256 allowance = CrydrStorageAllowanceInterface(getCrydrStorageAddress()).getAllowance(_msgsender, _spender);
    |    require((allowance > 0 && _value == 0) || (allowance == 0 && _value > 0));
    |
  at /home/jiaming/slither_fp_files/out11123.sol(1051)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |    require((allowance > 0 && _value == 0) || (allowance == 0 && _value > 0));
    |
  > |    CrydrStorageERC20Interface(getCrydrStorageAddress()).approve(_msgsender, _spender, _value);
    |
    |    if (isCrydrViewRegistered('erc20') == true) {
  at /home/jiaming/slither_fp_files/out11123.sol(1054)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |
    |    if (isCrydrViewRegistered('erc20') == true) {
  > |      CrydrViewERC20LoggableInterface(getCrydrViewAddress('erc20')).emitApprovalEvent(_msgsender, _spender, _value);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out11123.sol(1057)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |    whenContractNotPaused
    |  {
  > |    CrydrStorageERC20Interface(getCrydrStorageAddress()).transferFrom(_msgsender, _from, _to, _value);
    |
    |    if (isCrydrViewRegistered('erc20') == true) {
  at /home/jiaming/slither_fp_files/out11123.sol(1071)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |
    |    if (isCrydrViewRegistered('erc20') == true) {
  > |      CrydrViewERC20LoggableInterface(getCrydrViewAddress('erc20')).emitTransferEvent(_from, _to, _value);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out11123.sol(1074)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |
    |  function getAllowance(address _owner, address _spender) public constant returns (uint256 ) {
  > |    return CrydrStorageAllowanceInterface(getCrydrStorageAddress()).getAllowance(_owner, _spender);
    |  }
    |}
  at /home/jiaming/slither_fp_files/out11123.sol(1079)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |    // input parameters checked by the storage
    |
  > |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).decreaseBalance(_from, _value);
    |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).increaseBalance(_to, _value);
    |
  at /home/jiaming/slither_fp_files/out11123.sol(1123)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |
    |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).decreaseBalance(_from, _value);
  > |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).increaseBalance(_to, _value);
    |
    |    emit ForcedTransferEvent(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out11123.sol(1124)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |    emit ForcedTransferEvent(_from, _to, _value);
    |    if (isCrydrViewRegistered('erc20') == true) {
  > |      CrydrViewERC20LoggableInterface(getCrydrViewAddress('erc20')).emitTransferEvent(_from, _to, _value);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out11123.sol(1128)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |    // input parameters checked by the storage
    |
  > |    uint256 value = CrydrStorageBalanceInterface(getCrydrStorageAddress()).getBalance(_from);
    |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).decreaseBalance(_from, value);
    |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).increaseBalance(_to, value);
  at /home/jiaming/slither_fp_files/out11123.sol(1141)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |
    |    uint256 value = CrydrStorageBalanceInterface(getCrydrStorageAddress()).getBalance(_from);
  > |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).decreaseBalance(_from, value);
    |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).increaseBalance(_to, value);
    |
  at /home/jiaming/slither_fp_files/out11123.sol(1142)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |    uint256 value = CrydrStorageBalanceInterface(getCrydrStorageAddress()).getBalance(_from);
    |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).decreaseBalance(_from, value);
  > |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).increaseBalance(_to, value);
    |
    |    emit ForcedTransferEvent(_from, _to, value);
  at /home/jiaming/slither_fp_files/out11123.sol(1143)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |    emit ForcedTransferEvent(_from, _to, value);
    |    if (isCrydrViewRegistered('erc20') == true) {
  > |      CrydrViewERC20LoggableInterface(getCrydrViewAddress('erc20')).emitTransferEvent(_from, _to, value);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out11123.sol(1147)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |    onlyAllowedManager('jnt_payable_service')
    |  {
  > |    CrydrStorageERC20Interface(getCrydrStorageAddress()).transfer(_from, _to, _value);
    |
    |    emit JNTChargedEvent(msg.sender, _from, _to, _value);
  at /home/jiaming/slither_fp_files/out11123.sol(1186)

[33mWarning[0m for UnhandledException in contract 'JNTController':
    |    emit JNTChargedEvent(msg.sender, _from, _to, _value);
    |    if (isCrydrViewRegistered('erc20') == true) {
  > |      CrydrViewERC20LoggableInterface(getCrydrViewAddress('erc20')).emitTransferEvent(_from, _to, _value);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out11123.sol(1190)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |
    |    underExecution = true; // Avoid recursive calling
  > |    _target.call.gas(_suppliedGas).value(_ethValue)(_transactionBytecode);
    |    underExecution = false;
    |
  at /home/jiaming/slither_fp_files/out11123.sol(538)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |
    |    CrydrViewBaseInterface crydrViewInstance = CrydrViewBaseInterface(_newCrydrView);
  > |    bytes32 standardNameHash = crydrViewInstance.getCrydrViewStandardNameHash();
    |    require(standardNameHash == keccak256(_viewApiStandardName));
    |
  at /home/jiaming/slither_fp_files/out11123.sol(785)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |    onlyAllowedManager('block_account')
    |  {
  > |    CrydrStorageBlocksInterface(getCrydrStorageAddress()).blockAccount(_account);
    |  }
    |
  at /home/jiaming/slither_fp_files/out11123.sol(884)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |    onlyAllowedManager('unblock_account')
    |  {
  > |    CrydrStorageBlocksInterface(getCrydrStorageAddress()).unblockAccount(_account);
    |  }
    |
  at /home/jiaming/slither_fp_files/out11123.sol(893)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |    onlyAllowedManager('block_account_funds')
    |  {
  > |    CrydrStorageBlocksInterface(getCrydrStorageAddress()).blockAccountFunds(_account, _value);
    |  }
    |
  at /home/jiaming/slither_fp_files/out11123.sol(903)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |    onlyAllowedManager('unblock_account_funds')
    |  {
  > |    CrydrStorageBlocksInterface(getCrydrStorageAddress()).unblockAccountFunds(_account, _value);
    |  }
    |}
  at /home/jiaming/slither_fp_files/out11123.sol(913)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |    // input parameters checked by the storage
    |
  > |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).increaseBalance(_account, _value);
    |
    |    emit MintEvent(_account, _value);
  at /home/jiaming/slither_fp_files/out11123.sol(958)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |    emit MintEvent(_account, _value);
    |    if (isCrydrViewRegistered('erc20') == true) {
  > |      CrydrViewERC20MintableInterface(getCrydrViewAddress('erc20')).emitMintEvent(_account, _value);
    |      CrydrViewERC20LoggableInterface(getCrydrViewAddress('erc20')).emitTransferEvent(address(0x0), _account, _value);
    |    }
  at /home/jiaming/slither_fp_files/out11123.sol(962)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |    if (isCrydrViewRegistered('erc20') == true) {
    |      CrydrViewERC20MintableInterface(getCrydrViewAddress('erc20')).emitMintEvent(_account, _value);
  > |      CrydrViewERC20LoggableInterface(getCrydrViewAddress('erc20')).emitTransferEvent(address(0x0), _account, _value);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out11123.sol(963)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |    // input parameters checked by the storage
    |
  > |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).decreaseBalance(_account, _value);
    |
    |    emit BurnEvent(_account, _value);
  at /home/jiaming/slither_fp_files/out11123.sol(976)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |    emit BurnEvent(_account, _value);
    |    if (isCrydrViewRegistered('erc20') == true) {
  > |      CrydrViewERC20MintableInterface(getCrydrViewAddress('erc20')).emitBurnEvent(_account, _value);
    |      CrydrViewERC20LoggableInterface(getCrydrViewAddress('erc20')).emitTransferEvent(_account, address(0x0), _value);
    |    }
  at /home/jiaming/slither_fp_files/out11123.sol(980)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |    if (isCrydrViewRegistered('erc20') == true) {
    |      CrydrViewERC20MintableInterface(getCrydrViewAddress('erc20')).emitBurnEvent(_account, _value);
  > |      CrydrViewERC20LoggableInterface(getCrydrViewAddress('erc20')).emitTransferEvent(_account, address(0x0), _value);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out11123.sol(981)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |    whenContractNotPaused
    |  {
  > |    CrydrStorageERC20Interface(getCrydrStorageAddress()).transfer(_msgsender, _to, _value);
    |
    |    if (isCrydrViewRegistered('erc20') == true) {
  at /home/jiaming/slither_fp_files/out11123.sol(1024)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |
    |    if (isCrydrViewRegistered('erc20') == true) {
  > |      CrydrViewERC20LoggableInterface(getCrydrViewAddress('erc20')).emitTransferEvent(_msgsender, _to, _value);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out11123.sol(1027)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |
    |  function getTotalSupply() public constant returns (uint256) {
  > |    return CrydrStorageBalanceInterface(getCrydrStorageAddress()).getTotalSupply();
    |  }
    |
  at /home/jiaming/slither_fp_files/out11123.sol(1032)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |
    |  function getBalance(address _owner) public constant returns (uint256) {
  > |    return CrydrStorageBalanceInterface(getCrydrStorageAddress()).getBalance(_owner);
    |  }
    |
  at /home/jiaming/slither_fp_files/out11123.sol(1036)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |    // https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    // We decided to enforce users to set 0 before set new value
  > |    uint256 allowance = CrydrStorageAllowanceInterface(getCrydrStorageAddress()).getAllowance(_msgsender, _spender);
    |    require((allowance > 0 && _value == 0) || (allowance == 0 && _value > 0));
    |
  at /home/jiaming/slither_fp_files/out11123.sol(1051)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |    require((allowance > 0 && _value == 0) || (allowance == 0 && _value > 0));
    |
  > |    CrydrStorageERC20Interface(getCrydrStorageAddress()).approve(_msgsender, _spender, _value);
    |
    |    if (isCrydrViewRegistered('erc20') == true) {
  at /home/jiaming/slither_fp_files/out11123.sol(1054)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |
    |    if (isCrydrViewRegistered('erc20') == true) {
  > |      CrydrViewERC20LoggableInterface(getCrydrViewAddress('erc20')).emitApprovalEvent(_msgsender, _spender, _value);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out11123.sol(1057)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |    whenContractNotPaused
    |  {
  > |    CrydrStorageERC20Interface(getCrydrStorageAddress()).transferFrom(_msgsender, _from, _to, _value);
    |
    |    if (isCrydrViewRegistered('erc20') == true) {
  at /home/jiaming/slither_fp_files/out11123.sol(1071)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |
    |    if (isCrydrViewRegistered('erc20') == true) {
  > |      CrydrViewERC20LoggableInterface(getCrydrViewAddress('erc20')).emitTransferEvent(_from, _to, _value);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out11123.sol(1074)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |
    |  function getAllowance(address _owner, address _spender) public constant returns (uint256 ) {
  > |    return CrydrStorageAllowanceInterface(getCrydrStorageAddress()).getAllowance(_owner, _spender);
    |  }
    |}
  at /home/jiaming/slither_fp_files/out11123.sol(1079)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |    // input parameters checked by the storage
    |
  > |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).decreaseBalance(_from, _value);
    |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).increaseBalance(_to, _value);
    |
  at /home/jiaming/slither_fp_files/out11123.sol(1123)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |
    |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).decreaseBalance(_from, _value);
  > |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).increaseBalance(_to, _value);
    |
    |    emit ForcedTransferEvent(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out11123.sol(1124)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |    emit ForcedTransferEvent(_from, _to, _value);
    |    if (isCrydrViewRegistered('erc20') == true) {
  > |      CrydrViewERC20LoggableInterface(getCrydrViewAddress('erc20')).emitTransferEvent(_from, _to, _value);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out11123.sol(1128)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |    // input parameters checked by the storage
    |
  > |    uint256 value = CrydrStorageBalanceInterface(getCrydrStorageAddress()).getBalance(_from);
    |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).decreaseBalance(_from, value);
    |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).increaseBalance(_to, value);
  at /home/jiaming/slither_fp_files/out11123.sol(1141)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |
    |    uint256 value = CrydrStorageBalanceInterface(getCrydrStorageAddress()).getBalance(_from);
  > |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).decreaseBalance(_from, value);
    |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).increaseBalance(_to, value);
    |
  at /home/jiaming/slither_fp_files/out11123.sol(1142)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |    uint256 value = CrydrStorageBalanceInterface(getCrydrStorageAddress()).getBalance(_from);
    |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).decreaseBalance(_from, value);
  > |    CrydrStorageBalanceInterface(getCrydrStorageAddress()).increaseBalance(_to, value);
    |
    |    emit ForcedTransferEvent(_from, _to, value);
  at /home/jiaming/slither_fp_files/out11123.sol(1143)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |    emit ForcedTransferEvent(_from, _to, value);
    |    if (isCrydrViewRegistered('erc20') == true) {
  > |      CrydrViewERC20LoggableInterface(getCrydrViewAddress('erc20')).emitTransferEvent(_from, _to, value);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out11123.sol(1147)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |    onlyAllowedManager('jnt_payable_service')
    |  {
  > |    CrydrStorageERC20Interface(getCrydrStorageAddress()).transfer(_from, _to, _value);
    |
    |    emit JNTChargedEvent(msg.sender, _from, _to, _value);
  at /home/jiaming/slither_fp_files/out11123.sol(1186)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JNTController':
    |    emit JNTChargedEvent(msg.sender, _from, _to, _value);
    |    if (isCrydrViewRegistered('erc20') == true) {
  > |      CrydrViewERC20LoggableInterface(getCrydrViewAddress('erc20')).emitTransferEvent(_from, _to, _value);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out11123.sol(1190)

[33mWarning[0m for UnrestrictedWrite in contract 'JNTController':
    |    require (_proposedOwner != address(this));
    |
  > |    proposedOwner = _proposedOwner;
    |
    |    emit OwnershipOfferCreatedEvent(owner, _proposedOwner);
  at /home/jiaming/slither_fp_files/out11123.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'JNTController':
    |
    |    address _oldOwner = owner;
  > |    owner = proposedOwner;
    |    proposedOwner = address(0x0);
    |
  at /home/jiaming/slither_fp_files/out11123.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'JNTController':
    |    address _oldOwner = owner;
    |    owner = proposedOwner;
  > |    proposedOwner = address(0x0);
    |
    |    emit OwnerAssignedEvent(owner);
  at /home/jiaming/slither_fp_files/out11123.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'JNTController':
    |
    |    address _oldProposedOwner = proposedOwner;
  > |    proposedOwner = address(0x0);
    |
    |    emit OwnershipOfferCancelledEvent(owner, _oldProposedOwner);
  at /home/jiaming/slither_fp_files/out11123.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'JNTController':
    |    require(managerEnabled[_manager] == false);
    |
  > |    managerEnabled[_manager] = true;
    |
    |    emit ManagerEnabledEvent(_manager);
  at /home/jiaming/slither_fp_files/out11123.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'JNTController':
    |    require(managerEnabled[_manager] == true);
    |
  > |    managerEnabled[_manager] = false;
    |
    |    emit ManagerDisabledEvent(_manager);
  at /home/jiaming/slither_fp_files/out11123.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'JNTController':
    |    require(managerPermissions[_manager][_permissionName] == false);
    |
  > |    managerPermissions[_manager][_permissionName] = true;
    |
    |    emit ManagerPermissionGrantedEvent(_manager, keccak256(_permissionName));
  at /home/jiaming/slither_fp_files/out11123.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'JNTController':
    |    require(managerPermissions[_manager][_permissionName] == true);
    |
  > |    managerPermissions[_manager][_permissionName] = false;
    |
    |    emit ManagerPermissionRevokedEvent(_manager, keccak256(_permissionName));
  at /home/jiaming/slither_fp_files/out11123.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'JNTController':
    |   */
    |  function pauseContract() public onlyAllowedManager('pause_contract') whenContractNotPaused {
  > |    paused = true;
    |    emit PauseEvent();
    |  }
  at /home/jiaming/slither_fp_files/out11123.sol(465)

[33mWarning[0m for UnrestrictedWrite in contract 'JNTController':
    |   */
    |  function unpauseContract() public onlyAllowedManager('unpause_contract') whenContractPaused {
  > |    paused = false;
    |    emit UnpauseEvent();
    |  }
  at /home/jiaming/slither_fp_files/out11123.sol(473)

[33mWarning[0m for UnrestrictedWrite in contract 'JNTController':
    |    require(underExecution == false);
    |
  > |    underExecution = true; // Avoid recursive calling
    |    _target.call.gas(_suppliedGas).value(_ethValue)(_transactionBytecode);
    |    underExecution = false;
  at /home/jiaming/slither_fp_files/out11123.sol(537)

[33mWarning[0m for UnrestrictedWrite in contract 'JNTController':
    |    underExecution = true; // Avoid recursive calling
    |    _target.call.gas(_suppliedGas).value(_ethValue)(_transactionBytecode);
  > |    underExecution = false;
    |
    |    emit CallExecutedEvent(_target, _suppliedGas, _ethValue, keccak256(_transactionBytecode));
  at /home/jiaming/slither_fp_files/out11123.sol(539)

[33mWarning[0m for UnrestrictedWrite in contract 'JNTController':
    |    require(underExecution == false);
    |
  > |    underExecution = true; // Avoid recursive calling
    |    _target.delegatecall.gas(_suppliedGas)(_transactionBytecode);
    |    underExecution = false;
  at /home/jiaming/slither_fp_files/out11123.sol(554)

[33mWarning[0m for UnrestrictedWrite in contract 'JNTController':
    |    underExecution = true; // Avoid recursive calling
    |    _target.delegatecall.gas(_suppliedGas)(_transactionBytecode);
  > |    underExecution = false;
    |
    |    emit DelegatecallExecutedEvent(_target, _suppliedGas, keccak256(_transactionBytecode));
  at /home/jiaming/slither_fp_files/out11123.sol(556)

[33mWarning[0m for UnrestrictedWrite in contract 'JNTController':
    |    require(_crydrStorage != address(crydrStorage));
    |
  > |    crydrStorage = _crydrStorage;
    |
    |    emit CrydrStorageChangedEvent(_crydrStorage);
  at /home/jiaming/slither_fp_files/out11123.sol(762)

[33mWarning[0m for UnrestrictedWrite in contract 'JNTController':
    |    require(standardNameHash == keccak256(_viewApiStandardName));
    |
  > |    crydrViewsAddresses[_viewApiStandardName] = _newCrydrView;
    |    isRegisteredView[_newCrydrView] = true;
    |
  at /home/jiaming/slither_fp_files/out11123.sol(788)

[33mWarning[0m for UnrestrictedWrite in contract 'JNTController':
    |
    |    crydrViewsAddresses[_viewApiStandardName] = _newCrydrView;
  > |    isRegisteredView[_newCrydrView] = true;
    |
    |    emit CrydrViewAddedEvent(_newCrydrView, keccak256(_viewApiStandardName));
  at /home/jiaming/slither_fp_files/out11123.sol(789)

[33mWarning[0m for UnrestrictedWrite in contract 'JNTController':
    |    // make changes to the storage
    |    crydrViewsAddresses[_viewApiStandardName] == address(0x0);
  > |    isRegisteredView[removedView] = false;
    |
    |    emit CrydrViewRemovedEvent(removedView, keccak256(_viewApiStandardName));
  at /home/jiaming/slither_fp_files/out11123.sol(808)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable is OwnableInterface {
    |
    |  /* Storage */
  at /home/jiaming/slither_fp_files/out11123.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _proposedOwner The address to transfer ownership to.
    |   */
  > |  function createOwnershipOffer(address _proposedOwner) external onlyOwner {
    |    require (proposedOwner == address(0x0));
    |    require (_proposedOwner != address(0x0));
  at /home/jiaming/slither_fp_files/out11123.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   */
    |  //noinspection UnprotectedFunction
  > |  function acceptOwnershipOffer() external {
    |    require (proposedOwner != address(0x0));
    |    require (msg.sender == proposedOwner);
  at /home/jiaming/slither_fp_files/out11123.sol(165)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev Old owner cancels transfer ownership to the new owner.
    |   */
  > |  function cancelOwnershipOffer() external {
    |    require (proposedOwner != address(0x0));
    |    require (msg.sender == owner || msg.sender == proposedOwner);
  at /home/jiaming/slither_fp_files/out11123.sol(181)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev The getter for "owner" contract variable
    |   */
  > |  function getOwner() public constant returns (address) {
    |    return owner;
    |  }
  at /home/jiaming/slither_fp_files/out11123.sol(195)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev The getter for "proposedOwner" contract variable
    |   */
  > |  function getProposedOwner() public constant returns (address) {
    |    return proposedOwner;
    |  }
  at /home/jiaming/slither_fp_files/out11123.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require (_proposedOwner != address(this));
    |
  > |    proposedOwner = _proposedOwner;
    |
    |    emit OwnershipOfferCreatedEvent(owner, _proposedOwner);
  at /home/jiaming/slither_fp_files/out11123.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |
    |    address _oldOwner = owner;
  > |    owner = proposedOwner;
    |    proposedOwner = address(0x0);
    |
  at /home/jiaming/slither_fp_files/out11123.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    address _oldOwner = owner;
    |    owner = proposedOwner;
  > |    proposedOwner = address(0x0);
    |
    |    emit OwnerAssignedEvent(owner);
  at /home/jiaming/slither_fp_files/out11123.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |
    |    address _oldProposedOwner = proposedOwner;
  > |    proposedOwner = address(0x0);
    |
    |    emit OwnershipOfferCancelledEvent(owner, _oldProposedOwner);
  at /home/jiaming/slither_fp_files/out11123.sol(186)


