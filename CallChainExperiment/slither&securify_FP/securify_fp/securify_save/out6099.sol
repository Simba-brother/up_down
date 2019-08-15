Processing contract: /home/jiaming/slither_fp_files/out6099.sol:APGSolids
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6099.sol:ERC721
Processing contract: /home/jiaming/slither_fp_files/out6099.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6099.sol:apexGoldInterface
[33mWarning[0m for DAOConstantGas in contract 'APGSolids':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      if (oldOwner.send(previousOwnerGets)){}
    |    }
    |
  at /home/jiaming/slither_fp_files/out6099.sol(316)

[33mWarning[0m for DAOConstantGas in contract 'APGSolids':
    |        uint256 amount = bagHolderFund;
    |        solids[_tokenId].bagHolderFund = 0;
  > |        msg.sender.transfer(amount);
    |  }
    |
  at /home/jiaming/slither_fp_files/out6099.sol(353)

[33mWarning[0m for DAOConstantGas in contract 'APGSolids':
    |         uint256 amount = currentDevFee;
    |         currentDevFee = 0;
  > |         contractOwner.transfer(amount);
    |      }
    |  }
  at /home/jiaming/slither_fp_files/out6099.sol(481)

[33mWarning[0m for LockedEther in contract 'APGSolids':
    |}
    |
  > |contract APGSolids is ERC721 {
    |
    |  /*=================================
  at /home/jiaming/slither_fp_files/out6099.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'APGSolids':
    |
    |  /// @dev A mapping from solid IDs to the address that owns them.
  > |  mapping (uint256 => address) public solidIndexToOwner;
    |
    |  // @dev A mapping from owner address to count of tokens that address owns.
  at /home/jiaming/slither_fp_files/out6099.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'APGSolids':
    |
    |  /// @dev A mapping from SolidID to an address that has been approved to call
  > |  mapping (uint256 => address) public solidIndexToApproved;
    |
    |  // @dev The address of the owner
  at /home/jiaming/slither_fp_files/out6099.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'APGSolids':
    |  /// @param _tokenId The ID of the Token that can be transferred if this call succeeds.
    |  /// @dev Required for ERC-721 compliance.
  > |  function approve(
    |    address _to,
    |    uint256 _tokenId
  at /home/jiaming/slither_fp_files/out6099.sol(218)

[31mViolation[0m for MissingInputValidation in contract 'APGSolids':
    |  /// @param _owner The address for balance query
    |  /// @dev Required for ERC-721 compliance.
  > |  function balanceOf(address _owner) public view returns (uint256 balance) {
    |    return ownershipTokenCount[_owner];
    |  }
  at /home/jiaming/slither_fp_files/out6099.sol(233)

[31mViolation[0m for MissingInputValidation in contract 'APGSolids':
    |  /// @param _tokenId The tokenID for owner inquiry
    |  /// @dev Required for ERC-721 compliance.
  > |  function ownerOf(uint256 _tokenId)
    |    public
    |    view
  at /home/jiaming/slither_fp_files/out6099.sol(266)

[31mViolation[0m for MissingInputValidation in contract 'APGSolids':
    |
    |  // Allows someone to send ether and obtain the token
  > |  function purchase(uint256 _tokenId , address _referredBy) public payable notContract notPaused notGasbag /*notMoron*/ {
    |
    |    address oldOwner = solidIndexToOwner[_tokenId];
  at /home/jiaming/slither_fp_files/out6099.sol(276)

[31mViolation[0m for MissingInputValidation in contract 'APGSolids':
    |  }
    |
  > |  function collectBagHolderFund(uint256 _tokenId) public notPaused {
    |      require(msg.sender == solidIndexToOwner[_tokenId]);
    |      uint256 bagHolderFund;
  at /home/jiaming/slither_fp_files/out6099.sol(339)

[31mViolation[0m for MissingInputValidation in contract 'APGSolids':
    |  /// @param _tokenId The ID of the Token that can be transferred if this call succeeds.
    |  /// @dev Required for ERC-721 compliance.
  > |  function takeOwnership(uint256 _tokenId) public {
    |    address newOwner = msg.sender;
    |    address oldOwner = solidIndexToOwner[_tokenId];
  at /home/jiaming/slither_fp_files/out6099.sol(365)

[31mViolation[0m for MissingInputValidation in contract 'APGSolids':
    |  /// @param _owner The owner whose tokens we are interested in.
    |  /// @dev This method MUST NEVER be called by smart contract code.
  > |  function tokensOfOwner(address _owner) public view returns(uint256[] ownerTokens) {
    |    uint256 tokenCount = balanceOf(_owner);
    |    if (tokenCount == 0) {
  at /home/jiaming/slither_fp_files/out6099.sol(380)

[31mViolation[0m for MissingInputValidation in contract 'APGSolids':
    |  /// @param _tokenId The ID of the Token that can be transferred if this call succeeds.
    |  /// @dev Required for ERC-721 compliance.
  > |  function transfer(
    |    address _to,
    |    uint256 _tokenId
  at /home/jiaming/slither_fp_files/out6099.sol(411)

[31mViolation[0m for MissingInputValidation in contract 'APGSolids':
    |  /// @param _tokenId The ID of the Token that can be transferred if this call succeeds.
    |  /// @dev Required for ERC-721 compliance.
  > |  function transferFrom(
    |    address _from,
    |    address _to,
  at /home/jiaming/slither_fp_files/out6099.sol(426)

[31mViolation[0m for MissingInputValidation in contract 'APGSolids':
    |   apexGoldInterface public exchangeContract;
    |
  > |  function setExchangeAddresss(address _address) public onlyOwner {
    |    exchangeContract = apexGoldInterface(_address);
    |    apexGoldaddress = _address;
  at /home/jiaming/slither_fp_files/out6099.sol(488)

[31mViolation[0m for MissingInputValidation in contract 'APGSolids':
    |
    |   /// @dev stop and start
  > |   function setPaused(bool _paused) public onlyOwner {
    |     paused = _paused;
    |    }
  at /home/jiaming/slither_fp_files/out6099.sol(494)

[33mWarning[0m for MissingInputValidation in contract 'APGSolids':
    |  ==============================*/
    |
  > |  string public constant NAME = "APG Solids";
    |  string public constant SYMBOL = "APGS";
    |
  at /home/jiaming/slither_fp_files/out6099.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'APGSolids':
    |
    |  string public constant NAME = "APG Solids";
  > |  string public constant SYMBOL = "APGS";
    |
    |  uint256 private increaseRatePercent =  135;
  at /home/jiaming/slither_fp_files/out6099.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'APGSolids':
    |
    |  // @dev The address of the owner
  > |  address public contractOwner;
    |
    |  // @dev Current dev fee
  at /home/jiaming/slither_fp_files/out6099.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'APGSolids':
    |
    |  // @dev Current dev fee
  > |  uint256 public currentDevFee = 0;
    |
    |  // @dev The address of the exchange contract
  at /home/jiaming/slither_fp_files/out6099.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'APGSolids':
    |
    |  // @dev The address of the exchange contract
  > |  address public apexGoldaddress;
    |
    |  // @dev paused
  at /home/jiaming/slither_fp_files/out6099.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'APGSolids':
    |
    |  // @dev paused
  > |  bool public paused;
    |
    |  /*==============================
  at /home/jiaming/slither_fp_files/out6099.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'APGSolids':
    |  }
    |
  > |  function implementsERC721() public pure returns (bool) {
    |    return true;
    |  }
  at /home/jiaming/slither_fp_files/out6099.sol(254)

[33mWarning[0m for MissingInputValidation in contract 'APGSolids':
    |
    |  /// @dev Required for ERC-721 compliance.
  > |  function name() public pure returns (string) {
    |    return NAME;
    |  }
  at /home/jiaming/slither_fp_files/out6099.sol(259)

[33mWarning[0m for MissingInputValidation in contract 'APGSolids':
    |
    |  /// @dev Required for ERC-721 compliance.
  > |  function symbol() public pure returns (string) {
    |    return SYMBOL;
    |  }
  at /home/jiaming/slither_fp_files/out6099.sol(358)

[33mWarning[0m for MissingInputValidation in contract 'APGSolids':
    |  /// For querying totalSupply of token
    |  /// @dev Required for ERC-721 compliance.
  > |  function totalSupply() public view returns (uint256 total) {
    |    return 5;
    |  }
  at /home/jiaming/slither_fp_files/out6099.sol(403)

[33mWarning[0m for MissingInputValidation in contract 'APGSolids':
    |  /*** PRIVATE FUNCTIONS ***/
    |  /// Safety check on _to address to prevent against an unexpected 0x0 default.
  > |  function _addressNotNull(address _to) private pure returns (bool) {
    |    return _to != address(0);
    |  }
  at /home/jiaming/slither_fp_files/out6099.sol(440)

[33mWarning[0m for MissingInputValidation in contract 'APGSolids':
    |
    |  /// For checking approval of transfer for address _to
  > |  function _approved(address _to, uint256 _tokenId) private view returns (bool) {
    |    return solidIndexToApproved[_tokenId] == _to;
    |  }
  at /home/jiaming/slither_fp_files/out6099.sol(445)

[33mWarning[0m for MissingInputValidation in contract 'APGSolids':
    |
    |  /// Check for token ownership
  > |  function _owns(address claimant, uint256 _tokenId) private view returns (bool) {
    |    return claimant == solidIndexToOwner[_tokenId];
    |  }
  at /home/jiaming/slither_fp_files/out6099.sol(450)

[33mWarning[0m for MissingInputValidation in contract 'APGSolids':
    |
    |  /// @dev Assigns ownership of a specific token to an address.
  > |  function _transfer(address _from, address _to, uint256 _tokenId) private {
    |
    |    // no transfer to contract
  at /home/jiaming/slither_fp_files/out6099.sol(455)

[33mWarning[0m for MissingInputValidation in contract 'APGSolids':
    |
    |  /// @dev Not a charity
  > |  function collectDevFees() public onlyOwner {
    |      if (currentDevFee < address(this).balance){
    |         uint256 amount = currentDevFee;
  at /home/jiaming/slither_fp_files/out6099.sol(477)

[33mWarning[0m for MissingInputValidation in contract 'APGSolids':
    |
    |  /// @dev Interface to exchange
  > |   apexGoldInterface public exchangeContract;
    |
    |  function setExchangeAddresss(address _address) public onlyOwner {
  at /home/jiaming/slither_fp_files/out6099.sol(486)

[33mWarning[0m for MissingInputValidation in contract 'APGSolids':
    |    * @dev Multiplies two numbers, throws on overflow.
    |    */
  > |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
    |            return 0;
  at /home/jiaming/slither_fp_files/out6099.sol(510)

[33mWarning[0m for MissingInputValidation in contract 'APGSolids':
    |    * @dev Integer division of two numbers, truncating the quotient.
    |    */
  > |    function div(uint256 a, uint256 b) internal pure returns (uint256) {
    |        // assert(b > 0); // Solidity automatically throws when dividing by 0
    |        uint256 c = a / b;
  at /home/jiaming/slither_fp_files/out6099.sol(522)

[31mViolation[0m for TODAmount in contract 'APGSolids':
    |         uint256 amount = currentDevFee;
    |         currentDevFee = 0;
  > |         contractOwner.transfer(amount);
    |      }
    |  }
  at /home/jiaming/slither_fp_files/out6099.sol(481)

[33mWarning[0m for TODReceiver in contract 'APGSolids':
    |    }else{
    |        // send excess back because exchange is not ready
  > |        msg.sender.transfer(exchangeTokensAmount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6099.sol(303)

[33mWarning[0m for TODReceiver in contract 'APGSolids':
    |        uint256 amount = bagHolderFund;
    |        solids[_tokenId].bagHolderFund = 0;
  > |        msg.sender.transfer(amount);
    |  }
    |
  at /home/jiaming/slither_fp_files/out6099.sol(353)

[31mViolation[0m for UnhandledException in contract 'APGSolids':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      if (oldOwner.send(previousOwnerGets)){}
    |    }
    |
  at /home/jiaming/slither_fp_files/out6099.sol(316)

[33mWarning[0m for UnhandledException in contract 'APGSolids':
    |    currentDevFee = currentDevFee + devFeeAmount;
    |
  > |    if (exchangeContract.isStarted()) {
    |        exchangeContract.buyFor.value(exchangeTokensAmount)(_referredBy, msg.sender);
    |    }else{
  at /home/jiaming/slither_fp_files/out6099.sol(299)

[33mWarning[0m for UnhandledException in contract 'APGSolids':
    |
    |    if (exchangeContract.isStarted()) {
  > |        exchangeContract.buyFor.value(exchangeTokensAmount)(_referredBy, msg.sender);
    |    }else{
    |        // send excess back because exchange is not ready
  at /home/jiaming/slither_fp_files/out6099.sol(300)

[33mWarning[0m for UnhandledException in contract 'APGSolids':
    |    }else{
    |        // send excess back because exchange is not ready
  > |        msg.sender.transfer(exchangeTokensAmount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6099.sol(303)

[33mWarning[0m for UnhandledException in contract 'APGSolids':
    |        uint256 amount = bagHolderFund;
    |        solids[_tokenId].bagHolderFund = 0;
  > |        msg.sender.transfer(amount);
    |  }
    |
  at /home/jiaming/slither_fp_files/out6099.sol(353)

[33mWarning[0m for UnhandledException in contract 'APGSolids':
    |         uint256 amount = currentDevFee;
    |         currentDevFee = 0;
  > |         contractOwner.transfer(amount);
    |      }
    |  }
  at /home/jiaming/slither_fp_files/out6099.sol(481)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'APGSolids':
    |         uint256 amount = currentDevFee;
    |         currentDevFee = 0;
  > |         contractOwner.transfer(amount);
    |      }
    |  }
  at /home/jiaming/slither_fp_files/out6099.sol(481)

[31mViolation[0m for UnrestrictedWrite in contract 'APGSolids':
    |    uint256 bagHolderFundAmount = SafeMath.mul(SafeMath.div(currentPrice,increaseRatePercent),bagHolderFundPercent);
    |
  > |    currentDevFee = currentDevFee + devFeeAmount;
    |
    |    if (exchangeContract.isStarted()) {
  at /home/jiaming/slither_fp_files/out6099.sol(297)

[31mViolation[0m for UnrestrictedWrite in contract 'APGSolids':
    |
    |    // set new price and saleTime
  > |    solids[_tokenId].highPrice = SafeMath.mul(SafeMath.div(currentPrice,100),increaseRatePercent);
    |    solids[_tokenId].saleTime = now;
    |    solids[_tokenId].bagHolderFund+=bagHolderFundAmount;
  at /home/jiaming/slither_fp_files/out6099.sol(310)

[31mViolation[0m for UnrestrictedWrite in contract 'APGSolids':
    |    // set new price and saleTime
    |    solids[_tokenId].highPrice = SafeMath.mul(SafeMath.div(currentPrice,100),increaseRatePercent);
  > |    solids[_tokenId].saleTime = now;
    |    solids[_tokenId].bagHolderFund+=bagHolderFundAmount;
    |
  at /home/jiaming/slither_fp_files/out6099.sol(311)

[31mViolation[0m for UnrestrictedWrite in contract 'APGSolids':
    |    solids[_tokenId].highPrice = SafeMath.mul(SafeMath.div(currentPrice,100),increaseRatePercent);
    |    solids[_tokenId].saleTime = now;
  > |    solids[_tokenId].bagHolderFund+=bagHolderFundAmount;
    |
    |    // Pay previous tokenOwner if owner is not contract
  at /home/jiaming/slither_fp_files/out6099.sol(312)

[31mViolation[0m for UnrestrictedWrite in contract 'APGSolids':
    |        require(isBagFundAvailable && bagHolderFund > 0);
    |        uint256 amount = bagHolderFund;
  > |        solids[_tokenId].bagHolderFund = 0;
    |        msg.sender.transfer(amount);
    |  }
  at /home/jiaming/slither_fp_files/out6099.sol(352)

[31mViolation[0m for UnrestrictedWrite in contract 'APGSolids':
    |    require (length == 0);
    |
  > |    ownershipTokenCount[_to]++;
    |    //transfer ownership
    |    solidIndexToOwner[_tokenId] = _to;
  at /home/jiaming/slither_fp_files/out6099.sol(462)

[31mViolation[0m for UnrestrictedWrite in contract 'APGSolids':
    |    ownershipTokenCount[_to]++;
    |    //transfer ownership
  > |    solidIndexToOwner[_tokenId] = _to;
    |
    |    if (_from != address(0)) {
  at /home/jiaming/slither_fp_files/out6099.sol(464)

[31mViolation[0m for UnrestrictedWrite in contract 'APGSolids':
    |
    |    if (_from != address(0)) {
  > |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
    |      delete solidIndexToApproved[_tokenId];
  at /home/jiaming/slither_fp_files/out6099.sol(467)

[31mViolation[0m for UnrestrictedWrite in contract 'APGSolids':
    |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
  > |      delete solidIndexToApproved[_tokenId];
    |    }
    |
  at /home/jiaming/slither_fp_files/out6099.sol(469)

[33mWarning[0m for UnrestrictedWrite in contract 'APGSolids':
    |    require (length == 0);
    |
  > |    ownershipTokenCount[_to]++;
    |    //transfer ownership
    |    solidIndexToOwner[_tokenId] = _to;
  at /home/jiaming/slither_fp_files/out6099.sol(462)

[33mWarning[0m for UnrestrictedWrite in contract 'APGSolids':
    |
    |    if (_from != address(0)) {
  > |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
    |      delete solidIndexToApproved[_tokenId];
  at /home/jiaming/slither_fp_files/out6099.sol(467)

[33mWarning[0m for UnrestrictedWrite in contract 'APGSolids':
    |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
  > |      delete solidIndexToApproved[_tokenId];
    |    }
    |
  at /home/jiaming/slither_fp_files/out6099.sol(469)

[33mWarning[0m for UnrestrictedWrite in contract 'APGSolids':
    |    require(_owns(msg.sender, _tokenId));
    |
  > |    solidIndexToApproved[_tokenId] = _to;
    |
    |    emit Approval(msg.sender, _to, _tokenId);
  at /home/jiaming/slither_fp_files/out6099.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'APGSolids':
    |      if (currentDevFee < address(this).balance){
    |         uint256 amount = currentDevFee;
  > |         currentDevFee = 0;
    |         contractOwner.transfer(amount);
    |      }
  at /home/jiaming/slither_fp_files/out6099.sol(480)

[33mWarning[0m for UnrestrictedWrite in contract 'APGSolids':
    |
    |  function setExchangeAddresss(address _address) public onlyOwner {
  > |    exchangeContract = apexGoldInterface(_address);
    |    apexGoldaddress = _address;
    |   }
  at /home/jiaming/slither_fp_files/out6099.sol(489)

[33mWarning[0m for UnrestrictedWrite in contract 'APGSolids':
    |  function setExchangeAddresss(address _address) public onlyOwner {
    |    exchangeContract = apexGoldInterface(_address);
  > |    apexGoldaddress = _address;
    |   }
    |
  at /home/jiaming/slither_fp_files/out6099.sol(490)

[33mWarning[0m for UnrestrictedWrite in contract 'APGSolids':
    |   /// @dev stop and start
    |   function setPaused(bool _paused) public onlyOwner {
  > |     paused = _paused;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6099.sol(495)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/slither_fp_files/out6099.sol(505)


