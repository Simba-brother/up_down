Processing contract: /home/jiaming/slither_fp_files/out6794.sol:Administered
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6794.sol:ExchangerV4
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6794.sol:IExchangeFormula
Processing contract: /home/jiaming/slither_fp_files/out6794.sol:ITradeableAsset
Processing contract: /home/jiaming/slither_fp_files/out6794.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'Administered':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
    |
  > |contract Administered {
    |    address public creator;
    |
  at /home/jiaming/slither_fp_files/out6794.sol(18)

[31mViolation[0m for MissingInputValidation in contract 'Administered':
    |    address public creator;
    |
  > |    mapping (address => bool) public admins;
    |
    |    constructor() public {
  at /home/jiaming/slither_fp_files/out6794.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'Administered':
    |    }
    |
  > |    function grantAdmin(address newAdmin) onlyOwner  public {
    |        _grantAdmin(newAdmin);
    |    }
  at /home/jiaming/slither_fp_files/out6794.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'Administered':
    |    }
    |
  > |    function changeOwner(address newOwner) onlyOwner public {
    |        creator = newOwner;
    |    }
  at /home/jiaming/slither_fp_files/out6794.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'Administered':
    |    }
    |
  > |    function revokeAdminStatus(address user) onlyOwner public {
    |        admins[user] = false;
    |    }
  at /home/jiaming/slither_fp_files/out6794.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Administered':
    |
    |contract Administered {
  > |    address public creator;
    |
    |    mapping (address => bool) public admins;
  at /home/jiaming/slither_fp_files/out6794.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Administered':
    |    }
    |
  > |    function _grantAdmin(address newAdmin) internal
    |    {
    |        admins[newAdmin] = true;
  at /home/jiaming/slither_fp_files/out6794.sol(42)

[31mViolation[0m for UnrestrictedWrite in contract 'Administered':
    |    function _grantAdmin(address newAdmin) internal
    |    {
  > |        admins[newAdmin] = true;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Administered':
    |    function _grantAdmin(address newAdmin) internal
    |    {
  > |        admins[newAdmin] = true;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Administered':
    |
    |    function changeOwner(address newOwner) onlyOwner public {
  > |        creator = newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'Administered':
    |
    |    function revokeAdminStatus(address user) onlyOwner public {
  > |        admins[user] = false;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out6794.sol(52)

[33mWarning[0m for DAO in contract 'ExchangerV4':
    |        require (amountInWei >= minSaleReturn);
    |        require (amountInWei <= address(this).balance);
  > |        require (tokenContract.transferFrom(seller, this, quantity));
    |
    |        collectedFees += (amountInWei * fee) / 1000000;
  at /home/jiaming/slither_fp_files/out6794.sol(225)

[31mViolation[0m for DAOConstantGas in contract 'ExchangerV4':
    |        if(msg.value > thresholdSendToSafeWallet){
    |            uint transferToSafeWallet = msg.value * sendToSafeWalletPercentage / 100;
  > |            creator.transfer(transferToSafeWallet);
    |            virtualReserveBalance += transferToSafeWallet;
    |        }
  at /home/jiaming/slither_fp_files/out6794.sol(179)

[33mWarning[0m for DAOConstantGas in contract 'ExchangerV4':
    |
    |    function withdrawEther(uint amountInWei) onlyOwner public {
  > |        msg.sender.transfer(amountInWei); //Transfers in wei
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(96)

[33mWarning[0m for DAOConstantGas in contract 'ExchangerV4':
    |    function extractFees(uint amountInWei) onlyAdmin public {
    |        require (amountInWei <= collectedFees);
  > |        msg.sender.transfer(amountInWei);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(101)

[33mWarning[0m for DAOConstantGas in contract 'ExchangerV4':
    |
    |        emit Sell(msg.sender, quantity, amountInWei);
  > |        msg.sender.transfer(amountInWei);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(206)

[33mWarning[0m for DAOConstantGas in contract 'ExchangerV4':
    |
    |        emit Sell(seller, quantity, amountInWei);
  > |        seller.transfer(amountInWei);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(230)

[33mWarning[0m for LockedEther in contract 'ExchangerV4':
    |}
    |
  > |contract ExchangerV4 is Administered, tokenRecipient {
    |    bool public enabled = false;
    |
  at /home/jiaming/slither_fp_files/out6794.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV4':
    |    address public creator;
    |
  > |    mapping (address => bool) public admins;
    |
    |    constructor() public {
  at /home/jiaming/slither_fp_files/out6794.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV4':
    |    }
    |
  > |    function grantAdmin(address newAdmin) onlyOwner  public {
    |        _grantAdmin(newAdmin);
    |    }
  at /home/jiaming/slither_fp_files/out6794.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV4':
    |    }
    |
  > |    function changeOwner(address newOwner) onlyOwner public {
    |        creator = newOwner;
    |    }
  at /home/jiaming/slither_fp_files/out6794.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV4':
    |    }
    |
  > |    function revokeAdminStatus(address user) onlyOwner public {
    |        admins[user] = false;
    |    }
  at /home/jiaming/slither_fp_files/out6794.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV4':
    |    event Sell(address indexed seller, uint256 amountInToken, uint256 amountInWei);
    |
  > |    function depositTokens(uint amount) onlyOwner public {
    |        tokenContract.transferFrom(msg.sender, this, amount);
    |    }
  at /home/jiaming/slither_fp_files/out6794.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV4':
    |    }
    |
  > |    function withdrawTokens(uint amount) onlyOwner public {
    |        tokenContract.transfer(msg.sender, amount);
    |    }
  at /home/jiaming/slither_fp_files/out6794.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV4':
    |    }
    |
  > |    function withdrawEther(uint amountInWei) onlyOwner public {
    |        msg.sender.transfer(amountInWei); //Transfers in wei
    |    }
  at /home/jiaming/slither_fp_files/out6794.sol(95)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV4':
    |    }
    |
  > |    function setVirtualReserveBalance(uint256 amountInWei) onlyAdmin public {
    |        virtualReserveBalance = amountInWei;
    |    }
  at /home/jiaming/slither_fp_files/out6794.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV4':
    |    }
    |
  > |    function getPurchasePrice(uint256 amountInWei) public view returns(uint) {
    |        uint256 purchaseReturn = formulaContract.calculatePurchaseReturn(
    |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
  at /home/jiaming/slither_fp_files/out6794.sol(135)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV4':
    |    }
    |
  > |    function getSalePrice(uint256 tokensToSell) public view returns(uint) {
    |        uint256 saleReturn = formulaContract.calculateSaleReturn(
    |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
  at /home/jiaming/slither_fp_files/out6794.sol(151)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV4':
    |    }
    |
  > |    function sell(uint quantity, uint minSaleReturn) public {
    |        uint amountInWei = formulaContract.calculateSaleReturn(
    |            (tokenContract.totalSupply()- uncirculatedSupplyCount) - tokenContract.balanceOf(this),
  at /home/jiaming/slither_fp_files/out6794.sol(189)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV4':
    |    }
    |
  > |    function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external {
    |        sellOneStep(_value, 0, _from);
    |    }
  at /home/jiaming/slither_fp_files/out6794.sol(209)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV4':
    |    }
    |
  > |    function setThresholdSendToSafeWallet(uint256 amountInWei) onlyOwner public {
    |        thresholdSendToSafeWallet = amountInWei;
    |    }
  at /home/jiaming/slither_fp_files/out6794.sol(238)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV4':
    |
    |contract Administered {
  > |    address public creator;
    |
    |    mapping (address => bool) public admins;
  at /home/jiaming/slither_fp_files/out6794.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV4':
    |    }
    |
  > |    function _grantAdmin(address newAdmin) internal
    |    {
    |        admins[newAdmin] = true;
  at /home/jiaming/slither_fp_files/out6794.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV4':
    |
    |contract ExchangerV4 is Administered, tokenRecipient {
  > |    bool public enabled = false;
    |
    |    ITradeableAsset public tokenContract;
  at /home/jiaming/slither_fp_files/out6794.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV4':
    |    bool public enabled = false;
    |
  > |    ITradeableAsset public tokenContract;
    |    IExchangeFormula public formulaContract;
    |    uint32 public weight;
  at /home/jiaming/slither_fp_files/out6794.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV4':
    |
    |    ITradeableAsset public tokenContract;
  > |    IExchangeFormula public formulaContract;
    |    uint32 public weight;
    |    uint32 public fee=5000; //0.5%
  at /home/jiaming/slither_fp_files/out6794.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV4':
    |    ITradeableAsset public tokenContract;
    |    IExchangeFormula public formulaContract;
  > |    uint32 public weight;
    |    uint32 public fee=5000; //0.5%
    |    uint256 public uncirculatedSupplyCount=0;
  at /home/jiaming/slither_fp_files/out6794.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV4':
    |    IExchangeFormula public formulaContract;
    |    uint32 public weight;
  > |    uint32 public fee=5000; //0.5%
    |    uint256 public uncirculatedSupplyCount=0;
    |    uint256 public collectedFees=0;
  at /home/jiaming/slither_fp_files/out6794.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV4':
    |    uint32 public weight;
    |    uint32 public fee=5000; //0.5%
  > |    uint256 public uncirculatedSupplyCount=0;
    |    uint256 public collectedFees=0;
    |    uint256 public virtualReserveBalance=0;
  at /home/jiaming/slither_fp_files/out6794.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV4':
    |    uint32 public fee=5000; //0.5%
    |    uint256 public uncirculatedSupplyCount=0;
  > |    uint256 public collectedFees=0;
    |    uint256 public virtualReserveBalance=0;
    |
  at /home/jiaming/slither_fp_files/out6794.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV4':
    |    uint256 public uncirculatedSupplyCount=0;
    |    uint256 public collectedFees=0;
  > |    uint256 public virtualReserveBalance=0;
    |
    |    uint public thresholdSendToSafeWallet = 100000000000000000; 
  at /home/jiaming/slither_fp_files/out6794.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV4':
    |    uint256 public virtualReserveBalance=0;
    |
  > |    uint public thresholdSendToSafeWallet = 100000000000000000; 
    |    uint public sendToSafeWalletPercentage = 10; 
    |
  at /home/jiaming/slither_fp_files/out6794.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV4':
    |
    |    uint public thresholdSendToSafeWallet = 100000000000000000; 
  > |    uint public sendToSafeWalletPercentage = 10; 
    |
    |    constructor(address _token,
  at /home/jiaming/slither_fp_files/out6794.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV4':
    |    }
    |
  > |    function depositEther() onlyOwner public payable {
    |    //return getQuotePrice();
    |    }
  at /home/jiaming/slither_fp_files/out6794.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV4':
    |    }
    |
  > |    function extractFees(uint amountInWei) onlyAdmin public {
    |        require (amountInWei <= collectedFees);
    |        msg.sender.transfer(amountInWei);
  at /home/jiaming/slither_fp_files/out6794.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV4':
    |    }
    |
  > |    function enable() onlyAdmin public {
    |        enabled = true;
    |    }
  at /home/jiaming/slither_fp_files/out6794.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV4':
    |    }
    |
  > |    function disable() onlyAdmin public {
    |        enabled = false;
    |    }
  at /home/jiaming/slither_fp_files/out6794.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV4':
    |    }
    |
  > |    function setReserveWeight(uint ppm) onlyAdmin public {
    |        require (ppm>0 && ppm<=1000000);
    |        weight = uint32(ppm);
  at /home/jiaming/slither_fp_files/out6794.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV4':
    |    }
    |
  > |    function setFee(uint ppm) onlyAdmin public {
    |        require (ppm >= 0 && ppm <= 1000000);
    |        fee = uint32(ppm);
  at /home/jiaming/slither_fp_files/out6794.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV4':
    |    }
    |
  > |    function setUncirculatedSupplyCount(uint newValue) onlyAdmin public {
    |        require (newValue > 0);
    |        uncirculatedSupplyCount = uint256(newValue);
  at /home/jiaming/slither_fp_files/out6794.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV4':
    |    }
    |
  > |    function getReserveBalances() public view returns (uint256, uint256) {
    |        return (tokenContract.balanceOf(this), address(this).balance+virtualReserveBalance);
    |    }
  at /home/jiaming/slither_fp_files/out6794.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV4':
    |    }
    |
  > |    function buy(uint minPurchaseReturn) public payable {
    |        uint amount = formulaContract.calculatePurchaseReturn(
    |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
  at /home/jiaming/slither_fp_files/out6794.sol(165)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV4':
    |    }
    |
  > |    function setSendToSafeWalletPercentage(uint newValue) onlyOwner public {
    |        require (newValue > 0);
    |        sendToSafeWalletPercentage = uint(newValue);
  at /home/jiaming/slither_fp_files/out6794.sol(233)

[31mViolation[0m for TODAmount in contract 'ExchangerV4':
    |        if(msg.value > thresholdSendToSafeWallet){
    |            uint transferToSafeWallet = msg.value * sendToSafeWalletPercentage / 100;
  > |            creator.transfer(transferToSafeWallet);
    |            virtualReserveBalance += transferToSafeWallet;
    |        }
  at /home/jiaming/slither_fp_files/out6794.sol(179)

[31mViolation[0m for TODAmount in contract 'ExchangerV4':
    |
    |        emit Sell(msg.sender, quantity, amountInWei);
  > |        msg.sender.transfer(amountInWei);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(206)

[31mViolation[0m for TODAmount in contract 'ExchangerV4':
    |
    |        emit Sell(seller, quantity, amountInWei);
  > |        seller.transfer(amountInWei);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(230)

[33mWarning[0m for TODAmount in contract 'ExchangerV4':
    |
    |    function withdrawEther(uint amountInWei) onlyOwner public {
  > |        msg.sender.transfer(amountInWei); //Transfers in wei
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(96)

[33mWarning[0m for TODAmount in contract 'ExchangerV4':
    |    function extractFees(uint amountInWei) onlyAdmin public {
    |        require (amountInWei <= collectedFees);
  > |        msg.sender.transfer(amountInWei);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(101)

[31mViolation[0m for TODReceiver in contract 'ExchangerV4':
    |        if(msg.value > thresholdSendToSafeWallet){
    |            uint transferToSafeWallet = msg.value * sendToSafeWalletPercentage / 100;
  > |            creator.transfer(transferToSafeWallet);
    |            virtualReserveBalance += transferToSafeWallet;
    |        }
  at /home/jiaming/slither_fp_files/out6794.sol(179)

[33mWarning[0m for TODReceiver in contract 'ExchangerV4':
    |
    |    function withdrawEther(uint amountInWei) onlyOwner public {
  > |        msg.sender.transfer(amountInWei); //Transfers in wei
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(96)

[33mWarning[0m for TODReceiver in contract 'ExchangerV4':
    |    function extractFees(uint amountInWei) onlyAdmin public {
    |        require (amountInWei <= collectedFees);
  > |        msg.sender.transfer(amountInWei);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(101)

[33mWarning[0m for TODReceiver in contract 'ExchangerV4':
    |
    |        emit Sell(msg.sender, quantity, amountInWei);
  > |        msg.sender.transfer(amountInWei);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(206)

[33mWarning[0m for TODReceiver in contract 'ExchangerV4':
    |
    |        emit Sell(seller, quantity, amountInWei);
  > |        seller.transfer(amountInWei);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(230)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |
    |    function depositTokens(uint amount) onlyOwner public {
  > |        tokenContract.transferFrom(msg.sender, this, amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(84)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |
    |    function withdrawTokens(uint amount) onlyOwner public {
  > |        tokenContract.transfer(msg.sender, amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(92)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |
    |    function withdrawEther(uint amountInWei) onlyOwner public {
  > |        msg.sender.transfer(amountInWei); //Transfers in wei
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(96)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |    function extractFees(uint amountInWei) onlyAdmin public {
    |        require (amountInWei <= collectedFees);
  > |        msg.sender.transfer(amountInWei);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(101)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |
    |    function getReserveBalances() public view returns (uint256, uint256) {
  > |        return (tokenContract.balanceOf(this), address(this).balance+virtualReserveBalance);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(132)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |
    |    function getPurchasePrice(uint256 amountInWei) public view returns(uint) {
  > |        uint256 purchaseReturn = formulaContract.calculatePurchaseReturn(
    |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            address(this).balance + virtualReserveBalance,
  at /home/jiaming/slither_fp_files/out6794.sol(136)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |    function getPurchasePrice(uint256 amountInWei) public view returns(uint) {
    |        uint256 purchaseReturn = formulaContract.calculatePurchaseReturn(
  > |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            address(this).balance + virtualReserveBalance,
    |            weight,
  at /home/jiaming/slither_fp_files/out6794.sol(137)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |        purchaseReturn = (purchaseReturn - ((purchaseReturn * fee) / 1000000));
    |
  > |        if (purchaseReturn > tokenContract.balanceOf(this)){
    |            return tokenContract.balanceOf(this);
    |        }
  at /home/jiaming/slither_fp_files/out6794.sol(145)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |
    |        if (purchaseReturn > tokenContract.balanceOf(this)){
  > |            return tokenContract.balanceOf(this);
    |        }
    |        return purchaseReturn;
  at /home/jiaming/slither_fp_files/out6794.sol(146)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |
    |    function getSalePrice(uint256 tokensToSell) public view returns(uint) {
  > |        uint256 saleReturn = formulaContract.calculateSaleReturn(
    |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            address(this).balance + virtualReserveBalance,
  at /home/jiaming/slither_fp_files/out6794.sol(152)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |    function getSalePrice(uint256 tokensToSell) public view returns(uint) {
    |        uint256 saleReturn = formulaContract.calculateSaleReturn(
  > |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            address(this).balance + virtualReserveBalance,
    |            weight,
  at /home/jiaming/slither_fp_files/out6794.sol(153)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |
    |    function buy(uint minPurchaseReturn) public payable {
  > |        uint amount = formulaContract.calculatePurchaseReturn(
    |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            (address(this).balance + virtualReserveBalance) - msg.value,
  at /home/jiaming/slither_fp_files/out6794.sol(166)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |    function buy(uint minPurchaseReturn) public payable {
    |        uint amount = formulaContract.calculatePurchaseReturn(
  > |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            (address(this).balance + virtualReserveBalance) - msg.value,
    |            weight,
  at /home/jiaming/slither_fp_files/out6794.sol(167)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |        require (enabled);
    |        require (amount >= minPurchaseReturn);
  > |        require (tokenContract.balanceOf(this) >= amount);
    |
    |        if(msg.value > thresholdSendToSafeWallet){
  at /home/jiaming/slither_fp_files/out6794.sol(175)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |        if(msg.value > thresholdSendToSafeWallet){
    |            uint transferToSafeWallet = msg.value * sendToSafeWalletPercentage / 100;
  > |            creator.transfer(transferToSafeWallet);
    |            virtualReserveBalance += transferToSafeWallet;
    |        }
  at /home/jiaming/slither_fp_files/out6794.sol(179)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |
    |        emit Buy(msg.sender, msg.value, amount);
  > |        tokenContract.transfer(msg.sender, amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(186)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |
    |    function sell(uint quantity, uint minSaleReturn) public {
  > |        uint amountInWei = formulaContract.calculateSaleReturn(
    |            (tokenContract.totalSupply()- uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |             address(this).balance + virtualReserveBalance,
  at /home/jiaming/slither_fp_files/out6794.sol(190)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |    function sell(uint quantity, uint minSaleReturn) public {
    |        uint amountInWei = formulaContract.calculateSaleReturn(
  > |            (tokenContract.totalSupply()- uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |             address(this).balance + virtualReserveBalance,
    |             weight,
  at /home/jiaming/slither_fp_files/out6794.sol(191)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |        require (amountInWei >= minSaleReturn);
    |        require (amountInWei <= address(this).balance);
  > |        require (tokenContract.transferFrom(msg.sender, this, quantity));
    |
    |        collectedFees += (amountInWei * fee) / 1000000;
  at /home/jiaming/slither_fp_files/out6794.sol(201)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |
    |        emit Sell(msg.sender, quantity, amountInWei);
  > |        msg.sender.transfer(amountInWei);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(206)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |
    |    function sellOneStep(uint quantity, uint minSaleReturn, address seller) public {
  > |        uint amountInWei = formulaContract.calculateSaleReturn(
    |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |             address(this).balance + virtualReserveBalance,
  at /home/jiaming/slither_fp_files/out6794.sol(214)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |    function sellOneStep(uint quantity, uint minSaleReturn, address seller) public {
    |        uint amountInWei = formulaContract.calculateSaleReturn(
  > |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |             address(this).balance + virtualReserveBalance,
    |             weight,
  at /home/jiaming/slither_fp_files/out6794.sol(215)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |        require (amountInWei >= minSaleReturn);
    |        require (amountInWei <= address(this).balance);
  > |        require (tokenContract.transferFrom(seller, this, quantity));
    |
    |        collectedFees += (amountInWei * fee) / 1000000;
  at /home/jiaming/slither_fp_files/out6794.sol(225)

[33mWarning[0m for UnhandledException in contract 'ExchangerV4':
    |
    |        emit Sell(seller, quantity, amountInWei);
  > |        seller.transfer(amountInWei);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(230)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'ExchangerV4':
    |    function extractFees(uint amountInWei) onlyAdmin public {
    |        require (amountInWei <= collectedFees);
  > |        msg.sender.transfer(amountInWei);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(101)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV4':
    |
    |    function depositTokens(uint amount) onlyOwner public {
  > |        tokenContract.transferFrom(msg.sender, this, amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(84)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV4':
    |
    |    function withdrawTokens(uint amount) onlyOwner public {
  > |        tokenContract.transfer(msg.sender, amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(92)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV4':
    |
    |    function getReserveBalances() public view returns (uint256, uint256) {
  > |        return (tokenContract.balanceOf(this), address(this).balance+virtualReserveBalance);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(132)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV4':
    |
    |    function getPurchasePrice(uint256 amountInWei) public view returns(uint) {
  > |        uint256 purchaseReturn = formulaContract.calculatePurchaseReturn(
    |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            address(this).balance + virtualReserveBalance,
  at /home/jiaming/slither_fp_files/out6794.sol(136)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV4':
    |    function getPurchasePrice(uint256 amountInWei) public view returns(uint) {
    |        uint256 purchaseReturn = formulaContract.calculatePurchaseReturn(
  > |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            address(this).balance + virtualReserveBalance,
    |            weight,
  at /home/jiaming/slither_fp_files/out6794.sol(137)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV4':
    |        purchaseReturn = (purchaseReturn - ((purchaseReturn * fee) / 1000000));
    |
  > |        if (purchaseReturn > tokenContract.balanceOf(this)){
    |            return tokenContract.balanceOf(this);
    |        }
  at /home/jiaming/slither_fp_files/out6794.sol(145)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV4':
    |
    |        if (purchaseReturn > tokenContract.balanceOf(this)){
  > |            return tokenContract.balanceOf(this);
    |        }
    |        return purchaseReturn;
  at /home/jiaming/slither_fp_files/out6794.sol(146)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV4':
    |
    |    function getSalePrice(uint256 tokensToSell) public view returns(uint) {
  > |        uint256 saleReturn = formulaContract.calculateSaleReturn(
    |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            address(this).balance + virtualReserveBalance,
  at /home/jiaming/slither_fp_files/out6794.sol(152)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV4':
    |    function getSalePrice(uint256 tokensToSell) public view returns(uint) {
    |        uint256 saleReturn = formulaContract.calculateSaleReturn(
  > |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            address(this).balance + virtualReserveBalance,
    |            weight,
  at /home/jiaming/slither_fp_files/out6794.sol(153)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV4':
    |
    |    function buy(uint minPurchaseReturn) public payable {
  > |        uint amount = formulaContract.calculatePurchaseReturn(
    |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            (address(this).balance + virtualReserveBalance) - msg.value,
  at /home/jiaming/slither_fp_files/out6794.sol(166)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV4':
    |    function buy(uint minPurchaseReturn) public payable {
    |        uint amount = formulaContract.calculatePurchaseReturn(
  > |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            (address(this).balance + virtualReserveBalance) - msg.value,
    |            weight,
  at /home/jiaming/slither_fp_files/out6794.sol(167)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV4':
    |        require (enabled);
    |        require (amount >= minPurchaseReturn);
  > |        require (tokenContract.balanceOf(this) >= amount);
    |
    |        if(msg.value > thresholdSendToSafeWallet){
  at /home/jiaming/slither_fp_files/out6794.sol(175)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV4':
    |
    |        emit Buy(msg.sender, msg.value, amount);
  > |        tokenContract.transfer(msg.sender, amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(186)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV4':
    |
    |    function sell(uint quantity, uint minSaleReturn) public {
  > |        uint amountInWei = formulaContract.calculateSaleReturn(
    |            (tokenContract.totalSupply()- uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |             address(this).balance + virtualReserveBalance,
  at /home/jiaming/slither_fp_files/out6794.sol(190)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV4':
    |    function sell(uint quantity, uint minSaleReturn) public {
    |        uint amountInWei = formulaContract.calculateSaleReturn(
  > |            (tokenContract.totalSupply()- uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |             address(this).balance + virtualReserveBalance,
    |             weight,
  at /home/jiaming/slither_fp_files/out6794.sol(191)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV4':
    |        require (amountInWei >= minSaleReturn);
    |        require (amountInWei <= address(this).balance);
  > |        require (tokenContract.transferFrom(msg.sender, this, quantity));
    |
    |        collectedFees += (amountInWei * fee) / 1000000;
  at /home/jiaming/slither_fp_files/out6794.sol(201)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV4':
    |
    |    function sellOneStep(uint quantity, uint minSaleReturn, address seller) public {
  > |        uint amountInWei = formulaContract.calculateSaleReturn(
    |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |             address(this).balance + virtualReserveBalance,
  at /home/jiaming/slither_fp_files/out6794.sol(214)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV4':
    |    function sellOneStep(uint quantity, uint minSaleReturn, address seller) public {
    |        uint amountInWei = formulaContract.calculateSaleReturn(
  > |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |             address(this).balance + virtualReserveBalance,
    |             weight,
  at /home/jiaming/slither_fp_files/out6794.sol(215)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV4':
    |        require (amountInWei >= minSaleReturn);
    |        require (amountInWei <= address(this).balance);
  > |        require (tokenContract.transferFrom(seller, this, quantity));
    |
    |        collectedFees += (amountInWei * fee) / 1000000;
  at /home/jiaming/slither_fp_files/out6794.sol(225)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV4':
    |
    |    function withdrawEther(uint amountInWei) onlyOwner public {
  > |        msg.sender.transfer(amountInWei); //Transfers in wei
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'ExchangerV4':
    |    function _grantAdmin(address newAdmin) internal
    |    {
  > |        admins[newAdmin] = true;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'ExchangerV4':
    |
    |    function enable() onlyAdmin public {
  > |        enabled = true;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(105)

[31mViolation[0m for UnrestrictedWrite in contract 'ExchangerV4':
    |
    |    function disable() onlyAdmin public {
  > |        enabled = false;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(109)

[31mViolation[0m for UnrestrictedWrite in contract 'ExchangerV4':
    |    function setReserveWeight(uint ppm) onlyAdmin public {
    |        require (ppm>0 && ppm<=1000000);
  > |        weight = uint32(ppm);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(114)

[31mViolation[0m for UnrestrictedWrite in contract 'ExchangerV4':
    |    function setFee(uint ppm) onlyAdmin public {
    |        require (ppm >= 0 && ppm <= 1000000);
  > |        fee = uint32(ppm);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'ExchangerV4':
    |    function setUncirculatedSupplyCount(uint newValue) onlyAdmin public {
    |        require (newValue > 0);
  > |        uncirculatedSupplyCount = uint256(newValue);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'ExchangerV4':
    |
    |    function setVirtualReserveBalance(uint256 amountInWei) onlyAdmin public {
  > |        virtualReserveBalance = amountInWei;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'ExchangerV4':
    |            uint transferToSafeWallet = msg.value * sendToSafeWalletPercentage / 100;
    |            creator.transfer(transferToSafeWallet);
  > |            virtualReserveBalance += transferToSafeWallet;
    |        }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(180)

[31mViolation[0m for UnrestrictedWrite in contract 'ExchangerV4':
    |        }
    |
  > |        collectedFees += (msg.value * fee) / 1000000;
    |
    |        emit Buy(msg.sender, msg.value, amount);
  at /home/jiaming/slither_fp_files/out6794.sol(183)

[31mViolation[0m for UnrestrictedWrite in contract 'ExchangerV4':
    |        require (tokenContract.transferFrom(msg.sender, this, quantity));
    |
  > |        collectedFees += (amountInWei * fee) / 1000000;
    |
    |        emit Sell(msg.sender, quantity, amountInWei);
  at /home/jiaming/slither_fp_files/out6794.sol(203)

[31mViolation[0m for UnrestrictedWrite in contract 'ExchangerV4':
    |        require (tokenContract.transferFrom(seller, this, quantity));
    |
  > |        collectedFees += (amountInWei * fee) / 1000000;
    |
    |        emit Sell(seller, quantity, amountInWei);
  at /home/jiaming/slither_fp_files/out6794.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'ExchangerV4':
    |    function _grantAdmin(address newAdmin) internal
    |    {
  > |        admins[newAdmin] = true;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'ExchangerV4':
    |
    |    function changeOwner(address newOwner) onlyOwner public {
  > |        creator = newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'ExchangerV4':
    |
    |    function revokeAdminStatus(address user) onlyOwner public {
  > |        admins[user] = false;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out6794.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'ExchangerV4':
    |    function setSendToSafeWalletPercentage(uint newValue) onlyOwner public {
    |        require (newValue > 0);
  > |        sendToSafeWalletPercentage = uint(newValue);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'ExchangerV4':
    |
    |    function setThresholdSendToSafeWallet(uint256 amountInWei) onlyOwner public {
  > |        thresholdSendToSafeWallet = amountInWei;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6794.sol(239)


