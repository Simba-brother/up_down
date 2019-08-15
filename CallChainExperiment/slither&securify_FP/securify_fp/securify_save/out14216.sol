Processing contract: /home/jiaming/slither_fp_files/out14216.sol:BBODServiceRegistry
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14216.sol:Custody
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14216.sol:CustodyStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14216.sol:ERC20
Processing contract: /home/jiaming/slither_fp_files/out14216.sol:ERC20Basic
Processing contract: /home/jiaming/slither_fp_files/out14216.sol:Insurance
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14216.sol:Manager
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14216.sol:ManagerInterface
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14216.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14216.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14216.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BBODServiceRegistry':
    |}
    |
  > |contract BBODServiceRegistry is Ownable {
    |
    |  //1. Manager
  at /home/jiaming/slither_fp_files/out14216.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'BBODServiceRegistry':
    |  //1. Manager
    |  //2. CustodyStorage
  > |  mapping(uint => address) public registry;
    |
    |    constructor(address _owner) {
  at /home/jiaming/slither_fp_files/out14216.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'BBODServiceRegistry':
    |    }
    |
  > |  function setServiceRegistryEntry (uint key, address entry) external onlyOwner {
    |    registry[key] = entry;
    |  }
  at /home/jiaming/slither_fp_files/out14216.sol(133)

[33mWarning[0m for MissingInputValidation in contract 'BBODServiceRegistry':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out14216.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'BBODServiceRegistry':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/slither_fp_files/out14216.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'BBODServiceRegistry':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out14216.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'BBODServiceRegistry':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out14216.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'BBODServiceRegistry':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'BBODServiceRegistry':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out14216.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'BBODServiceRegistry':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'BBODServiceRegistry':
    |
    |  function setServiceRegistryEntry (uint key, address entry) external onlyOwner {
  > |    registry[key] = entry;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(134)

[33mWarning[0m for DAOConstantGas in contract 'Custody':
    |
    |  function withdraw(uint _amount, address _recipient) external liveExchangeOrOwner(_recipient) {
  > |    _recipient.transfer(_amount);
    |  }
    |
  at /home/jiaming/slither_fp_files/out14216.sol(254)

[33mWarning[0m for LockedEther in contract 'Custody':
    |}
    |
  > |contract Custody {
    |
    |  using SafeMath for uint;
  at /home/jiaming/slither_fp_files/out14216.sol(218)

[31mViolation[0m for MissingInputValidation in contract 'Custody':
    |  }
    |
  > |  function withdraw(uint _amount, address _recipient) external liveExchangeOrOwner(_recipient) {
    |    _recipient.transfer(_amount);
    |  }
  at /home/jiaming/slither_fp_files/out14216.sol(253)

[31mViolation[0m for MissingInputValidation in contract 'Custody':
    |  }
    |
  > |  function transferToken(address _erc20Address, address _recipient, uint _amount)
    |    external liveExchangeOrOwner(_recipient) {
    |
  at /home/jiaming/slither_fp_files/out14216.sol(257)

[33mWarning[0m for MissingInputValidation in contract 'Custody':
    |  using SafeMath for uint;
    |
  > |  BBODServiceRegistry public bbodServiceRegistry;
    |  address public owner;
    |
  at /home/jiaming/slither_fp_files/out14216.sol(222)

[33mWarning[0m for MissingInputValidation in contract 'Custody':
    |
    |  BBODServiceRegistry public bbodServiceRegistry;
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/slither_fp_files/out14216.sol(223)

[33mWarning[0m for MissingInputValidation in contract 'Custody':
    |  }
    |
  > |  function transferOwnership(address newOwner) public {
    |    require(msg.sender == owner, "Only the owner can transfer ownership");
    |    require(newOwner != address(0));
  at /home/jiaming/slither_fp_files/out14216.sol(265)

[33mWarning[0m for TODAmount in contract 'Custody':
    |
    |  function withdraw(uint _amount, address _recipient) external liveExchangeOrOwner(_recipient) {
  > |    _recipient.transfer(_amount);
    |  }
    |
  at /home/jiaming/slither_fp_files/out14216.sol(254)

[33mWarning[0m for TODReceiver in contract 'Custody':
    |
    |  function withdraw(uint _amount, address _recipient) external liveExchangeOrOwner(_recipient) {
  > |    _recipient.transfer(_amount);
    |  }
    |
  at /home/jiaming/slither_fp_files/out14216.sol(254)

[33mWarning[0m for UnhandledException in contract 'Custody':
    |
    |  modifier liveExchangeOrOwner(address _recipient) {
  > |    var manager = ManagerInterface(bbodServiceRegistry.registry(1));
    |
    |    if (manager.isExchangeAlive()) {
  at /home/jiaming/slither_fp_files/out14216.sol(235)

[33mWarning[0m for UnhandledException in contract 'Custody':
    |    var manager = ManagerInterface(bbodServiceRegistry.registry(1));
    |
  > |    if (manager.isExchangeAlive()) {
    |
    |      require(msg.sender == address(manager));
  at /home/jiaming/slither_fp_files/out14216.sol(237)

[33mWarning[0m for UnhandledException in contract 'Custody':
    |      require(msg.sender == address(manager));
    |
  > |      if (manager.isDailySettlementOnGoing()) {
    |        require(_recipient == address(manager), "Only manager can do this when the settlement is ongoing");
    |      } else {
  at /home/jiaming/slither_fp_files/out14216.sol(241)

[33mWarning[0m for UnhandledException in contract 'Custody':
    |
    |  function withdraw(uint _amount, address _recipient) external liveExchangeOrOwner(_recipient) {
  > |    _recipient.transfer(_amount);
    |  }
    |
  at /home/jiaming/slither_fp_files/out14216.sol(254)

[33mWarning[0m for UnhandledException in contract 'Custody':
    |    ERC20 token = ERC20(_erc20Address);
    |
  > |    token.transfer(_recipient, _amount);
    |  }
    |
  at /home/jiaming/slither_fp_files/out14216.sol(262)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Custody':
    |
    |  modifier liveExchangeOrOwner(address _recipient) {
  > |    var manager = ManagerInterface(bbodServiceRegistry.registry(1));
    |
    |    if (manager.isExchangeAlive()) {
  at /home/jiaming/slither_fp_files/out14216.sol(235)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Custody':
    |    var manager = ManagerInterface(bbodServiceRegistry.registry(1));
    |
  > |    if (manager.isExchangeAlive()) {
    |
    |      require(msg.sender == address(manager));
  at /home/jiaming/slither_fp_files/out14216.sol(237)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Custody':
    |      require(msg.sender == address(manager));
    |
  > |      if (manager.isDailySettlementOnGoing()) {
    |        require(_recipient == address(manager), "Only manager can do this when the settlement is ongoing");
    |      } else {
  at /home/jiaming/slither_fp_files/out14216.sol(241)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Custody':
    |    ERC20 token = ERC20(_erc20Address);
    |
  > |    token.transfer(_recipient, _amount);
    |  }
    |
  at /home/jiaming/slither_fp_files/out14216.sol(262)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Custody':
    |
    |  function withdraw(uint _amount, address _recipient) external liveExchangeOrOwner(_recipient) {
  > |    _recipient.transfer(_amount);
    |  }
    |
  at /home/jiaming/slither_fp_files/out14216.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'Custody':
    |
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(270)

[33mWarning[0m for LockedEther in contract 'CustodyStorage':
    |
    |
  > |contract CustodyStorage {
    |
    |  BBODServiceRegistry public bbodServiceRegistry;
  at /home/jiaming/slither_fp_files/out14216.sol(275)

[31mViolation[0m for MissingInputValidation in contract 'CustodyStorage':
    |  BBODServiceRegistry public bbodServiceRegistry;
    |
  > |  mapping(address => bool) public custodiesMap;
    |
    |  //Number of all custodies in the contract
  at /home/jiaming/slither_fp_files/out14216.sol(279)

[31mViolation[0m for MissingInputValidation in contract 'CustodyStorage':
    |  }
    |
  > |  function addCustody(address _custody) external onlyManager {
    |    custodiesMap[_custody] = true;
    |    custodiesArray.push(_custody);
  at /home/jiaming/slither_fp_files/out14216.sol(297)

[33mWarning[0m for MissingInputValidation in contract 'CustodyStorage':
    |contract CustodyStorage {
    |
  > |  BBODServiceRegistry public bbodServiceRegistry;
    |
    |  mapping(address => bool) public custodiesMap;
  at /home/jiaming/slither_fp_files/out14216.sol(277)

[33mWarning[0m for MissingInputValidation in contract 'CustodyStorage':
    |
    |  //Number of all custodies in the contract
  > |  uint public custodyCounter = 0;
    |
    |  address[] public custodiesArray;
  at /home/jiaming/slither_fp_files/out14216.sol(282)

[33mWarning[0m for MissingInputValidation in contract 'CustodyStorage':
    |  uint public custodyCounter = 0;
    |
  > |  address[] public custodiesArray;
    |
    |  event CustodyRemoved(address indexed custody);
  at /home/jiaming/slither_fp_files/out14216.sol(284)

[33mWarning[0m for MissingInputValidation in contract 'CustodyStorage':
    |  }
    |
  > |  function removeCustody(address _custodyAddress, uint _arrayIndex) external onlyManager {
    |    require(custodiesArray[_arrayIndex] == _custodyAddress);
    |
  at /home/jiaming/slither_fp_files/out14216.sol(303)

[33mWarning[0m for UnhandledException in contract 'CustodyStorage':
    |
    |  modifier onlyManager() {
  > |    require(msg.sender == bbodServiceRegistry.registry(1));
    |    _;
    |  }
  at /home/jiaming/slither_fp_files/out14216.sol(293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CustodyStorage':
    |
    |  modifier onlyManager() {
  > |    require(msg.sender == bbodServiceRegistry.registry(1));
    |    _;
    |  }
  at /home/jiaming/slither_fp_files/out14216.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'CustodyStorage':
    |
    |/**
  > | * @title Ownable
    | * @dev The Ownable contract has an owner address, and provides basic authorization control
    | * functions, this simplifies the implementation of "user permissions".
  at /home/jiaming/slither_fp_files/out14216.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'CustodyStorage':
    |
    |  function addCustody(address _custody) external onlyManager {
  > |    custodiesMap[_custody] = true;
    |    custodiesArray.push(_custody);
    |    custodyCounter++;
  at /home/jiaming/slither_fp_files/out14216.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'CustodyStorage':
    |  function addCustody(address _custody) external onlyManager {
    |    custodiesMap[_custody] = true;
  > |    custodiesArray.push(_custody);
    |    custodyCounter++;
    |  }
  at /home/jiaming/slither_fp_files/out14216.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'CustodyStorage':
    |    custodiesMap[_custody] = true;
    |    custodiesArray.push(_custody);
  > |    custodyCounter++;
    |  }
    |
  at /home/jiaming/slither_fp_files/out14216.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'CustodyStorage':
    |    if (_arrayIndex == custodyCounter - 1) {
    |      //Removing last custody
  > |      custodiesMap[_custodyAddress] = false;
    |      emit CustodyRemoved(_custodyAddress);
    |      custodyCounter--;
  at /home/jiaming/slither_fp_files/out14216.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'CustodyStorage':
    |      custodiesMap[_custodyAddress] = false;
    |      emit CustodyRemoved(_custodyAddress);
  > |      custodyCounter--;
    |      return;
    |    }
  at /home/jiaming/slither_fp_files/out14216.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'CustodyStorage':
    |    }
    |
  > |    custodiesMap[_custodyAddress] = false;
    |    //Overwriting deleted custody with the last custody in the array
    |    custodiesArray[_arrayIndex] = custodiesArray[custodyCounter - 1];
  at /home/jiaming/slither_fp_files/out14216.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'CustodyStorage':
    |    custodiesMap[_custodyAddress] = false;
    |    //Overwriting deleted custody with the last custody in the array
  > |    custodiesArray[_arrayIndex] = custodiesArray[custodyCounter - 1];
    |    custodyCounter--;
    |
  at /home/jiaming/slither_fp_files/out14216.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'CustodyStorage':
    |    //Overwriting deleted custody with the last custody in the array
    |    custodiesArray[_arrayIndex] = custodiesArray[custodyCounter - 1];
  > |    custodyCounter--;
    |
    |    emit CustodyRemoved(_custodyAddress);
  at /home/jiaming/slither_fp_files/out14216.sol(317)

[33mWarning[0m for DAOConstantGas in contract 'Insurance':
    |
    |  function withdraw(uint _amount, address _recipient) external liveExchangeOrOwner(_recipient) {
  > |    _recipient.transfer(_amount);
    |  }
    |
  at /home/jiaming/slither_fp_files/out14216.sol(254)

[33mWarning[0m for DAOConstantGas in contract 'Insurance':
    |    require(manager.isDailySettlementOnGoing() && msg.sender == address(manager));
    |
  > |    address(manager).transfer(_amount);
    |  }
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(332)

[33mWarning[0m for LockedEther in contract 'Insurance':
    |  }
    |}
  > |contract Insurance is Custody {
    |
    |  constructor(address _serviceRegistryAddress, address _owner)
  at /home/jiaming/slither_fp_files/out14216.sol(322)

[31mViolation[0m for MissingInputValidation in contract 'Insurance':
    |  }
    |
  > |  function withdraw(uint _amount, address _recipient) external liveExchangeOrOwner(_recipient) {
    |    _recipient.transfer(_amount);
    |  }
  at /home/jiaming/slither_fp_files/out14216.sol(253)

[31mViolation[0m for MissingInputValidation in contract 'Insurance':
    |  }
    |
  > |  function transferToken(address _erc20Address, address _recipient, uint _amount)
    |    external liveExchangeOrOwner(_recipient) {
    |
  at /home/jiaming/slither_fp_files/out14216.sol(257)

[31mViolation[0m for MissingInputValidation in contract 'Insurance':
    |  Custody(_serviceRegistryAddress, _owner) public {}
    |
  > |  function useInsurance (uint _amount) external {
    |    var manager = ManagerInterface(bbodServiceRegistry.registry(1));
    |    //Only usable for manager during settlement
  at /home/jiaming/slither_fp_files/out14216.sol(327)

[33mWarning[0m for MissingInputValidation in contract 'Insurance':
    |  using SafeMath for uint;
    |
  > |  BBODServiceRegistry public bbodServiceRegistry;
    |  address public owner;
    |
  at /home/jiaming/slither_fp_files/out14216.sol(222)

[33mWarning[0m for MissingInputValidation in contract 'Insurance':
    |
    |  BBODServiceRegistry public bbodServiceRegistry;
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/slither_fp_files/out14216.sol(223)

[33mWarning[0m for MissingInputValidation in contract 'Insurance':
    |  }
    |
  > |  function transferOwnership(address newOwner) public {
    |    require(msg.sender == owner, "Only the owner can transfer ownership");
    |    require(newOwner != address(0));
  at /home/jiaming/slither_fp_files/out14216.sol(265)

[33mWarning[0m for TODAmount in contract 'Insurance':
    |
    |  function withdraw(uint _amount, address _recipient) external liveExchangeOrOwner(_recipient) {
  > |    _recipient.transfer(_amount);
    |  }
    |
  at /home/jiaming/slither_fp_files/out14216.sol(254)

[33mWarning[0m for TODAmount in contract 'Insurance':
    |    require(manager.isDailySettlementOnGoing() && msg.sender == address(manager));
    |
  > |    address(manager).transfer(_amount);
    |  }
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(332)

[33mWarning[0m for TODReceiver in contract 'Insurance':
    |
    |  function withdraw(uint _amount, address _recipient) external liveExchangeOrOwner(_recipient) {
  > |    _recipient.transfer(_amount);
    |  }
    |
  at /home/jiaming/slither_fp_files/out14216.sol(254)

[33mWarning[0m for TODReceiver in contract 'Insurance':
    |    require(manager.isDailySettlementOnGoing() && msg.sender == address(manager));
    |
  > |    address(manager).transfer(_amount);
    |  }
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(332)

[33mWarning[0m for UnhandledException in contract 'Insurance':
    |
    |  modifier liveExchangeOrOwner(address _recipient) {
  > |    var manager = ManagerInterface(bbodServiceRegistry.registry(1));
    |
    |    if (manager.isExchangeAlive()) {
  at /home/jiaming/slither_fp_files/out14216.sol(235)

[33mWarning[0m for UnhandledException in contract 'Insurance':
    |    var manager = ManagerInterface(bbodServiceRegistry.registry(1));
    |
  > |    if (manager.isExchangeAlive()) {
    |
    |      require(msg.sender == address(manager));
  at /home/jiaming/slither_fp_files/out14216.sol(237)

[33mWarning[0m for UnhandledException in contract 'Insurance':
    |      require(msg.sender == address(manager));
    |
  > |      if (manager.isDailySettlementOnGoing()) {
    |        require(_recipient == address(manager), "Only manager can do this when the settlement is ongoing");
    |      } else {
  at /home/jiaming/slither_fp_files/out14216.sol(241)

[33mWarning[0m for UnhandledException in contract 'Insurance':
    |
    |  function withdraw(uint _amount, address _recipient) external liveExchangeOrOwner(_recipient) {
  > |    _recipient.transfer(_amount);
    |  }
    |
  at /home/jiaming/slither_fp_files/out14216.sol(254)

[33mWarning[0m for UnhandledException in contract 'Insurance':
    |    ERC20 token = ERC20(_erc20Address);
    |
  > |    token.transfer(_recipient, _amount);
    |  }
    |
  at /home/jiaming/slither_fp_files/out14216.sol(262)

[33mWarning[0m for UnhandledException in contract 'Insurance':
    |
    |  function useInsurance (uint _amount) external {
  > |    var manager = ManagerInterface(bbodServiceRegistry.registry(1));
    |    //Only usable for manager during settlement
    |    require(manager.isDailySettlementOnGoing() && msg.sender == address(manager));
  at /home/jiaming/slither_fp_files/out14216.sol(328)

[33mWarning[0m for UnhandledException in contract 'Insurance':
    |    var manager = ManagerInterface(bbodServiceRegistry.registry(1));
    |    //Only usable for manager during settlement
  > |    require(manager.isDailySettlementOnGoing() && msg.sender == address(manager));
    |
    |    address(manager).transfer(_amount);
  at /home/jiaming/slither_fp_files/out14216.sol(330)

[33mWarning[0m for UnhandledException in contract 'Insurance':
    |    require(manager.isDailySettlementOnGoing() && msg.sender == address(manager));
    |
  > |    address(manager).transfer(_amount);
    |  }
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(332)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'Insurance':
    |    require(manager.isDailySettlementOnGoing() && msg.sender == address(manager));
    |
  > |    address(manager).transfer(_amount);
    |  }
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(332)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Insurance':
    |
    |  modifier liveExchangeOrOwner(address _recipient) {
  > |    var manager = ManagerInterface(bbodServiceRegistry.registry(1));
    |
    |    if (manager.isExchangeAlive()) {
  at /home/jiaming/slither_fp_files/out14216.sol(235)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Insurance':
    |    var manager = ManagerInterface(bbodServiceRegistry.registry(1));
    |
  > |    if (manager.isExchangeAlive()) {
    |
    |      require(msg.sender == address(manager));
  at /home/jiaming/slither_fp_files/out14216.sol(237)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Insurance':
    |      require(msg.sender == address(manager));
    |
  > |      if (manager.isDailySettlementOnGoing()) {
    |        require(_recipient == address(manager), "Only manager can do this when the settlement is ongoing");
    |      } else {
  at /home/jiaming/slither_fp_files/out14216.sol(241)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Insurance':
    |    ERC20 token = ERC20(_erc20Address);
    |
  > |    token.transfer(_recipient, _amount);
    |  }
    |
  at /home/jiaming/slither_fp_files/out14216.sol(262)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Insurance':
    |
    |  function useInsurance (uint _amount) external {
  > |    var manager = ManagerInterface(bbodServiceRegistry.registry(1));
    |    //Only usable for manager during settlement
    |    require(manager.isDailySettlementOnGoing() && msg.sender == address(manager));
  at /home/jiaming/slither_fp_files/out14216.sol(328)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Insurance':
    |    var manager = ManagerInterface(bbodServiceRegistry.registry(1));
    |    //Only usable for manager during settlement
  > |    require(manager.isDailySettlementOnGoing() && msg.sender == address(manager));
    |
    |    address(manager).transfer(_amount);
  at /home/jiaming/slither_fp_files/out14216.sol(330)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Insurance':
    |
    |  function withdraw(uint _amount, address _recipient) external liveExchangeOrOwner(_recipient) {
  > |    _recipient.transfer(_amount);
    |  }
    |
  at /home/jiaming/slither_fp_files/out14216.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'Insurance':
    |
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(270)

[33mWarning[0m for DAO in contract 'Manager':
    |function getTotalBalanceFor(address _custody) internal view returns (uint) {
    |
  > |var bbdHoldingsInWei = ((bbdToken.balanceOf(_custody) * gweiBBDPriceInWei) / gwei);
    |
    |return _custody.balance + bbdHoldingsInWei;
  at /home/jiaming/slither_fp_files/out14216.sol(661)

[31mViolation[0m for DAOConstantGas in contract 'Manager':
    |}
    |
  > |_custodies[flowIndex].transfer(uint(_flows[flowIndex]));
    |
    |} else if (_flows[flowIndex] < 0) {
  at /home/jiaming/slither_fp_files/out14216.sol(563)

[31mViolation[0m for DAOConstantGas in contract 'Manager':
    |
    |if(_fee > 0) {
  > |feeAccount.transfer(_fee);
    |totalFeeFlows = totalFeeFlows + _fee;
    |//100% rule for fee account
  at /home/jiaming/slither_fp_files/out14216.sol(575)

[31mViolation[0m for DAOConstantGas in contract 'Manager':
    |if(address(this).balance > preBatchBalance) {
    |uint leftovers = address(this).balance - preBatchBalance;
  > |insuranceAccount.transfer(leftovers);
    |totalInsuranceFlows += leftovers;
    |//100% rule for insurance account
  at /home/jiaming/slither_fp_files/out14216.sol(586)

[33mWarning[0m for DAOConstantGas in contract 'Manager':
    |function withdrawFromManager(uint _amount, address _recipient) external onlyExchangeOrOwner
    |whenNotPaused onlyAllowedInPhase(SettlementPhase.FINISHED) {
  > |_recipient.transfer(_amount);
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(483)

[33mWarning[0m for LockedEther in contract 'Manager':
    |}
    |
  > |contract Manager is Pausable {
    |using SafeMath for uint;
    |
  at /home/jiaming/slither_fp_files/out14216.sol(336)

[31mViolation[0m for MissingInputValidation in contract 'Manager':
    |using SafeMath for uint;
    |
  > |mapping(address => bool) public ownerAccountsMap;
    |mapping(address => bool) public exchangeAccountsMap;
    |
  at /home/jiaming/slither_fp_files/out14216.sol(339)

[31mViolation[0m for MissingInputValidation in contract 'Manager':
    |
    |mapping(address => bool) public ownerAccountsMap;
  > |mapping(address => bool) public exchangeAccountsMap;
    |
    |//SETTLEMENT PREPARATION####
  at /home/jiaming/slither_fp_files/out14216.sol(340)

[31mViolation[0m for MissingInputValidation in contract 'Manager':
    |uint public earliestNextSettlementTimestamp = 0;
    |
  > |mapping(uint => mapping(address => bool)) public custodiesServedETH;
    |mapping(uint => mapping(address => bool)) public custodiesServedBBD;
    |
  at /home/jiaming/slither_fp_files/out14216.sol(363)

[31mViolation[0m for MissingInputValidation in contract 'Manager':
    |
    |mapping(uint => mapping(address => bool)) public custodiesServedETH;
  > |mapping(uint => mapping(address => bool)) public custodiesServedBBD;
    |
    |address public feeAccount;
  at /home/jiaming/slither_fp_files/out14216.sol(364)

[31mViolation[0m for MissingInputValidation in contract 'Manager':
    |function() public payable {}
    |
  > |function setCustodyFactory(address _custodyFactory) external onlyOwner {
    |custodyFactory = _custodyFactory;
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(391)

[31mViolation[0m for MissingInputValidation in contract 'Manager':
    |}
    |
  > |function addOwnerAccount(address _exchangeAccount) external onlyOwner {
    |ownerAccountsMap[_exchangeAccount] = true;
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(436)

[31mViolation[0m for MissingInputValidation in contract 'Manager':
    |}
    |
  > |function addExchangeAccount(address _exchangeAccount) external onlyOwner whenNotPaused {
    |exchangeAccountsMap[_exchangeAccount] = true;
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(440)

[31mViolation[0m for MissingInputValidation in contract 'Manager':
    |}
    |
  > |function rmExchangeAccount(address _exchangeAccount) external onlyOwner whenNotPaused {
    |exchangeAccountsMap[_exchangeAccount] = false;
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(444)

[31mViolation[0m for MissingInputValidation in contract 'Manager':
    |}
    |
  > |function setBBDPrice(uint _priceInWei) external onlyExchangeOrOwner whenNotPaused
    |onlyAllowedInPhase(SettlementPhase.FINISHED) {
    |if(gweiBBDPriceInWei == 0) {
  at /home/jiaming/slither_fp_files/out14216.sol(448)

[31mViolation[0m for MissingInputValidation in contract 'Manager':
    |}
    |
  > |function createCustody(address _custody) external whenNotPaused onlyAllowedInPhase(SettlementPhase.FINISHED) {
    |require(msg.sender == custodyFactory);
    |custodyStorage.addCustody(_custody);
  at /home/jiaming/slither_fp_files/out14216.sol(468)

[31mViolation[0m for MissingInputValidation in contract 'Manager':
    |}
    |
  > |function removeCustody(address _custodyAddress, uint _arrayIndex) external whenNotPaused onlyExchangeOrOwner
    |onlyAllowedInPhase(SettlementPhase.FINISHED) {
    |custodyStorage.removeCustody(_custodyAddress, _arrayIndex);
  at /home/jiaming/slither_fp_files/out14216.sol(473)

[31mViolation[0m for MissingInputValidation in contract 'Manager':
    |/// @param _amount to withdraw
    |/// @param _recipient to send withdrawn ether to
  > |function withdrawFromManager(uint _amount, address _recipient) external onlyExchangeOrOwner
    |whenNotPaused onlyAllowedInPhase(SettlementPhase.FINISHED) {
    |_recipient.transfer(_amount);
  at /home/jiaming/slither_fp_files/out14216.sol(481)

[31mViolation[0m for MissingInputValidation in contract 'Manager':
    |/// @param _amount to withdraw
    |/// @param _custodyAddress to withdraw from
  > |function withdrawFromCustody(uint _amount, address _custodyAddress,address _recipient) external onlyExchangeOrOwner
    |whenNotPaused onlyAllowedInPhase(SettlementPhase.FINISHED) {
    |Custody custody = Custody(_custodyAddress);
  at /home/jiaming/slither_fp_files/out14216.sol(489)

[31mViolation[0m for MissingInputValidation in contract 'Manager':
    |/// @param _amount to withdraw
    |/// @param _custodyAddress to withdraw from
  > |function withdrawTokensFromCustody(address _tokenAddress, uint _amount, address _custodyAddress, address _recipient)
    |external whenNotPaused onlyAllowedInPhase(SettlementPhase.FINISHED) onlyExchangeOrOwner {
    |Custody custody = Custody(_custodyAddress);
  at /home/jiaming/slither_fp_files/out14216.sol(499)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out14216.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/slither_fp_files/out14216.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out14216.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out14216.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/slither_fp_files/out14216.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |
    |//Initially ready for a settlement
  > |SettlementPhase public currentSettlementPhase = SettlementPhase.FINISHED;
    |
    |uint public startingFeeBalance = 0;
  at /home/jiaming/slither_fp_files/out14216.sol(353)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |SettlementPhase public currentSettlementPhase = SettlementPhase.FINISHED;
    |
  > |uint public startingFeeBalance = 0;
    |uint public totalFeeFlows = 0;
    |uint public startingInsuranceBalance = 0;
  at /home/jiaming/slither_fp_files/out14216.sol(355)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |
    |uint public startingFeeBalance = 0;
  > |uint public totalFeeFlows = 0;
    |uint public startingInsuranceBalance = 0;
    |uint public totalInsuranceFlows = 0;
  at /home/jiaming/slither_fp_files/out14216.sol(356)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |uint public startingFeeBalance = 0;
    |uint public totalFeeFlows = 0;
  > |uint public startingInsuranceBalance = 0;
    |uint public totalInsuranceFlows = 0;
    |
  at /home/jiaming/slither_fp_files/out14216.sol(357)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |uint public totalFeeFlows = 0;
    |uint public startingInsuranceBalance = 0;
  > |uint public totalInsuranceFlows = 0;
    |
    |uint public lastSettlementStartedTimestamp = 0;
  at /home/jiaming/slither_fp_files/out14216.sol(358)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |uint public totalInsuranceFlows = 0;
    |
  > |uint public lastSettlementStartedTimestamp = 0;
    |uint public earliestNextSettlementTimestamp = 0;
    |
  at /home/jiaming/slither_fp_files/out14216.sol(360)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |
    |uint public lastSettlementStartedTimestamp = 0;
  > |uint public earliestNextSettlementTimestamp = 0;
    |
    |mapping(uint => mapping(address => bool)) public custodiesServedETH;
  at /home/jiaming/slither_fp_files/out14216.sol(361)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |mapping(uint => mapping(address => bool)) public custodiesServedBBD;
    |
  > |address public feeAccount;
    |address public insuranceAccount;
    |ERC20 public bbdToken;
  at /home/jiaming/slither_fp_files/out14216.sol(366)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |
    |address public feeAccount;
  > |address public insuranceAccount;
    |ERC20 public bbdToken;
    |CustodyStorage public custodyStorage;
  at /home/jiaming/slither_fp_files/out14216.sol(367)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |address public feeAccount;
    |address public insuranceAccount;
  > |ERC20 public bbdToken;
    |CustodyStorage public custodyStorage;
    |
  at /home/jiaming/slither_fp_files/out14216.sol(368)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |address public insuranceAccount;
    |ERC20 public bbdToken;
  > |CustodyStorage public custodyStorage;
    |
    |address public custodyFactory;
  at /home/jiaming/slither_fp_files/out14216.sol(369)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |CustodyStorage public custodyStorage;
    |
  > |address public custodyFactory;
    |uint public gweiBBDPriceInWei;
    |uint public lastTimePriceSet;
  at /home/jiaming/slither_fp_files/out14216.sol(371)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |
    |address public custodyFactory;
  > |uint public gweiBBDPriceInWei;
    |uint public lastTimePriceSet;
    |uint constant public gwei = 1000000000;
  at /home/jiaming/slither_fp_files/out14216.sol(372)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |address public custodyFactory;
    |uint public gweiBBDPriceInWei;
  > |uint public lastTimePriceSet;
    |uint constant public gwei = 1000000000;
    |
  at /home/jiaming/slither_fp_files/out14216.sol(373)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |uint public gweiBBDPriceInWei;
    |uint public lastTimePriceSet;
  > |uint constant public gwei = 1000000000;
    |
    |uint public maxTimeIntervalHB = 1 weeks;
  at /home/jiaming/slither_fp_files/out14216.sol(374)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |uint constant public gwei = 1000000000;
    |
  > |uint public maxTimeIntervalHB = 1 weeks;
    |uint public heartBeat = now;
    |
  at /home/jiaming/slither_fp_files/out14216.sol(376)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |
    |uint public maxTimeIntervalHB = 1 weeks;
  > |uint public heartBeat = now;
    |
    |constructor(address _feeAccount, address _insuranceAccount, address _bbdTokenAddress, address _custodyStorage,
  at /home/jiaming/slither_fp_files/out14216.sol(377)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |}
    |
  > |function pause() public onlyExchangeOrOwner {
    |paused = true;
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(395)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |}
    |
  > |function unpause() public onlyExchangeOrOwner {
    |paused = false;
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(399)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |}
    |
  > |function isDailySettlementOnGoing() external view returns (bool) {
    |return currentSettlementPhase != SettlementPhase.FINISHED;
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(424)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |}
    |
  > |function updateHeartBeat() external whenNotPaused onlyOwner {
    |heartBeat = now;
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(428)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |}
    |
  > |function isExchangeAlive() external view returns (bool) {
    |return now - heartBeat < maxTimeIntervalHB;
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(432)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |/// @dev This function prepares the daily settlement - resets all settlement
    |/// @dev scope storage variables to 0.
  > |function startSettlementPreparation() external whenNotPaused onlyExchangeOrOwner
    |onlyAllowedInPhase(SettlementPhase.FINISHED) {
    |require(now > earliestNextSettlementTimestamp, "A settlement can happen once per day");
  at /home/jiaming/slither_fp_files/out14216.sol(509)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |
    |/// @dev This function is used to finish the settlement process
  > |function finishSettlement() external whenNotPaused onlyExchangeOrOwner
    |onlyAllowedInPhase(SettlementPhase.ONGOING) {
    |//TODO phase change event?
  at /home/jiaming/slither_fp_files/out14216.sol(651)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |}
    |
  > |function getTotalBalanceFor(address _custody) internal view returns (uint) {
    |
    |var bbdHoldingsInWei = ((bbdToken.balanceOf(_custody) * gweiBBDPriceInWei) / gwei);
  at /home/jiaming/slither_fp_files/out14216.sol(659)

[31mViolation[0m for TODAmount in contract 'Manager':
    |if(address(this).balance > preBatchBalance) {
    |uint leftovers = address(this).balance - preBatchBalance;
  > |insuranceAccount.transfer(leftovers);
    |totalInsuranceFlows += leftovers;
    |//100% rule for insurance account
  at /home/jiaming/slither_fp_files/out14216.sol(586)

[33mWarning[0m for TODAmount in contract 'Manager':
    |function withdrawFromManager(uint _amount, address _recipient) external onlyExchangeOrOwner
    |whenNotPaused onlyAllowedInPhase(SettlementPhase.FINISHED) {
  > |_recipient.transfer(_amount);
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(483)

[33mWarning[0m for TODAmount in contract 'Manager':
    |}
    |
  > |_custodies[flowIndex].transfer(uint(_flows[flowIndex]));
    |
    |} else if (_flows[flowIndex] < 0) {
  at /home/jiaming/slither_fp_files/out14216.sol(563)

[33mWarning[0m for TODReceiver in contract 'Manager':
    |function withdrawFromManager(uint _amount, address _recipient) external onlyExchangeOrOwner
    |whenNotPaused onlyAllowedInPhase(SettlementPhase.FINISHED) {
  > |_recipient.transfer(_amount);
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(483)

[33mWarning[0m for TODReceiver in contract 'Manager':
    |}
    |
  > |_custodies[flowIndex].transfer(uint(_flows[flowIndex]));
    |
    |} else if (_flows[flowIndex] < 0) {
  at /home/jiaming/slither_fp_files/out14216.sol(563)

[33mWarning[0m for UnhandledException in contract 'Manager':
    |function createCustody(address _custody) external whenNotPaused onlyAllowedInPhase(SettlementPhase.FINISHED) {
    |require(msg.sender == custodyFactory);
  > |custodyStorage.addCustody(_custody);
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(470)

[33mWarning[0m for UnhandledException in contract 'Manager':
    |function removeCustody(address _custodyAddress, uint _arrayIndex) external whenNotPaused onlyExchangeOrOwner
    |onlyAllowedInPhase(SettlementPhase.FINISHED) {
  > |custodyStorage.removeCustody(_custodyAddress, _arrayIndex);
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(475)

[33mWarning[0m for UnhandledException in contract 'Manager':
    |function withdrawFromManager(uint _amount, address _recipient) external onlyExchangeOrOwner
    |whenNotPaused onlyAllowedInPhase(SettlementPhase.FINISHED) {
  > |_recipient.transfer(_amount);
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(483)

[33mWarning[0m for UnhandledException in contract 'Manager':
    |whenNotPaused onlyAllowedInPhase(SettlementPhase.FINISHED) {
    |Custody custody = Custody(_custodyAddress);
  > |custody.withdraw(_amount, _recipient);
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(492)

[33mWarning[0m for UnhandledException in contract 'Manager':
    |external whenNotPaused onlyAllowedInPhase(SettlementPhase.FINISHED) onlyExchangeOrOwner {
    |Custody custody = Custody(_custodyAddress);
  > |custody.transferToken(_tokenAddress, _recipient,_amount);
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(502)

[33mWarning[0m for UnhandledException in contract 'Manager':
    |
    |startingFeeBalance = feeAccount.balance +
  > |((bbdToken.balanceOf(feeAccount) * gweiBBDPriceInWei) / gwei);
    |
    |startingInsuranceBalance = insuranceAccount.balance;
  at /home/jiaming/slither_fp_files/out14216.sol(522)

[33mWarning[0m for UnhandledException in contract 'Manager':
    |
    |if(_insurance > 0) {
  > |Insurance(insuranceAccount).useInsurance(_insurance);
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(542)

[33mWarning[0m for UnhandledException in contract 'Manager':
    |
    |//All addresses must be custodies
  > |require(custodyStorage.custodiesMap(_custodies[flowIndex]));
    |
    |if (_flows[flowIndex] > 0) {
  at /home/jiaming/slither_fp_files/out14216.sol(551)

[33mWarning[0m for UnhandledException in contract 'Manager':
    |}
    |
  > |_custodies[flowIndex].transfer(uint(_flows[flowIndex]));
    |
    |} else if (_flows[flowIndex] < 0) {
  at /home/jiaming/slither_fp_files/out14216.sol(563)

[33mWarning[0m for UnhandledException in contract 'Manager':
    |Custody custody = Custody(_custodies[flowIndex]);
    |
  > |custody.withdraw(uint(-_flows[flowIndex]), address(this));
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(568)

[33mWarning[0m for UnhandledException in contract 'Manager':
    |
    |if(_fee > 0) {
  > |feeAccount.transfer(_fee);
    |totalFeeFlows = totalFeeFlows + _fee;
    |//100% rule for fee account
  at /home/jiaming/slither_fp_files/out14216.sol(575)

[33mWarning[0m for UnhandledException in contract 'Manager':
    |if(address(this).balance > preBatchBalance) {
    |uint leftovers = address(this).balance - preBatchBalance;
  > |insuranceAccount.transfer(leftovers);
    |totalInsuranceFlows += leftovers;
    |//100% rule for insurance account
  at /home/jiaming/slither_fp_files/out14216.sol(586)

[33mWarning[0m for UnhandledException in contract 'Manager':
    |require(_custodies.length == _flows.length);
    |
  > |uint preBatchBalance = bbdToken.balanceOf(address(this));
    |
    |for (uint flowIndex = 0; flowIndex < _flows.length; flowIndex++) {
  at /home/jiaming/slither_fp_files/out14216.sol(605)

[33mWarning[0m for UnhandledException in contract 'Manager':
    |require(custodiesServedBBD[lastSettlementStartedTimestamp][_custodies[flowIndex]] == false);
    |//All addresses must be custodies
  > |require(custodyStorage.custodiesMap(_custodies[flowIndex]));
    |
    |if (_flows[flowIndex] > 0) {
  at /home/jiaming/slither_fp_files/out14216.sol(612)

[33mWarning[0m for UnhandledException in contract 'Manager':
    |}
    |
  > |bbdToken.transfer(_custodies[flowIndex], uint(_flows[flowIndex]));
    |
    |} else if (_flows[flowIndex] < 0) {
  at /home/jiaming/slither_fp_files/out14216.sol(626)

[33mWarning[0m for UnhandledException in contract 'Manager':
    |Custody custody = Custody(_custodies[flowIndex]);
    |
  > |custody.transferToken(address(bbdToken),address(this), uint(-(_flows[flowIndex])));
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(631)

[33mWarning[0m for UnhandledException in contract 'Manager':
    |
    |if(_fee > 0) {
  > |bbdToken.transfer(feeAccount, _fee);
    |//No need for safe math, as transfer will trow if _fee could cause overflow
    |totalFeeFlows += ((_fee * gweiBBDPriceInWei) / gwei);
  at /home/jiaming/slither_fp_files/out14216.sol(638)

[33mWarning[0m for UnhandledException in contract 'Manager':
    |}
    |
  > |uint postBatchBalance = bbdToken.balanceOf(address(this));
    |
    |//Zero-or-less-sum guaranteed for every batch, no insurance for spots
  at /home/jiaming/slither_fp_files/out14216.sol(644)

[33mWarning[0m for UnhandledException in contract 'Manager':
    |function getTotalBalanceFor(address _custody) internal view returns (uint) {
    |
  > |var bbdHoldingsInWei = ((bbdToken.balanceOf(_custody) * gweiBBDPriceInWei) / gwei);
    |
    |return _custody.balance + bbdHoldingsInWei;
  at /home/jiaming/slither_fp_files/out14216.sol(661)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'Manager':
    |function withdrawFromManager(uint _amount, address _recipient) external onlyExchangeOrOwner
    |whenNotPaused onlyAllowedInPhase(SettlementPhase.FINISHED) {
  > |_recipient.transfer(_amount);
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(483)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'Manager':
    |}
    |
  > |_custodies[flowIndex].transfer(uint(_flows[flowIndex]));
    |
    |} else if (_flows[flowIndex] < 0) {
  at /home/jiaming/slither_fp_files/out14216.sol(563)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Manager':
    |function createCustody(address _custody) external whenNotPaused onlyAllowedInPhase(SettlementPhase.FINISHED) {
    |require(msg.sender == custodyFactory);
  > |custodyStorage.addCustody(_custody);
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(470)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Manager':
    |function removeCustody(address _custodyAddress, uint _arrayIndex) external whenNotPaused onlyExchangeOrOwner
    |onlyAllowedInPhase(SettlementPhase.FINISHED) {
  > |custodyStorage.removeCustody(_custodyAddress, _arrayIndex);
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(475)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Manager':
    |whenNotPaused onlyAllowedInPhase(SettlementPhase.FINISHED) {
    |Custody custody = Custody(_custodyAddress);
  > |custody.withdraw(_amount, _recipient);
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(492)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Manager':
    |external whenNotPaused onlyAllowedInPhase(SettlementPhase.FINISHED) onlyExchangeOrOwner {
    |Custody custody = Custody(_custodyAddress);
  > |custody.transferToken(_tokenAddress, _recipient,_amount);
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(502)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Manager':
    |
    |startingFeeBalance = feeAccount.balance +
  > |((bbdToken.balanceOf(feeAccount) * gweiBBDPriceInWei) / gwei);
    |
    |startingInsuranceBalance = insuranceAccount.balance;
  at /home/jiaming/slither_fp_files/out14216.sol(522)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Manager':
    |
    |if(_insurance > 0) {
  > |Insurance(insuranceAccount).useInsurance(_insurance);
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(542)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Manager':
    |
    |//All addresses must be custodies
  > |require(custodyStorage.custodiesMap(_custodies[flowIndex]));
    |
    |if (_flows[flowIndex] > 0) {
  at /home/jiaming/slither_fp_files/out14216.sol(551)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Manager':
    |Custody custody = Custody(_custodies[flowIndex]);
    |
  > |custody.withdraw(uint(-_flows[flowIndex]), address(this));
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(568)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Manager':
    |require(_custodies.length == _flows.length);
    |
  > |uint preBatchBalance = bbdToken.balanceOf(address(this));
    |
    |for (uint flowIndex = 0; flowIndex < _flows.length; flowIndex++) {
  at /home/jiaming/slither_fp_files/out14216.sol(605)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Manager':
    |require(custodiesServedBBD[lastSettlementStartedTimestamp][_custodies[flowIndex]] == false);
    |//All addresses must be custodies
  > |require(custodyStorage.custodiesMap(_custodies[flowIndex]));
    |
    |if (_flows[flowIndex] > 0) {
  at /home/jiaming/slither_fp_files/out14216.sol(612)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Manager':
    |}
    |
  > |bbdToken.transfer(_custodies[flowIndex], uint(_flows[flowIndex]));
    |
    |} else if (_flows[flowIndex] < 0) {
  at /home/jiaming/slither_fp_files/out14216.sol(626)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Manager':
    |Custody custody = Custody(_custodies[flowIndex]);
    |
  > |custody.transferToken(address(bbdToken),address(this), uint(-(_flows[flowIndex])));
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(631)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Manager':
    |
    |if(_fee > 0) {
  > |bbdToken.transfer(feeAccount, _fee);
    |//No need for safe math, as transfer will trow if _fee could cause overflow
    |totalFeeFlows += ((_fee * gweiBBDPriceInWei) / gwei);
  at /home/jiaming/slither_fp_files/out14216.sol(638)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Manager':
    |}
    |
  > |uint postBatchBalance = bbdToken.balanceOf(address(this));
    |
    |//Zero-or-less-sum guaranteed for every batch, no insurance for spots
  at /home/jiaming/slither_fp_files/out14216.sol(644)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Manager':
    |function getTotalBalanceFor(address _custody) internal view returns (uint) {
    |
  > |var bbdHoldingsInWei = ((bbdToken.balanceOf(_custody) * gweiBBDPriceInWei) / gwei);
    |
    |return _custody.balance + bbdHoldingsInWei;
  at /home/jiaming/slither_fp_files/out14216.sol(661)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out14216.sol(43)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(61)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |
    |function setCustodyFactory(address _custodyFactory) external onlyOwner {
  > |custodyFactory = _custodyFactory;
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(392)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |
    |function pause() public onlyExchangeOrOwner {
  > |paused = true;
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(396)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |
    |function unpause() public onlyExchangeOrOwner {
  > |paused = false;
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(400)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |
    |function updateHeartBeat() external whenNotPaused onlyOwner {
  > |heartBeat = now;
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(429)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |
    |function addOwnerAccount(address _exchangeAccount) external onlyOwner {
  > |ownerAccountsMap[_exchangeAccount] = true;
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(437)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |
    |function addExchangeAccount(address _exchangeAccount) external onlyOwner whenNotPaused {
  > |exchangeAccountsMap[_exchangeAccount] = true;
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(441)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |
    |function rmExchangeAccount(address _exchangeAccount) external onlyOwner whenNotPaused {
  > |exchangeAccountsMap[_exchangeAccount] = false;
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(445)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |onlyAllowedInPhase(SettlementPhase.FINISHED) {
    |if(gweiBBDPriceInWei == 0) {
  > |gweiBBDPriceInWei = _priceInWei;
    |} else {
    |//Max 100% daily increase in price
  at /home/jiaming/slither_fp_files/out14216.sol(451)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |require(gweiBBDPriceInWei - _priceInWei <= (gweiBBDPriceInWei / 2));
    |}
  > |gweiBBDPriceInWei = _priceInWei;
    |}
    |//Price can only be set once per day
  at /home/jiaming/slither_fp_files/out14216.sol(460)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |require(now - lastTimePriceSet > 23 hours);
    |
  > |lastTimePriceSet = now;
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(465)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |require(gweiBBDPriceInWei > 0, "BBD Price cannot be 0 during settlement");
    |
  > |lastSettlementStartedTimestamp = now;
    |totalFeeFlows = 0;
    |totalInsuranceFlows = 0;
  at /home/jiaming/slither_fp_files/out14216.sol(514)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |
    |lastSettlementStartedTimestamp = now;
  > |totalFeeFlows = 0;
    |totalInsuranceFlows = 0;
    |
  at /home/jiaming/slither_fp_files/out14216.sol(515)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |lastSettlementStartedTimestamp = now;
    |totalFeeFlows = 0;
  > |totalInsuranceFlows = 0;
    |
    |currentSettlementPhase = SettlementPhase.ONGOING;
  at /home/jiaming/slither_fp_files/out14216.sol(516)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |totalInsuranceFlows = 0;
    |
  > |currentSettlementPhase = SettlementPhase.ONGOING;
    |
    |
  at /home/jiaming/slither_fp_files/out14216.sol(518)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |
    |
  > |startingFeeBalance = feeAccount.balance +
    |((bbdToken.balanceOf(feeAccount) * gweiBBDPriceInWei) / gwei);
    |
  at /home/jiaming/slither_fp_files/out14216.sol(521)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |((bbdToken.balanceOf(feeAccount) * gweiBBDPriceInWei) / gwei);
    |
  > |startingInsuranceBalance = insuranceAccount.balance;
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(524)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |}
    |
  > |custodiesServedETH[lastSettlementStartedTimestamp][_custodies[flowIndex]] = true;
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(571)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |if(_fee > 0) {
    |feeAccount.transfer(_fee);
  > |totalFeeFlows = totalFeeFlows + _fee;
    |//100% rule for fee account
    |require(totalFeeFlows <= startingFeeBalance);
  at /home/jiaming/slither_fp_files/out14216.sol(576)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |uint leftovers = address(this).balance - preBatchBalance;
    |insuranceAccount.transfer(leftovers);
  > |totalInsuranceFlows += leftovers;
    |//100% rule for insurance account
    |require(totalInsuranceFlows <= startingInsuranceBalance);
  at /home/jiaming/slither_fp_files/out14216.sol(587)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |}
    |
  > |custodiesServedBBD[lastSettlementStartedTimestamp][_custodies[flowIndex]] = true;
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(634)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |bbdToken.transfer(feeAccount, _fee);
    |//No need for safe math, as transfer will trow if _fee could cause overflow
  > |totalFeeFlows += ((_fee * gweiBBDPriceInWei) / gwei);
    |require (totalFeeFlows <= startingFeeBalance);
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(640)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |onlyAllowedInPhase(SettlementPhase.ONGOING) {
    |//TODO phase change event?
  > |earliestNextSettlementTimestamp = lastSettlementStartedTimestamp + 23 hours;
    |
    |currentSettlementPhase = SettlementPhase.FINISHED;
  at /home/jiaming/slither_fp_files/out14216.sol(654)

[31mViolation[0m for UnrestrictedWrite in contract 'Manager':
    |earliestNextSettlementTimestamp = lastSettlementStartedTimestamp + 23 hours;
    |
  > |currentSettlementPhase = SettlementPhase.FINISHED;
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(656)

[33mWarning[0m for LockedEther in contract 'ManagerInterface':
    |
    |
  > |contract ManagerInterface {
    |  function createCustody(address) external {}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(210)

[33mWarning[0m for MissingInputValidation in contract 'ManagerInterface':
    |
    |contract ManagerInterface {
  > |  function createCustody(address) external {}
    |
    |  function isExchangeAlive() public pure returns (bool) {}
  at /home/jiaming/slither_fp_files/out14216.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'ManagerInterface':
    |  function createCustody(address) external {}
    |
  > |  function isExchangeAlive() public pure returns (bool) {}
    |
    |  function isDailySettlementOnGoing() public pure returns (bool) {}
  at /home/jiaming/slither_fp_files/out14216.sol(213)

[33mWarning[0m for MissingInputValidation in contract 'ManagerInterface':
    |  function isExchangeAlive() public pure returns (bool) {}
    |
  > |  function isDailySettlementOnGoing() public pure returns (bool) {}
    |}
    |
  at /home/jiaming/slither_fp_files/out14216.sol(215)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/slither_fp_files/out14216.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out14216.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/slither_fp_files/out14216.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out14216.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out14216.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out14216.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(61)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/slither_fp_files/out14216.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out14216.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/slither_fp_files/out14216.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out14216.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out14216.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/slither_fp_files/out14216.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/slither_fp_files/out14216.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/slither_fp_files/out14216.sol(104)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out14216.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out14216.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/slither_fp_files/out14216.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/slither_fp_files/out14216.sol(105)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/slither_fp_files/out14216.sol(163)


