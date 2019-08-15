Processing contract: /home/jiaming/slither_fp_files/out10431.sol:BablosCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10431.sol:BablosCrowdsaleWalletInterface
Processing contract: /home/jiaming/slither_fp_files/out10431.sol:BablosTokenInterface
Processing contract: /home/jiaming/slither_fp_files/out10431.sol:ERC20
Processing contract: /home/jiaming/slither_fp_files/out10431.sol:ERC20Basic
Processing contract: /home/jiaming/slither_fp_files/out10431.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10431.sol:PriceUpdaterInterface
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10431.sol:ReentrancyGuard
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10431.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAO in contract 'BablosCrowdsale':
    |
    |    if (_currency == PriceUpdaterInterface.Currency.ETH) {
  > |      wallet.invested.value(_amount)(_beneficiary, _tokens, _currency, _amount);
    |      emit FundTransfer(_beneficiary, _amount);
    |    } else {
  at /home/jiaming/slither_fp_files/out10431.sol(480)

[33mWarning[0m for LockedEther in contract 'BablosCrowdsale':
    |}
    |
  > |contract BablosCrowdsale is ReentrancyGuard, Ownable {
    |  using SafeMath for uint;
    |
  at /home/jiaming/slither_fp_files/out10431.sol(273)

[33mWarning[0m for TODAmount in contract 'BablosCrowdsale':
    |
    |      if (_currency == PriceUpdaterInterface.Currency.ETH && _payment > 0) {
  > |        _client.transfer(_payment);
    |      }
    |    } else {
  at /home/jiaming/slither_fp_files/out10431.sol(347)

[33mWarning[0m for TODAmount in contract 'BablosCrowdsale':
    |
    |    if (_currency == PriceUpdaterInterface.Currency.ETH) {
  > |      wallet.invested.value(_amount)(_beneficiary, _tokens, _currency, _amount);
    |      emit FundTransfer(_beneficiary, _amount);
    |    } else {
  at /home/jiaming/slither_fp_files/out10431.sol(480)

[31mViolation[0m for TODReceiver in contract 'BablosCrowdsale':
    |
    |    if (_currency == PriceUpdaterInterface.Currency.ETH) {
  > |      wallet.invested.value(_amount)(_beneficiary, _tokens, _currency, _amount);
    |      emit FundTransfer(_beneficiary, _amount);
    |    } else {
  at /home/jiaming/slither_fp_files/out10431.sol(480)

[33mWarning[0m for TODReceiver in contract 'BablosCrowdsale':
    |
    |      if (_currency == PriceUpdaterInterface.Currency.ETH && _payment > 0) {
  > |        _client.transfer(_payment);
    |      }
    |    } else {
  at /home/jiaming/slither_fp_files/out10431.sol(347)

[33mWarning[0m for UnhandledException in contract 'BablosCrowdsale':
    |
    |      if (_currency == PriceUpdaterInterface.Currency.ETH && _payment > 0) {
  > |        _client.transfer(_payment);
    |      }
    |    } else {
  at /home/jiaming/slither_fp_files/out10431.sol(347)

[33mWarning[0m for UnhandledException in contract 'BablosCrowdsale':
    |    uint tokens = _getTokenAmount(weiAmount);
    |
  > |    require(tokens >= minimumAmount && token.balanceOf(address(this)) >= tokens);
    |
    |    _internalBuy(_beneficiary, PriceUpdaterInterface.Currency.ETH, weiAmount, tokens);
  at /home/jiaming/slither_fp_files/out10431.sol(420)

[33mWarning[0m for UnhandledException in contract 'BablosCrowdsale':
    |  {
    |    require(_beneficiary != address(0));
  > |    require(_tokens >= minimumAmount && token.balanceOf(address(this)) >= _tokens);
    |    require(_amount != 0);
    |
  at /home/jiaming/slither_fp_files/out10431.sol(439)

[33mWarning[0m for UnhandledException in contract 'BablosCrowdsale':
    |      tokensSoldExternal = tokensSoldExternal.add(_tokens);
    |    }
  > |    token.transfer(_beneficiary, _tokens);
    |
    |    emit TokenPurchase(
  at /home/jiaming/slither_fp_files/out10431.sol(469)

[33mWarning[0m for UnhandledException in contract 'BablosCrowdsale':
    |
    |    if (_currency == PriceUpdaterInterface.Currency.ETH) {
  > |      wallet.invested.value(_amount)(_beneficiary, _tokens, _currency, _amount);
    |      emit FundTransfer(_beneficiary, _amount);
    |    } else {
  at /home/jiaming/slither_fp_files/out10431.sol(480)

[33mWarning[0m for UnhandledException in contract 'BablosCrowdsale':
    |      emit FundTransfer(_beneficiary, _amount);
    |    } else {
  > |      wallet.invested(_beneficiary, _tokens, _currency, _amount);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out10431.sol(483)

[33mWarning[0m for UnhandledException in contract 'BablosCrowdsale':
    |    
    |    // check if soft cap reached
  > |    if (state == SaleState.ACTIVE && wallet.getTotalInvestedEther() >= softCap) {
    |      changeState(SaleState.SOFT_CAP_REACHED);
    |    }
  at /home/jiaming/slither_fp_files/out10431.sol(487)

[33mWarning[0m for UnhandledException in contract 'BablosCrowdsale':
    |
    |    // check if all tokens are sold
  > |    if (token.balanceOf(address(this)) < minimumAmount) {
    |      finishSale();
    |    }
  at /home/jiaming/slither_fp_files/out10431.sol(492)

[33mWarning[0m for UnhandledException in contract 'BablosCrowdsale':
    |
    |    // check if hard cap reached
  > |    if (state == SaleState.SOFT_CAP_REACHED && wallet.getTotalInvestedEur() >= hardCap) {
    |      finishSale();
    |    }
  at /home/jiaming/slither_fp_files/out10431.sol(497)

[33mWarning[0m for UnhandledException in contract 'BablosCrowdsale':
    |
    |  function finishSale() private {
  > |    if (wallet.getTotalInvestedEther() < softCap) {
    |      changeState(SaleState.FAILED);
    |    } else {
  at /home/jiaming/slither_fp_files/out10431.sol(503)

[33mWarning[0m for UnhandledException in contract 'BablosCrowdsale':
    |
    |  function onSoftCapReached() private {
  > |    wallet.changeState(BablosCrowdsaleWalletInterface.State.SUCCEEDED);
    |  }
    |
  at /home/jiaming/slither_fp_files/out10431.sol(547)

[33mWarning[0m for UnhandledException in contract 'BablosCrowdsale':
    |  function onSuccess() private {
    |    // burn all remaining tokens
  > |    token.burn(token.balanceOf(address(this)));
    |    token.thaw();
    |    wallet.unholdTeamTokens();
  at /home/jiaming/slither_fp_files/out10431.sol(552)

[33mWarning[0m for UnhandledException in contract 'BablosCrowdsale':
    |    // burn all remaining tokens
    |    token.burn(token.balanceOf(address(this)));
  > |    token.thaw();
    |    wallet.unholdTeamTokens();
    |    wallet.detachController();
  at /home/jiaming/slither_fp_files/out10431.sol(553)

[33mWarning[0m for UnhandledException in contract 'BablosCrowdsale':
    |    token.burn(token.balanceOf(address(this)));
    |    token.thaw();
  > |    wallet.unholdTeamTokens();
    |    wallet.detachController();
    |  }
  at /home/jiaming/slither_fp_files/out10431.sol(554)

[33mWarning[0m for UnhandledException in contract 'BablosCrowdsale':
    |    token.thaw();
    |    wallet.unholdTeamTokens();
  > |    wallet.detachController();
    |  }
    |
  at /home/jiaming/slither_fp_files/out10431.sol(555)

[33mWarning[0m for UnhandledException in contract 'BablosCrowdsale':
    |  function onFailure() private {
    |    // allow clients to get their ether back
  > |    wallet.changeState(BablosCrowdsaleWalletInterface.State.REFUNDING);
    |    wallet.unholdTeamTokens();
    |    wallet.detachController();
  at /home/jiaming/slither_fp_files/out10431.sol(560)

[33mWarning[0m for UnhandledException in contract 'BablosCrowdsale':
    |    // allow clients to get their ether back
    |    wallet.changeState(BablosCrowdsaleWalletInterface.State.REFUNDING);
  > |    wallet.unholdTeamTokens();
    |    wallet.detachController();
    |  }
  at /home/jiaming/slither_fp_files/out10431.sol(561)

[33mWarning[0m for UnhandledException in contract 'BablosCrowdsale':
    |    wallet.changeState(BablosCrowdsaleWalletInterface.State.REFUNDING);
    |    wallet.unholdTeamTokens();
  > |    wallet.detachController();
    |  }
    |
  at /home/jiaming/slither_fp_files/out10431.sol(562)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BablosCrowdsale':
    |
    |      if (_currency == PriceUpdaterInterface.Currency.ETH && _payment > 0) {
  > |        _client.transfer(_payment);
    |      }
    |    } else {
  at /home/jiaming/slither_fp_files/out10431.sol(347)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BablosCrowdsale':
    |    uint tokens = _getTokenAmount(weiAmount);
    |
  > |    require(tokens >= minimumAmount && token.balanceOf(address(this)) >= tokens);
    |
    |    _internalBuy(_beneficiary, PriceUpdaterInterface.Currency.ETH, weiAmount, tokens);
  at /home/jiaming/slither_fp_files/out10431.sol(420)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BablosCrowdsale':
    |  {
    |    require(_beneficiary != address(0));
  > |    require(_tokens >= minimumAmount && token.balanceOf(address(this)) >= _tokens);
    |    require(_amount != 0);
    |
  at /home/jiaming/slither_fp_files/out10431.sol(439)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BablosCrowdsale':
    |      tokensSoldExternal = tokensSoldExternal.add(_tokens);
    |    }
  > |    token.transfer(_beneficiary, _tokens);
    |
    |    emit TokenPurchase(
  at /home/jiaming/slither_fp_files/out10431.sol(469)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BablosCrowdsale':
    |
    |    if (_currency == PriceUpdaterInterface.Currency.ETH) {
  > |      wallet.invested.value(_amount)(_beneficiary, _tokens, _currency, _amount);
    |      emit FundTransfer(_beneficiary, _amount);
    |    } else {
  at /home/jiaming/slither_fp_files/out10431.sol(480)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BablosCrowdsale':
    |      emit FundTransfer(_beneficiary, _amount);
    |    } else {
  > |      wallet.invested(_beneficiary, _tokens, _currency, _amount);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out10431.sol(483)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BablosCrowdsale':
    |    
    |    // check if soft cap reached
  > |    if (state == SaleState.ACTIVE && wallet.getTotalInvestedEther() >= softCap) {
    |      changeState(SaleState.SOFT_CAP_REACHED);
    |    }
  at /home/jiaming/slither_fp_files/out10431.sol(487)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BablosCrowdsale':
    |
    |    // check if all tokens are sold
  > |    if (token.balanceOf(address(this)) < minimumAmount) {
    |      finishSale();
    |    }
  at /home/jiaming/slither_fp_files/out10431.sol(492)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BablosCrowdsale':
    |
    |    // check if hard cap reached
  > |    if (state == SaleState.SOFT_CAP_REACHED && wallet.getTotalInvestedEur() >= hardCap) {
    |      finishSale();
    |    }
  at /home/jiaming/slither_fp_files/out10431.sol(497)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BablosCrowdsale':
    |
    |  function finishSale() private {
  > |    if (wallet.getTotalInvestedEther() < softCap) {
    |      changeState(SaleState.FAILED);
    |    } else {
  at /home/jiaming/slither_fp_files/out10431.sol(503)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BablosCrowdsale':
    |
    |  function onSoftCapReached() private {
  > |    wallet.changeState(BablosCrowdsaleWalletInterface.State.SUCCEEDED);
    |  }
    |
  at /home/jiaming/slither_fp_files/out10431.sol(547)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BablosCrowdsale':
    |  function onSuccess() private {
    |    // burn all remaining tokens
  > |    token.burn(token.balanceOf(address(this)));
    |    token.thaw();
    |    wallet.unholdTeamTokens();
  at /home/jiaming/slither_fp_files/out10431.sol(552)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BablosCrowdsale':
    |    // burn all remaining tokens
    |    token.burn(token.balanceOf(address(this)));
  > |    token.thaw();
    |    wallet.unholdTeamTokens();
    |    wallet.detachController();
  at /home/jiaming/slither_fp_files/out10431.sol(553)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BablosCrowdsale':
    |    token.burn(token.balanceOf(address(this)));
    |    token.thaw();
  > |    wallet.unholdTeamTokens();
    |    wallet.detachController();
    |  }
  at /home/jiaming/slither_fp_files/out10431.sol(554)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BablosCrowdsale':
    |    token.thaw();
    |    wallet.unholdTeamTokens();
  > |    wallet.detachController();
    |  }
    |
  at /home/jiaming/slither_fp_files/out10431.sol(555)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BablosCrowdsale':
    |  function onFailure() private {
    |    // allow clients to get their ether back
  > |    wallet.changeState(BablosCrowdsaleWalletInterface.State.REFUNDING);
    |    wallet.unholdTeamTokens();
    |    wallet.detachController();
  at /home/jiaming/slither_fp_files/out10431.sol(560)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BablosCrowdsale':
    |    // allow clients to get their ether back
    |    wallet.changeState(BablosCrowdsaleWalletInterface.State.REFUNDING);
  > |    wallet.unholdTeamTokens();
    |    wallet.detachController();
    |  }
  at /home/jiaming/slither_fp_files/out10431.sol(561)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BablosCrowdsale':
    |    wallet.changeState(BablosCrowdsaleWalletInterface.State.REFUNDING);
    |    wallet.unholdTeamTokens();
  > |    wallet.detachController();
    |  }
    |
  at /home/jiaming/slither_fp_files/out10431.sol(562)

[33mWarning[0m for UnrestrictedWrite in contract 'BablosCrowdsale':
    |  modifier nonReentrant() {
    |    require(!reentrancyLock);
  > |    reentrancyLock = true;
    |    _;
    |    reentrancyLock = false;
  at /home/jiaming/slither_fp_files/out10431.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'BablosCrowdsale':
    |    reentrancyLock = true;
    |    _;
  > |    reentrancyLock = false;
    |  }
    |
  at /home/jiaming/slither_fp_files/out10431.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'BablosCrowdsale':
    |    require(isActive());
    |    if (_currency == PriceUpdaterInterface.Currency.ETH) {
  > |      tokensSold = tokensSold.add(_tokens);
    |    } else {
    |      tokensSoldExternal = tokensSoldExternal.add(_tokens);
  at /home/jiaming/slither_fp_files/out10431.sol(465)

[33mWarning[0m for UnrestrictedWrite in contract 'BablosCrowdsale':
    |      tokensSold = tokensSold.add(_tokens);
    |    } else {
  > |      tokensSoldExternal = tokensSoldExternal.add(_tokens);
    |    }
    |    token.transfer(_beneficiary, _tokens);
  at /home/jiaming/slither_fp_files/out10431.sol(467)

[33mWarning[0m for UnrestrictedWrite in contract 'BablosCrowdsale':
    |    }
    |
  > |    state = _newState;
    |    emit StateChanged(state);
    |
  at /home/jiaming/slither_fp_files/out10431.sol(534)

[33mWarning[0m for UnrestrictedWrite in contract 'BablosCrowdsale':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out10431.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BablosCrowdsale':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out10431.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'BablosCrowdsale':
    |  function setWallet(BablosCrowdsaleWalletInterface _wallet) external onlyOwner {
    |    require(_wallet != address(0));
  > |    wallet = _wallet;
    |  }
    |
  at /home/jiaming/slither_fp_files/out10431.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'BablosCrowdsale':
    |  function setController(address _controller) external onlyOwner {
    |    require(_controller != address(0));
  > |    controller = _controller;
    |  }
    |
  at /home/jiaming/slither_fp_files/out10431.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'BablosCrowdsale':
    |  function setPriceUpdater(PriceUpdaterInterface _priceUpdater) external onlyOwner {
    |    require(_priceUpdater != address(0));
  > |    priceUpdater = _priceUpdater;
    |  }
    |
  at /home/jiaming/slither_fp_files/out10431.sol(392)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/slither_fp_files/out10431.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out10431.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/slither_fp_files/out10431.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out10431.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out10431.sol(105)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out10431.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out10431.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out10431.sol(108)

[33mWarning[0m for LockedEther in contract 'PriceUpdaterInterface':
    |}
    |
  > |contract PriceUpdaterInterface {
    |  enum Currency { ETH, BTC, WME, WMZ, WMR, WMX }
    |
  at /home/jiaming/slither_fp_files/out10431.sol(180)

[31mViolation[0m for MissingInputValidation in contract 'PriceUpdaterInterface':
    |  uint public decimalPrecision = 3;
    |
  > |  mapping(uint => uint) public price;
    |}
    |
  at /home/jiaming/slither_fp_files/out10431.sol(185)

[33mWarning[0m for MissingInputValidation in contract 'PriceUpdaterInterface':
    |  enum Currency { ETH, BTC, WME, WMZ, WMR, WMX }
    |
  > |  uint public decimalPrecision = 3;
    |
    |  mapping(uint => uint) public price;
  at /home/jiaming/slither_fp_files/out10431.sol(183)

[33mWarning[0m for LockedEther in contract 'ReentrancyGuard':
    | * mark it `external`.
    | */
  > |contract ReentrancyGuard {
    |
    |  /**
  at /home/jiaming/slither_fp_files/out10431.sol(118)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/slither_fp_files/out10431.sol(7)


