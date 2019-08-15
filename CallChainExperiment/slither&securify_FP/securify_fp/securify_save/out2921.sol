Processing contract: /home/jiaming/slither_fp_files/out2921.sol:HorseAuction
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out2921.sol:IERC20
Processing contract: /home/jiaming/slither_fp_files/out2921.sol:Ownable
Processing contract: /home/jiaming/slither_fp_files/out2921.sol:Pausable
Processing contract: /home/jiaming/slither_fp_files/out2921.sol:PauserRole
Processing contract: /home/jiaming/slither_fp_files/out2921.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'HorseAuction':
    |            uint256 commission = bundle.currentBid / 1000 * _commission;
    |            //give the seller his ETH
  > |            bundle.seller.transfer(bundle.currentBid-commission);
    |            _collected = _collected + commission;
    |            //give the buyer his HORSE
  at /home/jiaming/slither_fp_files/out2921.sol(380)

[31mViolation[0m for DAOConstantGas in contract 'HorseAuction':
    |    function withdraw() external
    |    onlyOwner() {
  > |        msg.sender.transfer(_collected);
    |        _collected = 0;
    |    }
  at /home/jiaming/slither_fp_files/out2921.sol(398)

[33mWarning[0m for LockedEther in contract 'HorseAuction':
    |*/
    |
  > |contract HorseAuction is Ownable, Pausable {
    |
    |    uint256 constant HORSE = 1 ether; //HORSE like ether has 18 decimal places
  at /home/jiaming/slither_fp_files/out2921.sol(263)

[31mViolation[0m for TODAmount in contract 'HorseAuction':
    |            uint256 commission = bundle.currentBid / 1000 * _commission;
    |            //give the seller his ETH
  > |            bundle.seller.transfer(bundle.currentBid-commission);
    |            _collected = _collected + commission;
    |            //give the buyer his HORSE
  at /home/jiaming/slither_fp_files/out2921.sol(380)

[31mViolation[0m for TODAmount in contract 'HorseAuction':
    |    function withdraw() external
    |    onlyOwner() {
  > |        msg.sender.transfer(_collected);
    |        _collected = 0;
    |    }
  at /home/jiaming/slither_fp_files/out2921.sol(398)

[33mWarning[0m for TODReceiver in contract 'HorseAuction':
    |    function withdraw() external
    |    onlyOwner() {
  > |        msg.sender.transfer(_collected);
    |        _collected = 0;
    |    }
  at /home/jiaming/slither_fp_files/out2921.sol(398)

[33mWarning[0m for UnhandledException in contract 'HorseAuction':
    |        //transfer the required amount of HORSE from the seller to this contract
    |        //the seller must approve this transfer first of course!
  > |        require(horseToken.transferFrom(msg.sender, address(this), amount),"Transfer failed, are we approved to transferFrom this amount?");
    |
    |        emit NewBundle(amount, duration, bundleId);
  at /home/jiaming/slither_fp_files/out2921.sol(334)

[33mWarning[0m for UnhandledException in contract 'HorseAuction':
    |        //if not first bidder, send back the losers ETH!
    |        if(bundle.highestBidder != address(0)) {
  > |            bundle.highestBidder.transfer(bundle.currentBid);
    |        }
    |        
  at /home/jiaming/slither_fp_files/out2921.sol(355)

[33mWarning[0m for UnhandledException in contract 'HorseAuction':
    |            uint256 commission = bundle.currentBid / 1000 * _commission;
    |            //give the seller his ETH
  > |            bundle.seller.transfer(bundle.currentBid-commission);
    |            _collected = _collected + commission;
    |            //give the buyer his HORSE
  at /home/jiaming/slither_fp_files/out2921.sol(380)

[33mWarning[0m for UnhandledException in contract 'HorseAuction':
    |            _collected = _collected + commission;
    |            //give the buyer his HORSE
  > |            require(horseToken.transfer(bundle.highestBidder, bundle.amount),"Transfer failed");
    |        } else {
    |            //just give me back my horse
  at /home/jiaming/slither_fp_files/out2921.sol(383)

[33mWarning[0m for UnhandledException in contract 'HorseAuction':
    |        } else {
    |            //just give me back my horse
  > |            require(horseToken.transfer(bundle.seller, bundle.amount),"Transfer failed");
    |        }
    |        
  at /home/jiaming/slither_fp_files/out2921.sol(386)

[33mWarning[0m for UnhandledException in contract 'HorseAuction':
    |    function withdraw() external
    |    onlyOwner() {
  > |        msg.sender.transfer(_collected);
    |        _collected = 0;
    |    }
  at /home/jiaming/slither_fp_files/out2921.sol(398)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HorseAuction':
    |        //transfer the required amount of HORSE from the seller to this contract
    |        //the seller must approve this transfer first of course!
  > |        require(horseToken.transferFrom(msg.sender, address(this), amount),"Transfer failed, are we approved to transferFrom this amount?");
    |
    |        emit NewBundle(amount, duration, bundleId);
  at /home/jiaming/slither_fp_files/out2921.sol(334)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HorseAuction':
    |            _collected = _collected + commission;
    |            //give the buyer his HORSE
  > |            require(horseToken.transfer(bundle.highestBidder, bundle.amount),"Transfer failed");
    |        } else {
    |            //just give me back my horse
  at /home/jiaming/slither_fp_files/out2921.sol(383)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HorseAuction':
    |        } else {
    |            //just give me back my horse
  > |            require(horseToken.transfer(bundle.seller, bundle.amount),"Transfer failed");
    |        }
    |        
  at /home/jiaming/slither_fp_files/out2921.sol(386)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HorseAuction':
    |    function withdraw() external
    |    onlyOwner() {
  > |        msg.sender.transfer(_collected);
    |        _collected = 0;
    |    }
  at /home/jiaming/slither_fp_files/out2921.sol(398)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseAuction':
    |
    |        Bundle storage newBundle = bundles[bundleId];
  > |        newBundle.amount = amount;
    |        newBundle.expires = block.timestamp + duration;
    |        newBundle.seller = msg.sender;
  at /home/jiaming/slither_fp_files/out2921.sol(329)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseAuction':
    |        Bundle storage newBundle = bundles[bundleId];
    |        newBundle.amount = amount;
  > |        newBundle.expires = block.timestamp + duration;
    |        newBundle.seller = msg.sender;
    |        //transfer the required amount of HORSE from the seller to this contract
  at /home/jiaming/slither_fp_files/out2921.sol(330)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseAuction':
    |        newBundle.amount = amount;
    |        newBundle.expires = block.timestamp + duration;
  > |        newBundle.seller = msg.sender;
    |        //transfer the required amount of HORSE from the seller to this contract
    |        //the seller must approve this transfer first of course!
  at /home/jiaming/slither_fp_files/out2921.sol(331)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseAuction':
    |        
    |        //replace the older highest bidder
  > |        bundle.currentBid = msg.value;
    |        bundle.highestBidder = msg.sender;
    |        
  at /home/jiaming/slither_fp_files/out2921.sol(359)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseAuction':
    |        //replace the older highest bidder
    |        bundle.currentBid = msg.value;
  > |        bundle.highestBidder = msg.sender;
    |        
    |        emit NewBid(bundleId, msg.value);
  at /home/jiaming/slither_fp_files/out2921.sol(360)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseAuction':
    |            //give the seller his ETH
    |            bundle.seller.transfer(bundle.currentBid-commission);
  > |            _collected = _collected + commission;
    |            //give the buyer his HORSE
    |            require(horseToken.transfer(bundle.highestBidder, bundle.amount),"Transfer failed");
  at /home/jiaming/slither_fp_files/out2921.sol(381)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseAuction':
    |        }
    |        
  > |        delete(bundles[bundleId]);
    |        emit AuctionEnded(bundleId);
    |    }
  at /home/jiaming/slither_fp_files/out2921.sol(389)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseAuction':
    |    require(!has(role, account));
    |
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/slither_fp_files/out2921.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseAuction':
    |    require(has(role, account));
    |
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/slither_fp_files/out2921.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseAuction':
    |   */
    |  function pause() public onlyPauser whenNotPaused {
  > |    _paused = true;
    |    emit Paused(msg.sender);
    |  }
  at /home/jiaming/slither_fp_files/out2921.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseAuction':
    |   */
    |  function unpause() public onlyPauser whenPaused {
  > |    _paused = false;
    |    emit Unpaused(msg.sender);
    |  }
  at /home/jiaming/slither_fp_files/out2921.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseAuction':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipTransferred(_owner, address(0));
  > |    _owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out2921.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseAuction':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out2921.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseAuction':
    |    function changeCommission(uint256 newCommission) external 
    |    onlyOwner() {
  > |        _commission = newCommission;
    |    }
    |
  at /home/jiaming/slither_fp_files/out2921.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseAuction':
    |    onlyOwner() {
    |        msg.sender.transfer(_collected);
  > |        _collected = 0;
    |    }
    |
  at /home/jiaming/slither_fp_files/out2921.sol(399)

[33mWarning[0m for LockedEther in contract 'Roles':
    | * @dev Library for managing addresses assigned to a Role.
    | */
  > |library Roles {
    |  struct Role {
    |    mapping (address => bool) bearer;
  at /home/jiaming/slither_fp_files/out2921.sol(9)


