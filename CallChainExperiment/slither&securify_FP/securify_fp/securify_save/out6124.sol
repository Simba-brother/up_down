Processing contract: /home/jiaming/slither_fp_files/out6124.sol:ERC721
Processing contract: /home/jiaming/slither_fp_files/out6124.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6124.sol:apexAmorphousSolids
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6124.sol:apexONEInterface
[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/slither_fp_files/out6124.sol(508)

[33mWarning[0m for DAOConstantGas in contract 'apexAmorphousSolids':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      if (oldOwner.send(previousOwnerGets)){}
    |    }
    |
  at /home/jiaming/slither_fp_files/out6124.sol(319)

[33mWarning[0m for DAOConstantGas in contract 'apexAmorphousSolids':
    |        uint256 amount = bagHolderFund;
    |        solids[_tokenId].bagHolderFund = 0;
  > |        msg.sender.transfer(amount);
    |  }
    |
  at /home/jiaming/slither_fp_files/out6124.sol(356)

[33mWarning[0m for DAOConstantGas in contract 'apexAmorphousSolids':
    |         uint256 amount = currentDevFee;
    |         currentDevFee = 0;
  > |         contractOwner.transfer(amount);
    |      }
    |  }
  at /home/jiaming/slither_fp_files/out6124.sol(484)

[33mWarning[0m for LockedEther in contract 'apexAmorphousSolids':
    |}
    |
  > |contract apexAmorphousSolids is ERC721 {
    |
    |  /*=================================
  at /home/jiaming/slither_fp_files/out6124.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |
    |  /// @dev A mapping from solid IDs to the address that owns them.
  > |  mapping (uint256 => address) public solidIndexToOwner;
    |
    |  // @dev A mapping from owner address to count of tokens that address owns.
  at /home/jiaming/slither_fp_files/out6124.sol(112)

[31mViolation[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |
    |  /// @dev A mapping from SolidID to an address that has been approved to call
  > |  mapping (uint256 => address) public solidIndexToApproved;
    |
    |  // @dev The address of the owner
  at /home/jiaming/slither_fp_files/out6124.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |  /// @param _tokenId The ID of the Token that can be transferred if this call succeeds.
    |  /// @dev Required for ERC-721 compliance.
  > |  function approve(
    |    address _to,
    |    uint256 _tokenId
  at /home/jiaming/slither_fp_files/out6124.sol(221)

[31mViolation[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |  /// @param _owner The address for balance query
    |  /// @dev Required for ERC-721 compliance.
  > |  function balanceOf(address _owner) public view returns (uint256 balance) {
    |    return ownershipTokenCount[_owner];
    |  }
  at /home/jiaming/slither_fp_files/out6124.sol(236)

[31mViolation[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |  /// @param _tokenId The tokenID for owner inquiry
    |  /// @dev Required for ERC-721 compliance.
  > |  function ownerOf(uint256 _tokenId)
    |    public
    |    view
  at /home/jiaming/slither_fp_files/out6124.sol(269)

[31mViolation[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |
    |  // Allows someone to send ether and obtain the token
  > |  function purchase(uint256 _tokenId , address _referredBy) public payable notContract notPaused notGasbag /*notMoron*/ {
    |
    |    address oldOwner = solidIndexToOwner[_tokenId];
  at /home/jiaming/slither_fp_files/out6124.sol(279)

[31mViolation[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |  }
    |
  > |  function collectBagHolderFund(uint256 _tokenId) public notPaused {
    |      require(msg.sender == solidIndexToOwner[_tokenId]);
    |      uint256 bagHolderFund;
  at /home/jiaming/slither_fp_files/out6124.sol(342)

[31mViolation[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |  /// @param _tokenId The ID of the Token that can be transferred if this call succeeds.
    |  /// @dev Required for ERC-721 compliance.
  > |  function takeOwnership(uint256 _tokenId) public {
    |    address newOwner = msg.sender;
    |    address oldOwner = solidIndexToOwner[_tokenId];
  at /home/jiaming/slither_fp_files/out6124.sol(368)

[31mViolation[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |  /// @param _owner The owner whose tokens we are interested in.
    |  /// @dev This method MUST NEVER be called by smart contract code.
  > |  function tokensOfOwner(address _owner) public view returns(uint256[] ownerTokens) {
    |    uint256 tokenCount = balanceOf(_owner);
    |    if (tokenCount == 0) {
  at /home/jiaming/slither_fp_files/out6124.sol(383)

[31mViolation[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |  /// @param _tokenId The ID of the Token that can be transferred if this call succeeds.
    |  /// @dev Required for ERC-721 compliance.
  > |  function transfer(
    |    address _to,
    |    uint256 _tokenId
  at /home/jiaming/slither_fp_files/out6124.sol(414)

[31mViolation[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |  /// @param _tokenId The ID of the Token that can be transferred if this call succeeds.
    |  /// @dev Required for ERC-721 compliance.
  > |  function transferFrom(
    |    address _from,
    |    address _to,
  at /home/jiaming/slither_fp_files/out6124.sol(429)

[31mViolation[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |   apexONEInterface public exchangeContract;
    |
  > |  function setExchangeAddresss(address _address) public onlyOwner {
    |    exchangeContract = apexONEInterface(_address);
    |    apexONEaddress = _address;
  at /home/jiaming/slither_fp_files/out6124.sol(491)

[31mViolation[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |
    |   /// @dev stop and start
  > |   function setPaused(bool _paused) public onlyOwner {
    |     paused = _paused;
    |    }
  at /home/jiaming/slither_fp_files/out6124.sol(497)

[33mWarning[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |  ==============================*/
    |
  > |  string public constant NAME = "apex Amorphous Solids";
    |  string public constant SYMBOL = "APXA";
    |
  at /home/jiaming/slither_fp_files/out6124.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |
    |  string public constant NAME = "apex Amorphous Solids";
  > |  string public constant SYMBOL = "APXA";
    |
    |  uint256 private increaseRatePercent =  130;
  at /home/jiaming/slither_fp_files/out6124.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |
    |  // @dev The address of the owner
  > |  address public contractOwner;
    |
    |  // @dev Current dev fee
  at /home/jiaming/slither_fp_files/out6124.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |
    |  // @dev Current dev fee
  > |  uint256 public currentDevFee = 0;
    |
    |  // @dev The address of the exchange contract
  at /home/jiaming/slither_fp_files/out6124.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |
    |  // @dev The address of the exchange contract
  > |  address public apexONEaddress;
    |
    |  // @dev paused
  at /home/jiaming/slither_fp_files/out6124.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |
    |  // @dev paused
  > |  bool public paused;
    |
    |  /*==============================
  at /home/jiaming/slither_fp_files/out6124.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |  }
    |
  > |  function implementsERC721() public pure returns (bool) {
    |    return true;
    |  }
  at /home/jiaming/slither_fp_files/out6124.sol(257)

[33mWarning[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |
    |  /// @dev Required for ERC-721 compliance.
  > |  function name() public pure returns (string) {
    |    return NAME;
    |  }
  at /home/jiaming/slither_fp_files/out6124.sol(262)

[33mWarning[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |
    |  /// @dev Required for ERC-721 compliance.
  > |  function symbol() public pure returns (string) {
    |    return SYMBOL;
    |  }
  at /home/jiaming/slither_fp_files/out6124.sol(361)

[33mWarning[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |  /// For querying totalSupply of token
    |  /// @dev Required for ERC-721 compliance.
  > |  function totalSupply() public view returns (uint256 total) {
    |    return 5;
    |  }
  at /home/jiaming/slither_fp_files/out6124.sol(406)

[33mWarning[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |  /*** PRIVATE FUNCTIONS ***/
    |  /// Safety check on _to address to prevent against an unexpected 0x0 default.
  > |  function _addressNotNull(address _to) private pure returns (bool) {
    |    return _to != address(0);
    |  }
  at /home/jiaming/slither_fp_files/out6124.sol(443)

[33mWarning[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |
    |  /// For checking approval of transfer for address _to
  > |  function _approved(address _to, uint256 _tokenId) private view returns (bool) {
    |    return solidIndexToApproved[_tokenId] == _to;
    |  }
  at /home/jiaming/slither_fp_files/out6124.sol(448)

[33mWarning[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |
    |  /// Check for token ownership
  > |  function _owns(address claimant, uint256 _tokenId) private view returns (bool) {
    |    return claimant == solidIndexToOwner[_tokenId];
    |  }
  at /home/jiaming/slither_fp_files/out6124.sol(453)

[33mWarning[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |
    |  /// @dev Assigns ownership of a specific token to an address.
  > |  function _transfer(address _from, address _to, uint256 _tokenId) private {
    |
    |    // no transfer to contract
  at /home/jiaming/slither_fp_files/out6124.sol(458)

[33mWarning[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |
    |  /// @dev Not a charity
  > |  function collectDevFees() public onlyOwner {
    |      if (currentDevFee < address(this).balance){
    |         uint256 amount = currentDevFee;
  at /home/jiaming/slither_fp_files/out6124.sol(480)

[33mWarning[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |
    |  /// @dev Interface to exchange
  > |   apexONEInterface public exchangeContract;
    |
    |  function setExchangeAddresss(address _address) public onlyOwner {
  at /home/jiaming/slither_fp_files/out6124.sol(489)

[33mWarning[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |    * @dev Multiplies two numbers, throws on overflow.
    |    */
  > |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
    |            return 0;
  at /home/jiaming/slither_fp_files/out6124.sol(513)

[33mWarning[0m for MissingInputValidation in contract 'apexAmorphousSolids':
    |    * @dev Integer division of two numbers, truncating the quotient.
    |    */
  > |    function div(uint256 a, uint256 b) internal pure returns (uint256) {
    |        // assert(b > 0); // Solidity automatically throws when dividing by 0
    |        uint256 c = a / b;
  at /home/jiaming/slither_fp_files/out6124.sol(525)

[31mViolation[0m for TODAmount in contract 'apexAmorphousSolids':
    |         uint256 amount = currentDevFee;
    |         currentDevFee = 0;
  > |         contractOwner.transfer(amount);
    |      }
    |  }
  at /home/jiaming/slither_fp_files/out6124.sol(484)

[33mWarning[0m for TODReceiver in contract 'apexAmorphousSolids':
    |    }else{
    |        // send excess back because exchange is not ready
  > |        msg.sender.transfer(exchangeTokensAmount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6124.sol(306)

[33mWarning[0m for TODReceiver in contract 'apexAmorphousSolids':
    |        uint256 amount = bagHolderFund;
    |        solids[_tokenId].bagHolderFund = 0;
  > |        msg.sender.transfer(amount);
    |  }
    |
  at /home/jiaming/slither_fp_files/out6124.sol(356)

[31mViolation[0m for UnhandledException in contract 'apexAmorphousSolids':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      if (oldOwner.send(previousOwnerGets)){}
    |    }
    |
  at /home/jiaming/slither_fp_files/out6124.sol(319)

[33mWarning[0m for UnhandledException in contract 'apexAmorphousSolids':
    |    currentDevFee = currentDevFee + devFeeAmount;
    |
  > |    if (exchangeContract.isStarted()) {
    |        exchangeContract.buyFor.value(exchangeTokensAmount)(_referredBy, msg.sender);
    |    }else{
  at /home/jiaming/slither_fp_files/out6124.sol(302)

[33mWarning[0m for UnhandledException in contract 'apexAmorphousSolids':
    |
    |    if (exchangeContract.isStarted()) {
  > |        exchangeContract.buyFor.value(exchangeTokensAmount)(_referredBy, msg.sender);
    |    }else{
    |        // send excess back because exchange is not ready
  at /home/jiaming/slither_fp_files/out6124.sol(303)

[33mWarning[0m for UnhandledException in contract 'apexAmorphousSolids':
    |    }else{
    |        // send excess back because exchange is not ready
  > |        msg.sender.transfer(exchangeTokensAmount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6124.sol(306)

[33mWarning[0m for UnhandledException in contract 'apexAmorphousSolids':
    |        uint256 amount = bagHolderFund;
    |        solids[_tokenId].bagHolderFund = 0;
  > |        msg.sender.transfer(amount);
    |  }
    |
  at /home/jiaming/slither_fp_files/out6124.sol(356)

[33mWarning[0m for UnhandledException in contract 'apexAmorphousSolids':
    |         uint256 amount = currentDevFee;
    |         currentDevFee = 0;
  > |         contractOwner.transfer(amount);
    |      }
    |  }
  at /home/jiaming/slither_fp_files/out6124.sol(484)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'apexAmorphousSolids':
    |         uint256 amount = currentDevFee;
    |         currentDevFee = 0;
  > |         contractOwner.transfer(amount);
    |      }
    |  }
  at /home/jiaming/slither_fp_files/out6124.sol(484)

[31mViolation[0m for UnrestrictedWrite in contract 'apexAmorphousSolids':
    |    uint256 bagHolderFundAmount = SafeMath.mul(SafeMath.div(currentPrice,increaseRatePercent),bagHolderFundPercent);
    |
  > |    currentDevFee = currentDevFee + devFeeAmount;
    |
    |    if (exchangeContract.isStarted()) {
  at /home/jiaming/slither_fp_files/out6124.sol(300)

[31mViolation[0m for UnrestrictedWrite in contract 'apexAmorphousSolids':
    |
    |    // set new price and saleTime
  > |    solids[_tokenId].highPrice = SafeMath.mul(SafeMath.div(currentPrice,100),increaseRatePercent);
    |    solids[_tokenId].saleTime = now;
    |    solids[_tokenId].bagHolderFund+=bagHolderFundAmount;
  at /home/jiaming/slither_fp_files/out6124.sol(313)

[31mViolation[0m for UnrestrictedWrite in contract 'apexAmorphousSolids':
    |    // set new price and saleTime
    |    solids[_tokenId].highPrice = SafeMath.mul(SafeMath.div(currentPrice,100),increaseRatePercent);
  > |    solids[_tokenId].saleTime = now;
    |    solids[_tokenId].bagHolderFund+=bagHolderFundAmount;
    |
  at /home/jiaming/slither_fp_files/out6124.sol(314)

[31mViolation[0m for UnrestrictedWrite in contract 'apexAmorphousSolids':
    |    solids[_tokenId].highPrice = SafeMath.mul(SafeMath.div(currentPrice,100),increaseRatePercent);
    |    solids[_tokenId].saleTime = now;
  > |    solids[_tokenId].bagHolderFund+=bagHolderFundAmount;
    |
    |    // Pay previous tokenOwner if owner is not contract
  at /home/jiaming/slither_fp_files/out6124.sol(315)

[31mViolation[0m for UnrestrictedWrite in contract 'apexAmorphousSolids':
    |        require(isBagFundAvailable && bagHolderFund > 0);
    |        uint256 amount = bagHolderFund;
  > |        solids[_tokenId].bagHolderFund = 0;
    |        msg.sender.transfer(amount);
    |  }
  at /home/jiaming/slither_fp_files/out6124.sol(355)

[31mViolation[0m for UnrestrictedWrite in contract 'apexAmorphousSolids':
    |    require (length == 0);
    |
  > |    ownershipTokenCount[_to]++;
    |    //transfer ownership
    |    solidIndexToOwner[_tokenId] = _to;
  at /home/jiaming/slither_fp_files/out6124.sol(465)

[31mViolation[0m for UnrestrictedWrite in contract 'apexAmorphousSolids':
    |    ownershipTokenCount[_to]++;
    |    //transfer ownership
  > |    solidIndexToOwner[_tokenId] = _to;
    |
    |    if (_from != address(0)) {
  at /home/jiaming/slither_fp_files/out6124.sol(467)

[31mViolation[0m for UnrestrictedWrite in contract 'apexAmorphousSolids':
    |
    |    if (_from != address(0)) {
  > |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
    |      delete solidIndexToApproved[_tokenId];
  at /home/jiaming/slither_fp_files/out6124.sol(470)

[31mViolation[0m for UnrestrictedWrite in contract 'apexAmorphousSolids':
    |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
  > |      delete solidIndexToApproved[_tokenId];
    |    }
    |
  at /home/jiaming/slither_fp_files/out6124.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'apexAmorphousSolids':
    |    require (length == 0);
    |
  > |    ownershipTokenCount[_to]++;
    |    //transfer ownership
    |    solidIndexToOwner[_tokenId] = _to;
  at /home/jiaming/slither_fp_files/out6124.sol(465)

[33mWarning[0m for UnrestrictedWrite in contract 'apexAmorphousSolids':
    |
    |    if (_from != address(0)) {
  > |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
    |      delete solidIndexToApproved[_tokenId];
  at /home/jiaming/slither_fp_files/out6124.sol(470)

[33mWarning[0m for UnrestrictedWrite in contract 'apexAmorphousSolids':
    |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
  > |      delete solidIndexToApproved[_tokenId];
    |    }
    |
  at /home/jiaming/slither_fp_files/out6124.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'apexAmorphousSolids':
    |    require(_owns(msg.sender, _tokenId));
    |
  > |    solidIndexToApproved[_tokenId] = _to;
    |
    |    emit Approval(msg.sender, _to, _tokenId);
  at /home/jiaming/slither_fp_files/out6124.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'apexAmorphousSolids':
    |      if (currentDevFee < address(this).balance){
    |         uint256 amount = currentDevFee;
  > |         currentDevFee = 0;
    |         contractOwner.transfer(amount);
    |      }
  at /home/jiaming/slither_fp_files/out6124.sol(483)

[33mWarning[0m for UnrestrictedWrite in contract 'apexAmorphousSolids':
    |
    |  function setExchangeAddresss(address _address) public onlyOwner {
  > |    exchangeContract = apexONEInterface(_address);
    |    apexONEaddress = _address;
    |   }
  at /home/jiaming/slither_fp_files/out6124.sol(492)

[33mWarning[0m for UnrestrictedWrite in contract 'apexAmorphousSolids':
    |  function setExchangeAddresss(address _address) public onlyOwner {
    |    exchangeContract = apexONEInterface(_address);
  > |    apexONEaddress = _address;
    |   }
    |
  at /home/jiaming/slither_fp_files/out6124.sol(493)

[33mWarning[0m for UnrestrictedWrite in contract 'apexAmorphousSolids':
    |   /// @dev stop and start
    |   function setPaused(bool _paused) public onlyOwner {
  > |     paused = _paused;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6124.sol(498)


