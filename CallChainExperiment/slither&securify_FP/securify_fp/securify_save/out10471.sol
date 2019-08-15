Processing contract: /home/jiaming/slither_fp_files/out10471.sol:ATXICOToken
Processing contract: /home/jiaming/slither_fp_files/out10471.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/slither_fp_files/out10471.sol:Controlled
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10471.sol:ERC20Basic
Processing contract: /home/jiaming/slither_fp_files/out10471.sol:HEX
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10471.sol:HEXCrowdSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10471.sol:KYC
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10471.sol:MiniMeToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10471.sol:MiniMeTokenFactory
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10471.sol:Ownerable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10471.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10471.sol:TokenController
[33mWarning[0m for LockedEther in contract 'Controlled':
    |// File: contracts/token/Controlled.sol
    |
  > |contract Controlled {
    |    /// @notice The address of the controller is the only address that can call
    |    ///  a function with this modifier
  at /home/jiaming/slither_fp_files/out10471.sol(218)

[31mViolation[0m for MissingInputValidation in contract 'Controlled':
    |    /// @notice Changes the controller of the contract
    |    /// @param _newController The new controller of the contract
  > |    function changeController(address _newController) public onlyController {
    |        controller = _newController;
    |    }
  at /home/jiaming/slither_fp_files/out10471.sol(229)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    |    modifier onlyController { require(msg.sender == controller); _; }
    |
  > |    address public controller;
    |
    |    constructor() public { controller = msg.sender;}
  at /home/jiaming/slither_fp_files/out10471.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) public onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out10471.sol(230)

[33mWarning[0m for DAO in contract 'HEX':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/slither_fp_files/out10471.sol(744)

[33mWarning[0m for DAOConstantGas in contract 'HEX':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer( address(this).balance);
    |            return;
    |        }
  at /home/jiaming/slither_fp_files/out10471.sol(877)

[33mWarning[0m for LockedEther in contract 'HEX':
    |// File: contracts/HEX.sol
    |
  > |contract HEX is MiniMeToken {
    |    mapping (address => bool) public blacklisted;
    |    bool public generateFinished;
  at /home/jiaming/slither_fp_files/out10471.sol(826)

[31mViolation[0m for TODAmount in contract 'HEX':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer( address(this).balance);
    |            return;
    |        }
  at /home/jiaming/slither_fp_files/out10471.sol(877)

[31mViolation[0m for TODReceiver in contract 'HEX':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/slither_fp_files/out10471.sol(744)

[31mViolation[0m for TODReceiver in contract 'HEX':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer( address(this).balance);
    |            return;
    |        }
  at /home/jiaming/slither_fp_files/out10471.sol(877)

[33mWarning[0m for UnhandledException in contract 'HEX':
    |           // Alerts the token controller of the transfer
    |           if (isContract(controller)) {
  > |               require(TokenController(controller).onTransfer(_from, _to, _amount));
    |           }
    |
  at /home/jiaming/slither_fp_files/out10471.sol(446)

[33mWarning[0m for UnhandledException in contract 'HEX':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            require(TokenController(controller).onApprove(msg.sender, _spender, _amount));
    |        }
    |
  at /home/jiaming/slither_fp_files/out10471.sol(488)

[33mWarning[0m for UnhandledException in contract 'HEX':
    |        require(approve(_spender, _amount));
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/slither_fp_files/out10471.sol(517)

[33mWarning[0m for UnhandledException in contract 'HEX':
    |            || (balances[_owner][0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                // Has no parent
  at /home/jiaming/slither_fp_files/out10471.sol(553)

[33mWarning[0m for UnhandledException in contract 'HEX':
    |            || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                return 0;
  at /home/jiaming/slither_fp_files/out10471.sol(578)

[33mWarning[0m for UnhandledException in contract 'HEX':
    |        ) public returns(address) {
    |        if (_snapshotBlock == 0) _snapshotBlock = block.number;
  > |        MiniMeToken cloneToken = tokenFactory.createCloneToken(
    |            this,
    |            _snapshotBlock,
  at /home/jiaming/slither_fp_files/out10471.sol(611)

[33mWarning[0m for UnhandledException in contract 'HEX':
    |            );
    |
  > |        cloneToken.changeController(msg.sender);
    |
    |        // An event to make the token easy to find on the blockchain
  at /home/jiaming/slither_fp_files/out10471.sol(620)

[33mWarning[0m for UnhandledException in contract 'HEX':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/slither_fp_files/out10471.sol(744)

[33mWarning[0m for UnhandledException in contract 'HEX':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer( address(this).balance);
    |            return;
    |        }
  at /home/jiaming/slither_fp_files/out10471.sol(877)

[33mWarning[0m for UnhandledException in contract 'HEX':
    |
    |        MiniMeToken token = MiniMeToken(_token);
  > |        uint balance = token.balanceOf(address(this));
    |        token.transfer(controller, balance);
    |
  at /home/jiaming/slither_fp_files/out10471.sol(882)

[33mWarning[0m for UnhandledException in contract 'HEX':
    |        MiniMeToken token = MiniMeToken(_token);
    |        uint balance = token.balanceOf(address(this));
  > |        token.transfer(controller, balance);
    |
    |        emit ClaimedTokens(_token, controller, balance);
  at /home/jiaming/slither_fp_files/out10471.sol(883)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HEX':
    |           // Alerts the token controller of the transfer
    |           if (isContract(controller)) {
  > |               require(TokenController(controller).onTransfer(_from, _to, _amount));
    |           }
    |
  at /home/jiaming/slither_fp_files/out10471.sol(446)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HEX':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            require(TokenController(controller).onApprove(msg.sender, _spender, _amount));
    |        }
    |
  at /home/jiaming/slither_fp_files/out10471.sol(488)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HEX':
    |        require(approve(_spender, _amount));
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/slither_fp_files/out10471.sol(517)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HEX':
    |            || (balances[_owner][0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                // Has no parent
  at /home/jiaming/slither_fp_files/out10471.sol(553)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HEX':
    |            || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                return 0;
  at /home/jiaming/slither_fp_files/out10471.sol(578)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HEX':
    |        ) public returns(address) {
    |        if (_snapshotBlock == 0) _snapshotBlock = block.number;
  > |        MiniMeToken cloneToken = tokenFactory.createCloneToken(
    |            this,
    |            _snapshotBlock,
  at /home/jiaming/slither_fp_files/out10471.sol(611)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HEX':
    |            );
    |
  > |        cloneToken.changeController(msg.sender);
    |
    |        // An event to make the token easy to find on the blockchain
  at /home/jiaming/slither_fp_files/out10471.sol(620)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HEX':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/slither_fp_files/out10471.sol(744)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HEX':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer( address(this).balance);
    |            return;
    |        }
  at /home/jiaming/slither_fp_files/out10471.sol(877)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HEX':
    |
    |        MiniMeToken token = MiniMeToken(_token);
  > |        uint balance = token.balanceOf(address(this));
    |        token.transfer(controller, balance);
    |
  at /home/jiaming/slither_fp_files/out10471.sol(882)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HEX':
    |        MiniMeToken token = MiniMeToken(_token);
    |        uint balance = token.balanceOf(address(this));
  > |        token.transfer(controller, balance);
    |
    |        emit ClaimedTokens(_token, controller, balance);
  at /home/jiaming/slither_fp_files/out10471.sol(883)

[33mWarning[0m for UnrestrictedWrite in contract 'HEX':
    |            // The standard ERC 20 transferFrom functionality
    |            require (allowed[_from][msg.sender] >= _amount);
  > |            allowed[_from][msg.sender] -= _amount;
    |        }
    |        return doTransfer(_from, _to, _amount);
  at /home/jiaming/slither_fp_files/out10471.sol(413)

[33mWarning[0m for UnrestrictedWrite in contract 'HEX':
    |        }
    |
  > |        allowed[msg.sender][_spender] = _amount;
    |        emit Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/slither_fp_files/out10471.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'HEX':
    |        || (checkpoints[checkpoints.length -1].fromBlock < block.number)) {
    |               Checkpoint storage newCheckPoint = checkpoints[ checkpoints.length++ ];
  > |               newCheckPoint.fromBlock =  uint128(block.number);
    |               newCheckPoint.value = uint128(_value);
    |           } else {
  at /home/jiaming/slither_fp_files/out10471.sol(714)

[33mWarning[0m for UnrestrictedWrite in contract 'HEX':
    |               Checkpoint storage newCheckPoint = checkpoints[ checkpoints.length++ ];
    |               newCheckPoint.fromBlock =  uint128(block.number);
  > |               newCheckPoint.value = uint128(_value);
    |           } else {
    |               Checkpoint storage oldCheckPoint = checkpoints[checkpoints.length-1];
  at /home/jiaming/slither_fp_files/out10471.sol(715)

[33mWarning[0m for UnrestrictedWrite in contract 'HEX':
    |           } else {
    |               Checkpoint storage oldCheckPoint = checkpoints[checkpoints.length-1];
  > |               oldCheckPoint.value = uint128(_value);
    |           }
    |    }
  at /home/jiaming/slither_fp_files/out10471.sol(718)

[33mWarning[0m for UnrestrictedWrite in contract 'HEX':
    |// File: contracts/HEX.sol
    |
  > |contract HEX is MiniMeToken {
    |    mapping (address => bool) public blacklisted;
    |    bool public generateFinished;
  at /home/jiaming/slither_fp_files/out10471.sol(826)

[33mWarning[0m for UnrestrictedWrite in contract 'HEX':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) public onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out10471.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'HEX':
    |    /// @param _transfersEnabled True if transfers are allowed in the clone
    |    function enableTransfers(bool _transfersEnabled) public onlyController {
  > |        transfersEnabled = _transfersEnabled;
    |    }
    |
  at /home/jiaming/slither_fp_files/out10471.sol(671)

[33mWarning[0m for UnrestrictedWrite in contract 'HEX':
    |
    |    function finishGenerating() public onlyController returns (bool) {
  > |        generateFinished = true;
    |        return true;
    |    }
  at /home/jiaming/slither_fp_files/out10471.sol(853)

[33mWarning[0m for UnrestrictedWrite in contract 'HEX':
    |
    |    function blacklistAccount(address tokenOwner) public onlyController returns (bool success) {
  > |        blacklisted[tokenOwner] = true;
    |        return true;
    |    }
  at /home/jiaming/slither_fp_files/out10471.sol(858)

[33mWarning[0m for UnrestrictedWrite in contract 'HEX':
    |
    |    function unBlacklistAccount(address tokenOwner) public onlyController returns (bool success) {
  > |        blacklisted[tokenOwner] = false;
    |        return true;
    |    }
  at /home/jiaming/slither_fp_files/out10471.sol(863)

[33mWarning[0m for DAOConstantGas in contract 'KYC':
    |
    |    if (_token == 0x0) {
  > |        owner.transfer( address(this).balance );
    |        return;
    |    }
  at /home/jiaming/slither_fp_files/out10471.sol(204)

[33mWarning[0m for LockedEther in contract 'KYC':
    | * Admins can register account, and the reason why
    | */
  > |contract KYC is Ownerable {
    |  // check the address is registered for token sale
    |  mapping (address => bool) public registeredAddress;
  at /home/jiaming/slither_fp_files/out10471.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'KYC':
    |    /// @notice Changes the owner of the contract
    |    /// @param _newOwner The new owner of the contract
  > |    function setOwner(address _newOwner) public onlyOwner {
    |        owner = _newOwner;
    |    }
  at /home/jiaming/slither_fp_files/out10471.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'KYC':
    |contract KYC is Ownerable {
    |  // check the address is registered for token sale
  > |  mapping (address => bool) public registeredAddress;
    |
    |  // check the address is admin of kyc contract
  at /home/jiaming/slither_fp_files/out10471.sol(93)

[31mViolation[0m for MissingInputValidation in contract 'KYC':
    |
    |  // check the address is admin of kyc contract
  > |  mapping (address => bool) public admin;
    |
    |  event Registered(address indexed _addr);
  at /home/jiaming/slither_fp_files/out10471.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'KYC':
    |   * @param _addr address The address to unregister for token sale
    |   */
  > |  function unregister(address _addr)
    |    public
    |    onlyAdmin
  at /home/jiaming/slither_fp_files/out10471.sol(174)

[33mWarning[0m for MissingInputValidation in contract 'KYC':
    |    modifier onlyOwner { require(msg.sender == owner); _; }
    |
  > |    address public owner;
    |
    |    constructor() public { owner = msg.sender;}
  at /home/jiaming/slither_fp_files/out10471.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'KYC':
    |   * @param _addr address The address to set as admin of KYC contract
    |   */
  > |  function setAdmin(address _addr)
    |    public
    |    onlyOwner
  at /home/jiaming/slither_fp_files/out10471.sol(128)

[33mWarning[0m for MissingInputValidation in contract 'KYC':
    |   * @param _addr address The address to register for token sale
    |   */
  > |  function register(address _addr)
    |    public
    |    onlyAdmin
  at /home/jiaming/slither_fp_files/out10471.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'KYC':
    |   * @param _addrs address[] The addresses to register for token sale
    |   */
  > |  function registerByList(address[] _addrs)
    |    public
    |    onlyAdmin
  at /home/jiaming/slither_fp_files/out10471.sol(157)

[33mWarning[0m for MissingInputValidation in contract 'KYC':
    |   * @param _addrs address[] The addresses to unregister for token sale
    |   */
  > |  function unregisterByList(address[] _addrs)
    |    public
    |    onlyAdmin
  at /home/jiaming/slither_fp_files/out10471.sol(188)

[33mWarning[0m for MissingInputValidation in contract 'KYC':
    |  }
    |
  > |  function claimTokens(address _token) public onlyOwner {
    |
    |    if (_token == 0x0) {
  at /home/jiaming/slither_fp_files/out10471.sol(201)

[31mViolation[0m for TODAmount in contract 'KYC':
    |
    |    if (_token == 0x0) {
  > |        owner.transfer( address(this).balance );
    |        return;
    |    }
  at /home/jiaming/slither_fp_files/out10471.sol(204)

[31mViolation[0m for TODReceiver in contract 'KYC':
    |
    |    if (_token == 0x0) {
  > |        owner.transfer( address(this).balance );
    |        return;
    |    }
  at /home/jiaming/slither_fp_files/out10471.sol(204)

[33mWarning[0m for UnhandledException in contract 'KYC':
    |
    |    if (_token == 0x0) {
  > |        owner.transfer( address(this).balance );
    |        return;
    |    }
  at /home/jiaming/slither_fp_files/out10471.sol(204)

[33mWarning[0m for UnhandledException in contract 'KYC':
    |
    |    ERC20Basic token = ERC20Basic(_token);
  > |    uint256 balance = token.balanceOf(this);
    |    token.transfer(owner, balance);
    |
  at /home/jiaming/slither_fp_files/out10471.sol(209)

[33mWarning[0m for UnhandledException in contract 'KYC':
    |    ERC20Basic token = ERC20Basic(_token);
    |    uint256 balance = token.balanceOf(this);
  > |    token.transfer(owner, balance);
    |
    |    emit ClaimedTokens(_token, owner, balance);
  at /home/jiaming/slither_fp_files/out10471.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KYC':
    |
    |    if (_token == 0x0) {
  > |        owner.transfer( address(this).balance );
    |        return;
    |    }
  at /home/jiaming/slither_fp_files/out10471.sol(204)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KYC':
    |
    |    ERC20Basic token = ERC20Basic(_token);
  > |    uint256 balance = token.balanceOf(this);
    |    token.transfer(owner, balance);
    |
  at /home/jiaming/slither_fp_files/out10471.sol(209)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KYC':
    |    ERC20Basic token = ERC20Basic(_token);
    |    uint256 balance = token.balanceOf(this);
  > |    token.transfer(owner, balance);
    |
    |    emit ClaimedTokens(_token, owner, balance);
  at /home/jiaming/slither_fp_files/out10471.sol(210)

[31mViolation[0m for UnrestrictedWrite in contract 'KYC':
    |    require(_addr != address(0) && registeredAddress[_addr] == false);
    |
  > |    registeredAddress[_addr] = true;
    |
    |    emit Registered(_addr);
  at /home/jiaming/slither_fp_files/out10471.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'KYC':
    |    onlyRegistered(_addr)
    |  {
  > |    registeredAddress[_addr] = false;
    |
    |    emit Unregistered(_addr);
  at /home/jiaming/slither_fp_files/out10471.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'KYC':
    |    /// @param _newOwner The new owner of the contract
    |    function setOwner(address _newOwner) public onlyOwner {
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out10471.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'KYC':
    |  {
    |    require(_addr != address(0) && admin[_addr] == false);
  > |    admin[_addr] = true;
    |
    |    emit NewAdmin(_addr);
  at /home/jiaming/slither_fp_files/out10471.sol(133)

[33mWarning[0m for DAO in contract 'MiniMeToken':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/slither_fp_files/out10471.sol(744)

[33mWarning[0m for DAOConstantGas in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer( address(this).balance);
    |            return;
    |        }
  at /home/jiaming/slither_fp_files/out10471.sol(757)

[33mWarning[0m for LockedEther in contract 'MiniMeToken':
    |///  that deploys the contract, so usually this token will be deployed by a
    |///  token controller contract, which Giveth will call a "Campaign"
  > |contract MiniMeToken is Controlled {
    |
    |    string public name;                //The Token's name: e.g. DigixDAO Tokens
  at /home/jiaming/slither_fp_files/out10471.sol(297)

[31mViolation[0m for TODAmount in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer( address(this).balance);
    |            return;
    |        }
  at /home/jiaming/slither_fp_files/out10471.sol(757)

[31mViolation[0m for TODReceiver in contract 'MiniMeToken':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/slither_fp_files/out10471.sol(744)

[31mViolation[0m for TODReceiver in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer( address(this).balance);
    |            return;
    |        }
  at /home/jiaming/slither_fp_files/out10471.sol(757)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |           // Alerts the token controller of the transfer
    |           if (isContract(controller)) {
  > |               require(TokenController(controller).onTransfer(_from, _to, _amount));
    |           }
    |
  at /home/jiaming/slither_fp_files/out10471.sol(446)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            require(TokenController(controller).onApprove(msg.sender, _spender, _amount));
    |        }
    |
  at /home/jiaming/slither_fp_files/out10471.sol(488)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        require(approve(_spender, _amount));
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/slither_fp_files/out10471.sol(517)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |            || (balances[_owner][0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                // Has no parent
  at /home/jiaming/slither_fp_files/out10471.sol(553)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |            || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                return 0;
  at /home/jiaming/slither_fp_files/out10471.sol(578)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        ) public returns(address) {
    |        if (_snapshotBlock == 0) _snapshotBlock = block.number;
  > |        MiniMeToken cloneToken = tokenFactory.createCloneToken(
    |            this,
    |            _snapshotBlock,
  at /home/jiaming/slither_fp_files/out10471.sol(611)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |            );
    |
  > |        cloneToken.changeController(msg.sender);
    |
    |        // An event to make the token easy to find on the blockchain
  at /home/jiaming/slither_fp_files/out10471.sol(620)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/slither_fp_files/out10471.sol(744)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer( address(this).balance);
    |            return;
    |        }
  at /home/jiaming/slither_fp_files/out10471.sol(757)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |
    |        MiniMeToken token = MiniMeToken(_token);
  > |        uint balance = token.balanceOf(this);
    |        token.transfer(controller, balance);
    |        emit ClaimedTokens(_token, controller, balance);
  at /home/jiaming/slither_fp_files/out10471.sol(762)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        MiniMeToken token = MiniMeToken(_token);
    |        uint balance = token.balanceOf(this);
  > |        token.transfer(controller, balance);
    |        emit ClaimedTokens(_token, controller, balance);
    |    }
  at /home/jiaming/slither_fp_files/out10471.sol(763)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |           // Alerts the token controller of the transfer
    |           if (isContract(controller)) {
  > |               require(TokenController(controller).onTransfer(_from, _to, _amount));
    |           }
    |
  at /home/jiaming/slither_fp_files/out10471.sol(446)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            require(TokenController(controller).onApprove(msg.sender, _spender, _amount));
    |        }
    |
  at /home/jiaming/slither_fp_files/out10471.sol(488)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        require(approve(_spender, _amount));
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/slither_fp_files/out10471.sol(517)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |            || (balances[_owner][0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                // Has no parent
  at /home/jiaming/slither_fp_files/out10471.sol(553)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |            || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                return 0;
  at /home/jiaming/slither_fp_files/out10471.sol(578)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        ) public returns(address) {
    |        if (_snapshotBlock == 0) _snapshotBlock = block.number;
  > |        MiniMeToken cloneToken = tokenFactory.createCloneToken(
    |            this,
    |            _snapshotBlock,
  at /home/jiaming/slither_fp_files/out10471.sol(611)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |            );
    |
  > |        cloneToken.changeController(msg.sender);
    |
    |        // An event to make the token easy to find on the blockchain
  at /home/jiaming/slither_fp_files/out10471.sol(620)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/slither_fp_files/out10471.sol(744)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer( address(this).balance);
    |            return;
    |        }
  at /home/jiaming/slither_fp_files/out10471.sol(757)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |
    |        MiniMeToken token = MiniMeToken(_token);
  > |        uint balance = token.balanceOf(this);
    |        token.transfer(controller, balance);
    |        emit ClaimedTokens(_token, controller, balance);
  at /home/jiaming/slither_fp_files/out10471.sol(762)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        MiniMeToken token = MiniMeToken(_token);
    |        uint balance = token.balanceOf(this);
  > |        token.transfer(controller, balance);
    |        emit ClaimedTokens(_token, controller, balance);
    |    }
  at /home/jiaming/slither_fp_files/out10471.sol(763)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |///  that deploys the contract, so usually this token will be deployed by a
    |///  token controller contract, which Giveth will call a "Campaign"
  > |contract MiniMeToken is Controlled {
    |
    |    string public name;                //The Token's name: e.g. DigixDAO Tokens
  at /home/jiaming/slither_fp_files/out10471.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |            // The standard ERC 20 transferFrom functionality
    |            require (allowed[_from][msg.sender] >= _amount);
  > |            allowed[_from][msg.sender] -= _amount;
    |        }
    |        return doTransfer(_from, _to, _amount);
  at /home/jiaming/slither_fp_files/out10471.sol(413)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |        }
    |
  > |        allowed[msg.sender][_spender] = _amount;
    |        emit Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/slither_fp_files/out10471.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |        || (checkpoints[checkpoints.length -1].fromBlock < block.number)) {
    |               Checkpoint storage newCheckPoint = checkpoints[ checkpoints.length++ ];
  > |               newCheckPoint.fromBlock =  uint128(block.number);
    |               newCheckPoint.value = uint128(_value);
    |           } else {
  at /home/jiaming/slither_fp_files/out10471.sol(714)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |               Checkpoint storage newCheckPoint = checkpoints[ checkpoints.length++ ];
    |               newCheckPoint.fromBlock =  uint128(block.number);
  > |               newCheckPoint.value = uint128(_value);
    |           } else {
    |               Checkpoint storage oldCheckPoint = checkpoints[checkpoints.length-1];
  at /home/jiaming/slither_fp_files/out10471.sol(715)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |           } else {
    |               Checkpoint storage oldCheckPoint = checkpoints[checkpoints.length-1];
  > |               oldCheckPoint.value = uint128(_value);
    |           }
    |    }
  at /home/jiaming/slither_fp_files/out10471.sol(718)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) public onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out10471.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |    /// @param _transfersEnabled True if transfers are allowed in the clone
    |    function enableTransfers(bool _transfersEnabled) public onlyController {
  > |        transfersEnabled = _transfersEnabled;
    |    }
    |
  at /home/jiaming/slither_fp_files/out10471.sol(671)

[33mWarning[0m for LockedEther in contract 'MiniMeTokenFactory':
    |///  In solidity this is the way to create a contract from a contract of the
    |///  same class
  > |contract MiniMeTokenFactory {
    |
    |    /// @notice Update the DApp by creating a new token with new functionalities
  at /home/jiaming/slither_fp_files/out10471.sol(789)

[31mViolation[0m for MissingInputValidation in contract 'MiniMeTokenFactory':
    |    /// @param _transfersEnabled If true, tokens will be able to be transferred
    |    /// @return The address of the new token contract
  > |    function createCloneToken(
    |        address _parentToken,
    |        uint _snapshotBlock,
  at /home/jiaming/slither_fp_files/out10471.sol(801)

[33mWarning[0m for MissingInputValidation in contract 'MiniMeTokenFactory':
    |///  In solidity this is the way to create a contract from a contract of the
    |///  same class
  > |contract MiniMeTokenFactory {
    |
    |    /// @notice Update the DApp by creating a new token with new functionalities
  at /home/jiaming/slither_fp_files/out10471.sol(789)

[33mWarning[0m for UnhandledException in contract 'MiniMeTokenFactory':
    |            );
    |
  > |        newToken.changeController(msg.sender);
    |        return newToken;
    |    }
  at /home/jiaming/slither_fp_files/out10471.sol(819)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeTokenFactory':
    |            );
    |
  > |        newToken.changeController(msg.sender);
    |        return newToken;
    |    }
  at /home/jiaming/slither_fp_files/out10471.sol(819)

[33mWarning[0m for LockedEther in contract 'Ownerable':
    |// File: contracts/Ownerable.sol
    |
  > |contract Ownerable {
    |    /// @notice The address of the owner is the only address that can call
    |    ///  a function with this modifier
  at /home/jiaming/slither_fp_files/out10471.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'Ownerable':
    |    /// @notice Changes the owner of the contract
    |    /// @param _newOwner The new owner of the contract
  > |    function setOwner(address _newOwner) public onlyOwner {
    |        owner = _newOwner;
    |    }
  at /home/jiaming/slither_fp_files/out10471.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Ownerable':
    |    modifier onlyOwner { require(msg.sender == owner); _; }
    |
  > |    address public owner;
    |
    |    constructor() public { owner = msg.sender;}
  at /home/jiaming/slither_fp_files/out10471.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownerable':
    |    /// @param _newOwner The new owner of the contract
    |    function setOwner(address _newOwner) public onlyOwner {
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out10471.sol(79)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |contract SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/slither_fp_files/out10471.sol(9)


