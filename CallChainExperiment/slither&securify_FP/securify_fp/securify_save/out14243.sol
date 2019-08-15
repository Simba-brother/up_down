Processing contract: /home/jiaming/slither_fp_files/out14243.sol:DetailedERC20
Processing contract: /home/jiaming/slither_fp_files/out14243.sol:ERC20
Processing contract: /home/jiaming/slither_fp_files/out14243.sol:ERC20Basic
Processing contract: /home/jiaming/slither_fp_files/out14243.sol:ListingsERC20NoDecimal
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14243.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14243.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'ListingsERC20NoDecimal':
    |        require(tokenContract.transferFrom(seller, msg.sender, amount));
    |        if (ownerPercentage > 0) {
  > |            seller.transfer(sale - (sale.mul(ownerPercentage).div(10000)));
    |        } else {
    |            seller.transfer(sale);
  at /home/jiaming/slither_fp_files/out14243.sol(225)

[33mWarning[0m for DAOConstantGas in contract 'ListingsERC20NoDecimal':
    |
    |    function withdrawBalance() onlyOwner external {
  > |        assert(owner.send(address(this).balance));
    |    }
    |    function approveToken(address token, uint256 amount) onlyOwner external {
  at /home/jiaming/slither_fp_files/out14243.sol(160)

[33mWarning[0m for LockedEther in contract 'ListingsERC20NoDecimal':
    |  }
    |}
  > |contract ListingsERC20NoDecimal is Ownable {
    |      using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out14243.sol(131)

[31mViolation[0m for TODAmount in contract 'ListingsERC20NoDecimal':
    |
    |    function withdrawBalance() onlyOwner external {
  > |        assert(owner.send(address(this).balance));
    |    }
    |    function approveToken(address token, uint256 amount) onlyOwner external {
  at /home/jiaming/slither_fp_files/out14243.sol(160)

[33mWarning[0m for TODAmount in contract 'ListingsERC20NoDecimal':
    |        require(tokenContract.transferFrom(seller, msg.sender, amount));
    |        if (ownerPercentage > 0) {
  > |            seller.transfer(sale - (sale.mul(ownerPercentage).div(10000)));
    |        } else {
    |            seller.transfer(sale);
  at /home/jiaming/slither_fp_files/out14243.sol(225)

[33mWarning[0m for TODAmount in contract 'ListingsERC20NoDecimal':
    |            seller.transfer(sale - (sale.mul(ownerPercentage).div(10000)));
    |        } else {
  > |            seller.transfer(sale);
    |        }
    |        sold[listingId] = sold[listingId].add(amount);
  at /home/jiaming/slither_fp_files/out14243.sol(227)

[31mViolation[0m for TODReceiver in contract 'ListingsERC20NoDecimal':
    |
    |    function withdrawBalance() onlyOwner external {
  > |        assert(owner.send(address(this).balance));
    |    }
    |    function approveToken(address token, uint256 amount) onlyOwner external {
  at /home/jiaming/slither_fp_files/out14243.sol(160)

[33mWarning[0m for TODReceiver in contract 'ListingsERC20NoDecimal':
    |        require(tokenContract.transferFrom(seller, msg.sender, amount));
    |        if (ownerPercentage > 0) {
  > |            seller.transfer(sale - (sale.mul(ownerPercentage).div(10000)));
    |        } else {
    |            seller.transfer(sale);
  at /home/jiaming/slither_fp_files/out14243.sol(225)

[33mWarning[0m for TODReceiver in contract 'ListingsERC20NoDecimal':
    |            seller.transfer(sale - (sale.mul(ownerPercentage).div(10000)));
    |        } else {
  > |            seller.transfer(sale);
    |        }
    |        sold[listingId] = sold[listingId].add(amount);
  at /home/jiaming/slither_fp_files/out14243.sol(227)

[33mWarning[0m for UnhandledException in contract 'ListingsERC20NoDecimal':
    |
    |    function withdrawBalance() onlyOwner external {
  > |        assert(owner.send(address(this).balance));
    |    }
    |    function approveToken(address token, uint256 amount) onlyOwner external {
  at /home/jiaming/slither_fp_files/out14243.sol(160)

[33mWarning[0m for UnhandledException in contract 'ListingsERC20NoDecimal':
    |    }
    |    function approveToken(address token, uint256 amount) onlyOwner external {
  > |        assert(DetailedERC20(token).approve(owner, amount));
    |    }
    |
  at /home/jiaming/slither_fp_files/out14243.sol(163)

[33mWarning[0m for UnhandledException in contract 'ListingsERC20NoDecimal':
    |    }
    |    function getBalance(address tokenContract, address seller) internal returns (uint256) {
  > |        return DetailedERC20(tokenContract).balanceOf.gas(GAS_LIMIT)(seller);
    |    }
    |    function getAllowance(address tokenContract, address seller, address listingContract) internal returns (uint256) {
  at /home/jiaming/slither_fp_files/out14243.sol(176)

[33mWarning[0m for UnhandledException in contract 'ListingsERC20NoDecimal':
    |    }
    |    function getAllowance(address tokenContract, address seller, address listingContract) internal returns (uint256) {
  > |        return DetailedERC20(tokenContract).allowance.gas(GAS_LIMIT)(seller, listingContract);
    |    }
    |
  at /home/jiaming/slither_fp_files/out14243.sol(179)

[33mWarning[0m for UnhandledException in contract 'ListingsERC20NoDecimal':
    |        require(msg.value == sale);
    |        DetailedERC20 tokenContract = DetailedERC20(contractAddress);
  > |        require(tokenContract.transferFrom(seller, msg.sender, amount));
    |        if (ownerPercentage > 0) {
    |            seller.transfer(sale - (sale.mul(ownerPercentage).div(10000)));
  at /home/jiaming/slither_fp_files/out14243.sol(223)

[33mWarning[0m for UnhandledException in contract 'ListingsERC20NoDecimal':
    |        require(tokenContract.transferFrom(seller, msg.sender, amount));
    |        if (ownerPercentage > 0) {
  > |            seller.transfer(sale - (sale.mul(ownerPercentage).div(10000)));
    |        } else {
    |            seller.transfer(sale);
  at /home/jiaming/slither_fp_files/out14243.sol(225)

[33mWarning[0m for UnhandledException in contract 'ListingsERC20NoDecimal':
    |            seller.transfer(sale - (sale.mul(ownerPercentage).div(10000)));
    |        } else {
  > |            seller.transfer(sale);
    |        }
    |        sold[listingId] = sold[listingId].add(amount);
  at /home/jiaming/slither_fp_files/out14243.sol(227)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'ListingsERC20NoDecimal':
    |        require(tokenContract.transferFrom(seller, msg.sender, amount));
    |        if (ownerPercentage > 0) {
  > |            seller.transfer(sale - (sale.mul(ownerPercentage).div(10000)));
    |        } else {
    |            seller.transfer(sale);
  at /home/jiaming/slither_fp_files/out14243.sol(225)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'ListingsERC20NoDecimal':
    |            seller.transfer(sale - (sale.mul(ownerPercentage).div(10000)));
    |        } else {
  > |            seller.transfer(sale);
    |        }
    |        sold[listingId] = sold[listingId].add(amount);
  at /home/jiaming/slither_fp_files/out14243.sol(227)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ListingsERC20NoDecimal':
    |
    |    function withdrawBalance() onlyOwner external {
  > |        assert(owner.send(address(this).balance));
    |    }
    |    function approveToken(address token, uint256 amount) onlyOwner external {
  at /home/jiaming/slither_fp_files/out14243.sol(160)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ListingsERC20NoDecimal':
    |    }
    |    function approveToken(address token, uint256 amount) onlyOwner external {
  > |        assert(DetailedERC20(token).approve(owner, amount));
    |    }
    |
  at /home/jiaming/slither_fp_files/out14243.sol(163)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ListingsERC20NoDecimal':
    |    }
    |    function getBalance(address tokenContract, address seller) internal returns (uint256) {
  > |        return DetailedERC20(tokenContract).balanceOf.gas(GAS_LIMIT)(seller);
    |    }
    |    function getAllowance(address tokenContract, address seller, address listingContract) internal returns (uint256) {
  at /home/jiaming/slither_fp_files/out14243.sol(176)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ListingsERC20NoDecimal':
    |    }
    |    function getAllowance(address tokenContract, address seller, address listingContract) internal returns (uint256) {
  > |        return DetailedERC20(tokenContract).allowance.gas(GAS_LIMIT)(seller, listingContract);
    |    }
    |
  at /home/jiaming/slither_fp_files/out14243.sol(179)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ListingsERC20NoDecimal':
    |        require(msg.value == sale);
    |        DetailedERC20 tokenContract = DetailedERC20(contractAddress);
  > |        require(tokenContract.transferFrom(seller, msg.sender, amount));
    |        if (ownerPercentage > 0) {
    |            seller.transfer(sale - (sale.mul(ownerPercentage).div(10000)));
  at /home/jiaming/slither_fp_files/out14243.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'ListingsERC20NoDecimal':
    |            seller.transfer(sale);
    |        }
  > |        sold[listingId] = sold[listingId].add(amount);
    |        emit ListingBought(listingId, contractAddress, price, amount, now, msg.sender);
    |    }
  at /home/jiaming/slither_fp_files/out14243.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'ListingsERC20NoDecimal':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out14243.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'ListingsERC20NoDecimal':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out14243.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'ListingsERC20NoDecimal':
    |
    |    function updateOwnerPercentage(uint256 percentage) external onlyOwner {
  > |        ownerPercentage = percentage;
    |    }
    |
  at /home/jiaming/slither_fp_files/out14243.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'ListingsERC20NoDecimal':
    |        Listing storage listing = listings[listingId];
    |        require(msg.sender == listing.seller);
  > |        delete listings[listingId];
    |        emit ListingCancelled(listingId, now);
    |    }
  at /home/jiaming/slither_fp_files/out14243.sol(198)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |  }
    |}
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/slither_fp_files/out14243.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |}
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out14243.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/slither_fp_files/out14243.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out14243.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out14243.sol(94)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out14243.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out14243.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out14243.sol(97)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.24;
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/slither_fp_files/out14243.sol(2)


