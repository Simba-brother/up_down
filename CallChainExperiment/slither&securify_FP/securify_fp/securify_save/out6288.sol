Processing contract: /home/jiaming/slither_fp_files/out6288.sol:Affiliate
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6288.sol:AuctionBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6288.sol:Beneficiary
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6288.sol:ERC721
Processing contract: /home/jiaming/slither_fp_files/out6288.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6288.sol:PepeAuctionSale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6288.sol:PepeInterface
[33mWarning[0m for LockedEther in contract 'Affiliate':
    |
    |/** @title Affiliate */
  > |contract Affiliate is Ownable {
    |    mapping(address => bool) public canSetAffiliate;
    |    mapping(address => address) public userToAffiliate;
  at /home/jiaming/slither_fp_files/out6288.sol(99)

[31mViolation[0m for MissingInputValidation in contract 'Affiliate':
    |/** @title Affiliate */
    |contract Affiliate is Ownable {
  > |    mapping(address => bool) public canSetAffiliate;
    |    mapping(address => address) public userToAffiliate;
    |
  at /home/jiaming/slither_fp_files/out6288.sol(100)

[31mViolation[0m for MissingInputValidation in contract 'Affiliate':
    |contract Affiliate is Ownable {
    |    mapping(address => bool) public canSetAffiliate;
  > |    mapping(address => address) public userToAffiliate;
    |
    |    /** @dev Allows an address to set the affiliate address for a user
  at /home/jiaming/slither_fp_files/out6288.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'Affiliate':
    |      * @param _setter The address that should be allowed
    |      */
  > |    function setAffiliateSetter(address _setter) public onlyOwner {
    |        canSetAffiliate[_setter] = true;
    |    }
  at /home/jiaming/slither_fp_files/out6288.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'Affiliate':
    |     * @param _affiliate address to set
    |     */
  > |    function setAffiliate(address _user, address _affiliate) public {
    |        require(canSetAffiliate[msg.sender]);
    |        if (userToAffiliate[_user] == address(0)) {
  at /home/jiaming/slither_fp_files/out6288.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'Affiliate':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out6288.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Affiliate':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/slither_fp_files/out6288.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Affiliate':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out6288.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Affiliate':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out6288.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'Affiliate':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out6288.sol(63)

[31mViolation[0m for UnrestrictedWrite in contract 'Affiliate':
    |        require(canSetAffiliate[msg.sender]);
    |        if (userToAffiliate[_user] == address(0)) {
  > |            userToAffiliate[_user] = _affiliate;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out6288.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'Affiliate':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out6288.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'Affiliate':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out6288.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Affiliate':
    |      */
    |    function setAffiliateSetter(address _setter) public onlyOwner {
  > |        canSetAffiliate[_setter] = true;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6288.sol(107)

[33mWarning[0m for DAOConstantGas in contract 'AuctionBase':
    |   */
    |    function getFees() public {
  > |        beneficiary.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6288.sol(306)

[33mWarning[0m for LockedEther in contract 'AuctionBase':
    |
    |/** @title AuctionBase */
  > |contract AuctionBase is Beneficiary {
    |    mapping(uint256 => PepeAuction) public auctions;//maps pepes to auctions
    |    PepeInterface public pepeContract;
  at /home/jiaming/slither_fp_files/out6288.sol(161)

[31mViolation[0m for MissingInputValidation in contract 'AuctionBase':
    |     * @param _beneficiary Address of the new beneficiary
    |     */
  > |    function setBeneficiary(address _beneficiary) public onlyOwner {
    |        beneficiary = _beneficiary;
    |    }
  at /home/jiaming/slither_fp_files/out6288.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'AuctionBase':
    |/** @title AuctionBase */
    |contract AuctionBase is Beneficiary {
  > |    mapping(uint256 => PepeAuction) public auctions;//maps pepes to auctions
    |    PepeInterface public pepeContract;
    |    Affiliate public affiliateContract;
  at /home/jiaming/slither_fp_files/out6288.sol(162)

[31mViolation[0m for MissingInputValidation in contract 'AuctionBase':
    |     * @param  _pepeId the id of the pepe to save
    |     */
  > |    function savePepe(uint256 _pepeId) external {
    |        // solhint-disable-next-line not-rely-on-time
    |        require(auctions[_pepeId].auctionEnd < now);//auction must have ended
  at /home/jiaming/slither_fp_files/out6288.sol(190)

[31mViolation[0m for MissingInputValidation in contract 'AuctionBase':
    |     * @param  _duration How long the auction should take
    |     */
  > |    function startAuction(uint256 _pepeId, uint256 _beginPrice, uint256 _endPrice, uint64 _duration) public {
    |        require(pepeContract.transferFrom(msg.sender, address(this), _pepeId));
    |        // solhint-disable-next-line not-rely-on-time
  at /home/jiaming/slither_fp_files/out6288.sol(216)

[31mViolation[0m for MissingInputValidation in contract 'AuctionBase':
    |     */
    |    // solhint-disable-next-line max-line-length
  > |    function startAuctionDirect(uint256 _pepeId, uint256 _beginPrice, uint256 _endPrice, uint64 _duration, address _seller) public {
    |        require(msg.sender == address(pepeContract)); //can only be called by pepeContract
    |        //solhint-disable-next-line not-rely-on-time
  at /home/jiaming/slither_fp_files/out6288.sol(247)

[31mViolation[0m for MissingInputValidation in contract 'AuctionBase':
    |   * @return currentBid the current price for the auction
    |   */
  > |    function calculateBid(uint256 _pepeId) public view returns(uint256 currentBid) {
    |        PepeAuction storage auction = auctions[_pepeId];
    |        // solhint-disable-next-line not-rely-on-time
  at /home/jiaming/slither_fp_files/out6288.sol(274)

[33mWarning[0m for MissingInputValidation in contract 'AuctionBase':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out6288.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'AuctionBase':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/slither_fp_files/out6288.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'AuctionBase':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out6288.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'AuctionBase':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out6288.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'AuctionBase':
    |/** @title Beneficiary */
    |contract Beneficiary is Ownable {
  > |    address public beneficiary;
    |
    |    constructor() public {
  at /home/jiaming/slither_fp_files/out6288.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'AuctionBase':
    |
    |/** @title AuctionBase */
  > |contract AuctionBase is Beneficiary {
    |    mapping(uint256 => PepeAuction) public auctions;//maps pepes to auctions
    |    PepeInterface public pepeContract;
  at /home/jiaming/slither_fp_files/out6288.sol(161)

[33mWarning[0m for MissingInputValidation in contract 'AuctionBase':
    |contract AuctionBase is Beneficiary {
    |    mapping(uint256 => PepeAuction) public auctions;//maps pepes to auctions
  > |    PepeInterface public pepeContract;
    |    Affiliate public affiliateContract;
    |    uint256 public fee = 37500; //in 1 10000th of a percent so 3.75% at the start
  at /home/jiaming/slither_fp_files/out6288.sol(163)

[33mWarning[0m for MissingInputValidation in contract 'AuctionBase':
    |    mapping(uint256 => PepeAuction) public auctions;//maps pepes to auctions
    |    PepeInterface public pepeContract;
  > |    Affiliate public affiliateContract;
    |    uint256 public fee = 37500; //in 1 10000th of a percent so 3.75% at the start
    |    uint256 public constant FEE_DIVIDER = 1000000; //Perhaps needs better name?
  at /home/jiaming/slither_fp_files/out6288.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'AuctionBase':
    |    PepeInterface public pepeContract;
    |    Affiliate public affiliateContract;
  > |    uint256 public fee = 37500; //in 1 10000th of a percent so 3.75% at the start
    |    uint256 public constant FEE_DIVIDER = 1000000; //Perhaps needs better name?
    |
  at /home/jiaming/slither_fp_files/out6288.sol(165)

[33mWarning[0m for MissingInputValidation in contract 'AuctionBase':
    |    Affiliate public affiliateContract;
    |    uint256 public fee = 37500; //in 1 10000th of a percent so 3.75% at the start
  > |    uint256 public constant FEE_DIVIDER = 1000000; //Perhaps needs better name?
    |
    |    struct PepeAuction {
  at /home/jiaming/slither_fp_files/out6288.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'AuctionBase':
    |     * @param _fee The new fee to set. Must be lower than current fee
    |     */
  > |    function changeFee(uint256 _fee) external onlyOwner {
    |        require(_fee < fee);//fee can not be raised
    |        fee = _fee;
  at /home/jiaming/slither_fp_files/out6288.sol(204)

[33mWarning[0m for MissingInputValidation in contract 'AuctionBase':
    |   * @dev collect the fees from the auction
    |   */
  > |    function getFees() public {
    |        beneficiary.transfer(address(this).balance);
    |    }
  at /home/jiaming/slither_fp_files/out6288.sol(305)

[31mViolation[0m for TODAmount in contract 'AuctionBase':
    |   */
    |    function getFees() public {
  > |        beneficiary.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6288.sol(306)

[31mViolation[0m for TODReceiver in contract 'AuctionBase':
    |   */
    |    function getFees() public {
  > |        beneficiary.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6288.sol(306)

[33mWarning[0m for UnhandledException in contract 'AuctionBase':
    |        // solhint-disable-next-line not-rely-on-time
    |        require(auctions[_pepeId].auctionEnd < now);//auction must have ended
  > |        require(pepeContract.transfer(auctions[_pepeId].seller, _pepeId));//transfer pepe back to seller
    |
    |        emit AuctionFinalized(_pepeId, auctions[_pepeId].seller);
  at /home/jiaming/slither_fp_files/out6288.sol(193)

[33mWarning[0m for UnhandledException in contract 'AuctionBase':
    |     */
    |    function startAuction(uint256 _pepeId, uint256 _beginPrice, uint256 _endPrice, uint64 _duration) public {
  > |        require(pepeContract.transferFrom(msg.sender, address(this), _pepeId));
    |        // solhint-disable-next-line not-rely-on-time
    |        require(now > auctions[_pepeId].auctionEnd);//can only start new auction if no other is active
  at /home/jiaming/slither_fp_files/out6288.sol(217)

[33mWarning[0m for UnhandledException in contract 'AuctionBase':
    |   */
    |    function getFees() public {
  > |        beneficiary.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6288.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AuctionBase':
    |        // solhint-disable-next-line not-rely-on-time
    |        require(auctions[_pepeId].auctionEnd < now);//auction must have ended
  > |        require(pepeContract.transfer(auctions[_pepeId].seller, _pepeId));//transfer pepe back to seller
    |
    |        emit AuctionFinalized(_pepeId, auctions[_pepeId].seller);
  at /home/jiaming/slither_fp_files/out6288.sol(193)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AuctionBase':
    |     */
    |    function startAuction(uint256 _pepeId, uint256 _beginPrice, uint256 _endPrice, uint64 _duration) public {
  > |        require(pepeContract.transferFrom(msg.sender, address(this), _pepeId));
    |        // solhint-disable-next-line not-rely-on-time
    |        require(now > auctions[_pepeId].auctionEnd);//can only start new auction if no other is active
  at /home/jiaming/slither_fp_files/out6288.sol(217)

[31mViolation[0m for UnrestrictedWrite in contract 'AuctionBase':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out6288.sol(63)

[31mViolation[0m for UnrestrictedWrite in contract 'AuctionBase':
    |        emit AuctionFinalized(_pepeId, auctions[_pepeId].seller);
    |
  > |        delete auctions[_pepeId];//delete auction
    |    }
    |
  at /home/jiaming/slither_fp_files/out6288.sol(197)

[31mViolation[0m for UnrestrictedWrite in contract 'AuctionBase':
    |        auction.endPrice = _endPrice;
    |
  > |        auctions[_pepeId] = auction;
    |
    |        emit AuctionStarted(_pepeId, msg.sender);
  at /home/jiaming/slither_fp_files/out6288.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionBase':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out6288.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionBase':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out6288.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionBase':
    |     */
    |    function setBeneficiary(address _beneficiary) public onlyOwner {
  > |        beneficiary = _beneficiary;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out6288.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionBase':
    |    function changeFee(uint256 _fee) external onlyOwner {
    |        require(_fee < fee);//fee can not be raised
  > |        fee = _fee;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6288.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionBase':
    |        auction.endPrice = _endPrice;
    |
  > |        auctions[_pepeId] = auction;
    |
    |        emit AuctionStarted(_pepeId, _seller);
  at /home/jiaming/slither_fp_files/out6288.sol(264)

[33mWarning[0m for LockedEther in contract 'Beneficiary':
    |
    |/** @title Beneficiary */
  > |contract Beneficiary is Ownable {
    |    address public beneficiary;
    |
  at /home/jiaming/slither_fp_files/out6288.sol(75)

[31mViolation[0m for MissingInputValidation in contract 'Beneficiary':
    |     * @param _beneficiary Address of the new beneficiary
    |     */
  > |    function setBeneficiary(address _beneficiary) public onlyOwner {
    |        beneficiary = _beneficiary;
    |    }
  at /home/jiaming/slither_fp_files/out6288.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Beneficiary':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out6288.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Beneficiary':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/slither_fp_files/out6288.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Beneficiary':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out6288.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Beneficiary':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out6288.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Beneficiary':
    |/** @title Beneficiary */
    |contract Beneficiary is Ownable {
  > |    address public beneficiary;
    |
    |    constructor() public {
  at /home/jiaming/slither_fp_files/out6288.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'Beneficiary':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out6288.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Beneficiary':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out6288.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'Beneficiary':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out6288.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Beneficiary':
    |     */
    |    function setBeneficiary(address _beneficiary) public onlyOwner {
  > |        beneficiary = _beneficiary;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out6288.sol(87)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/slither_fp_files/out6288.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out6288.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/slither_fp_files/out6288.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out6288.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out6288.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out6288.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out6288.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out6288.sol(63)

[31mViolation[0m for DAO in contract 'PepeAuctionSale':
    |
    |        // solhint-disable-next-line
  > |        if(affiliateContract.userToAffiliate(msg.sender) != address(0) && affiliateContract.userToAffiliate(msg.sender).send(totalFee / 2)) { //if user has affiliate
    |            //nothing to do here. Just to suppress warning
    |        }
  at /home/jiaming/slither_fp_files/out6288.sol(346)

[31mViolation[0m for DAO in contract 'PepeAuctionSale':
    |        }
    |        //Send pepe to buyer
  > |        if (!pepeContract.transfer(msg.sender, _pepeId)) {
    |            revert(); //can't complete transfer if this fails
    |        }
  at /home/jiaming/slither_fp_files/out6288.sol(350)

[33mWarning[0m for DAO in contract 'PepeAuctionSale':
    |
    |        // solhint-disable-next-line
  > |        if(affiliateContract.userToAffiliate(msg.sender) != address(0) && affiliateContract.userToAffiliate(msg.sender).send(totalFee / 2)) { //if user has affiliate
    |            //nothing to do here. Just to suppress warning
    |        }
  at /home/jiaming/slither_fp_files/out6288.sol(346)

[31mViolation[0m for DAOConstantGas in contract 'PepeAuctionSale':
    |
    |        //Send ETH to seller
  > |        auction.seller.transfer(price - totalFee);
    |        //send ETH to beneficiary
    |
  at /home/jiaming/slither_fp_files/out6288.sol(342)

[33mWarning[0m for DAOConstantGas in contract 'PepeAuctionSale':
    |   */
    |    function getFees() public {
  > |        beneficiary.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6288.sol(306)

[33mWarning[0m for DAOConstantGas in contract 'PepeAuctionSale':
    |
    |        //Send ETH to seller
  > |        auction.seller.transfer(price - totalFee);
    |        //send ETH to beneficiary
    |
  at /home/jiaming/slither_fp_files/out6288.sol(342)

[33mWarning[0m for LockedEther in contract 'PepeAuctionSale':
    |//Most functionality is in the AuctionBase contract.
    |//This contract is to buy pepes on the auction.
  > |contract PepeAuctionSale is AuctionBase {
    |  // solhint-disable-next-line
    |    constructor(address _pepeContract, address _affiliateContract) AuctionBase(_pepeContract, _affiliateContract) public {
  at /home/jiaming/slither_fp_files/out6288.sol(321)

[31mViolation[0m for MissingInputValidation in contract 'PepeAuctionSale':
    |     * @param _beneficiary Address of the new beneficiary
    |     */
  > |    function setBeneficiary(address _beneficiary) public onlyOwner {
    |        beneficiary = _beneficiary;
    |    }
  at /home/jiaming/slither_fp_files/out6288.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'PepeAuctionSale':
    |/** @title AuctionBase */
    |contract AuctionBase is Beneficiary {
  > |    mapping(uint256 => PepeAuction) public auctions;//maps pepes to auctions
    |    PepeInterface public pepeContract;
    |    Affiliate public affiliateContract;
  at /home/jiaming/slither_fp_files/out6288.sol(162)

[31mViolation[0m for MissingInputValidation in contract 'PepeAuctionSale':
    |     * @param  _pepeId the id of the pepe to save
    |     */
  > |    function savePepe(uint256 _pepeId) external {
    |        // solhint-disable-next-line not-rely-on-time
    |        require(auctions[_pepeId].auctionEnd < now);//auction must have ended
  at /home/jiaming/slither_fp_files/out6288.sol(190)

[31mViolation[0m for MissingInputValidation in contract 'PepeAuctionSale':
    |     * @param  _duration How long the auction should take
    |     */
  > |    function startAuction(uint256 _pepeId, uint256 _beginPrice, uint256 _endPrice, uint64 _duration) public {
    |        require(pepeContract.transferFrom(msg.sender, address(this), _pepeId));
    |        // solhint-disable-next-line not-rely-on-time
  at /home/jiaming/slither_fp_files/out6288.sol(216)

[31mViolation[0m for MissingInputValidation in contract 'PepeAuctionSale':
    |     */
    |    // solhint-disable-next-line max-line-length
  > |    function startAuctionDirect(uint256 _pepeId, uint256 _beginPrice, uint256 _endPrice, uint64 _duration, address _seller) public {
    |        require(msg.sender == address(pepeContract)); //can only be called by pepeContract
    |        //solhint-disable-next-line not-rely-on-time
  at /home/jiaming/slither_fp_files/out6288.sol(247)

[31mViolation[0m for MissingInputValidation in contract 'PepeAuctionSale':
    |   * @return currentBid the current price for the auction
    |   */
  > |    function calculateBid(uint256 _pepeId) public view returns(uint256 currentBid) {
    |        PepeAuction storage auction = auctions[_pepeId];
    |        // solhint-disable-next-line not-rely-on-time
  at /home/jiaming/slither_fp_files/out6288.sol(274)

[31mViolation[0m for MissingInputValidation in contract 'PepeAuctionSale':
    |     * @param  _pepeId The id of the pepe to buy
    |     */
  > |    function buyPepe(uint256 _pepeId) public payable {
    |        PepeAuction storage auction = auctions[_pepeId];
    |
  at /home/jiaming/slither_fp_files/out6288.sol(331)

[31mViolation[0m for MissingInputValidation in contract 'PepeAuctionSale':
    |     */
    |    // solhint-disable-next-line func-order
  > |    function buyPepeAffiliated(uint256 _pepeId, address _affiliate) external payable {
    |        affiliateContract.setAffiliate(msg.sender, _affiliate);
    |        buyPepe(_pepeId);
  at /home/jiaming/slither_fp_files/out6288.sol(369)

[33mWarning[0m for MissingInputValidation in contract 'PepeAuctionSale':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out6288.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'PepeAuctionSale':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/slither_fp_files/out6288.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'PepeAuctionSale':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out6288.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'PepeAuctionSale':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out6288.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'PepeAuctionSale':
    |/** @title Beneficiary */
    |contract Beneficiary is Ownable {
  > |    address public beneficiary;
    |
    |    constructor() public {
  at /home/jiaming/slither_fp_files/out6288.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'PepeAuctionSale':
    |contract AuctionBase is Beneficiary {
    |    mapping(uint256 => PepeAuction) public auctions;//maps pepes to auctions
  > |    PepeInterface public pepeContract;
    |    Affiliate public affiliateContract;
    |    uint256 public fee = 37500; //in 1 10000th of a percent so 3.75% at the start
  at /home/jiaming/slither_fp_files/out6288.sol(163)

[33mWarning[0m for MissingInputValidation in contract 'PepeAuctionSale':
    |    mapping(uint256 => PepeAuction) public auctions;//maps pepes to auctions
    |    PepeInterface public pepeContract;
  > |    Affiliate public affiliateContract;
    |    uint256 public fee = 37500; //in 1 10000th of a percent so 3.75% at the start
    |    uint256 public constant FEE_DIVIDER = 1000000; //Perhaps needs better name?
  at /home/jiaming/slither_fp_files/out6288.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'PepeAuctionSale':
    |    PepeInterface public pepeContract;
    |    Affiliate public affiliateContract;
  > |    uint256 public fee = 37500; //in 1 10000th of a percent so 3.75% at the start
    |    uint256 public constant FEE_DIVIDER = 1000000; //Perhaps needs better name?
    |
  at /home/jiaming/slither_fp_files/out6288.sol(165)

[33mWarning[0m for MissingInputValidation in contract 'PepeAuctionSale':
    |    Affiliate public affiliateContract;
    |    uint256 public fee = 37500; //in 1 10000th of a percent so 3.75% at the start
  > |    uint256 public constant FEE_DIVIDER = 1000000; //Perhaps needs better name?
    |
    |    struct PepeAuction {
  at /home/jiaming/slither_fp_files/out6288.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'PepeAuctionSale':
    |     * @param _fee The new fee to set. Must be lower than current fee
    |     */
  > |    function changeFee(uint256 _fee) external onlyOwner {
    |        require(_fee < fee);//fee can not be raised
    |        fee = _fee;
  at /home/jiaming/slither_fp_files/out6288.sol(204)

[33mWarning[0m for MissingInputValidation in contract 'PepeAuctionSale':
    |   * @dev collect the fees from the auction
    |   */
  > |    function getFees() public {
    |        beneficiary.transfer(address(this).balance);
    |    }
  at /home/jiaming/slither_fp_files/out6288.sol(305)

[33mWarning[0m for MissingInputValidation in contract 'PepeAuctionSale':
    |//Most functionality is in the AuctionBase contract.
    |//This contract is to buy pepes on the auction.
  > |contract PepeAuctionSale is AuctionBase {
    |  // solhint-disable-next-line
    |    constructor(address _pepeContract, address _affiliateContract) AuctionBase(_pepeContract, _affiliateContract) public {
  at /home/jiaming/slither_fp_files/out6288.sol(321)

[31mViolation[0m for TODAmount in contract 'PepeAuctionSale':
    |   */
    |    function getFees() public {
  > |        beneficiary.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6288.sol(306)

[31mViolation[0m for TODReceiver in contract 'PepeAuctionSale':
    |   */
    |    function getFees() public {
  > |        beneficiary.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6288.sol(306)

[33mWarning[0m for TODReceiver in contract 'PepeAuctionSale':
    |
    |        if (msg.value > price) { //return ether send to much
  > |            msg.sender.transfer(msg.value - price);
    |        }
    |
  at /home/jiaming/slither_fp_files/out6288.sol(357)

[31mViolation[0m for UnhandledException in contract 'PepeAuctionSale':
    |
    |        // solhint-disable-next-line
  > |        if(affiliateContract.userToAffiliate(msg.sender) != address(0) && affiliateContract.userToAffiliate(msg.sender).send(totalFee / 2)) { //if user has affiliate
    |            //nothing to do here. Just to suppress warning
    |        }
  at /home/jiaming/slither_fp_files/out6288.sol(346)

[33mWarning[0m for UnhandledException in contract 'PepeAuctionSale':
    |        // solhint-disable-next-line not-rely-on-time
    |        require(auctions[_pepeId].auctionEnd < now);//auction must have ended
  > |        require(pepeContract.transfer(auctions[_pepeId].seller, _pepeId));//transfer pepe back to seller
    |
    |        emit AuctionFinalized(_pepeId, auctions[_pepeId].seller);
  at /home/jiaming/slither_fp_files/out6288.sol(193)

[33mWarning[0m for UnhandledException in contract 'PepeAuctionSale':
    |     */
    |    function startAuction(uint256 _pepeId, uint256 _beginPrice, uint256 _endPrice, uint64 _duration) public {
  > |        require(pepeContract.transferFrom(msg.sender, address(this), _pepeId));
    |        // solhint-disable-next-line not-rely-on-time
    |        require(now > auctions[_pepeId].auctionEnd);//can only start new auction if no other is active
  at /home/jiaming/slither_fp_files/out6288.sol(217)

[33mWarning[0m for UnhandledException in contract 'PepeAuctionSale':
    |   */
    |    function getFees() public {
  > |        beneficiary.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6288.sol(306)

[33mWarning[0m for UnhandledException in contract 'PepeAuctionSale':
    |
    |        //Send ETH to seller
  > |        auction.seller.transfer(price - totalFee);
    |        //send ETH to beneficiary
    |
  at /home/jiaming/slither_fp_files/out6288.sol(342)

[33mWarning[0m for UnhandledException in contract 'PepeAuctionSale':
    |
    |        // solhint-disable-next-line
  > |        if(affiliateContract.userToAffiliate(msg.sender) != address(0) && affiliateContract.userToAffiliate(msg.sender).send(totalFee / 2)) { //if user has affiliate
    |            //nothing to do here. Just to suppress warning
    |        }
  at /home/jiaming/slither_fp_files/out6288.sol(346)

[33mWarning[0m for UnhandledException in contract 'PepeAuctionSale':
    |        }
    |        //Send pepe to buyer
  > |        if (!pepeContract.transfer(msg.sender, _pepeId)) {
    |            revert(); //can't complete transfer if this fails
    |        }
  at /home/jiaming/slither_fp_files/out6288.sol(350)

[33mWarning[0m for UnhandledException in contract 'PepeAuctionSale':
    |
    |        if (msg.value > price) { //return ether send to much
  > |            msg.sender.transfer(msg.value - price);
    |        }
    |
  at /home/jiaming/slither_fp_files/out6288.sol(357)

[33mWarning[0m for UnhandledException in contract 'PepeAuctionSale':
    |    // solhint-disable-next-line func-order
    |    function buyPepeAffiliated(uint256 _pepeId, address _affiliate) external payable {
  > |        affiliateContract.setAffiliate(msg.sender, _affiliate);
    |        buyPepe(_pepeId);
    |    }
  at /home/jiaming/slither_fp_files/out6288.sol(370)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PepeAuctionSale':
    |        // solhint-disable-next-line not-rely-on-time
    |        require(auctions[_pepeId].auctionEnd < now);//auction must have ended
  > |        require(pepeContract.transfer(auctions[_pepeId].seller, _pepeId));//transfer pepe back to seller
    |
    |        emit AuctionFinalized(_pepeId, auctions[_pepeId].seller);
  at /home/jiaming/slither_fp_files/out6288.sol(193)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PepeAuctionSale':
    |     */
    |    function startAuction(uint256 _pepeId, uint256 _beginPrice, uint256 _endPrice, uint64 _duration) public {
  > |        require(pepeContract.transferFrom(msg.sender, address(this), _pepeId));
    |        // solhint-disable-next-line not-rely-on-time
    |        require(now > auctions[_pepeId].auctionEnd);//can only start new auction if no other is active
  at /home/jiaming/slither_fp_files/out6288.sol(217)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PepeAuctionSale':
    |    // solhint-disable-next-line func-order
    |    function buyPepeAffiliated(uint256 _pepeId, address _affiliate) external payable {
  > |        affiliateContract.setAffiliate(msg.sender, _affiliate);
    |        buyPepe(_pepeId);
    |    }
  at /home/jiaming/slither_fp_files/out6288.sol(370)

[31mViolation[0m for UnrestrictedWrite in contract 'PepeAuctionSale':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out6288.sol(63)

[31mViolation[0m for UnrestrictedWrite in contract 'PepeAuctionSale':
    |        emit AuctionFinalized(_pepeId, auctions[_pepeId].seller);
    |
  > |        delete auctions[_pepeId];//delete auction
    |    }
    |
  at /home/jiaming/slither_fp_files/out6288.sol(197)

[31mViolation[0m for UnrestrictedWrite in contract 'PepeAuctionSale':
    |        auction.endPrice = _endPrice;
    |
  > |        auctions[_pepeId] = auction;
    |
    |        emit AuctionStarted(_pepeId, msg.sender);
  at /home/jiaming/slither_fp_files/out6288.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'PepeAuctionSale':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out6288.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'PepeAuctionSale':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out6288.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'PepeAuctionSale':
    |     */
    |    function setBeneficiary(address _beneficiary) public onlyOwner {
  > |        beneficiary = _beneficiary;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out6288.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'PepeAuctionSale':
    |    function changeFee(uint256 _fee) external onlyOwner {
    |        require(_fee < fee);//fee can not be raised
  > |        fee = _fee;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6288.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'PepeAuctionSale':
    |        auction.endPrice = _endPrice;
    |
  > |        auctions[_pepeId] = auction;
    |
    |        emit AuctionStarted(_pepeId, _seller);
  at /home/jiaming/slither_fp_files/out6288.sol(264)


