Processing contract: /home/jiaming/slither_fp_files/out1035.sol:Deposit
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out1035.sol:MarketplaceProxy
Processing contract: /home/jiaming/slither_fp_files/out1035.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out1035.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAO in contract 'Deposit':
    |        // Send all incoming eth if user blocked
    |        if (mp.isUserBlockedByContract(address(this))) {
  > |            mp.payPlatformIncomingTransactionCommission.value(amount)(clientAddress);
    |            emit Blocked();
    |        } else {
  at /home/jiaming/slither_fp_files/out1035.sol(163)

[31mViolation[0m for DAO in contract 'Deposit':
    |
    |        // Send commission to marketplace
  > |        mp.payPlatformOutgoingTransactionCommission.value(commission)();
    |        emit PlatformOutgoingTransactionCommission(commission);
    |        /* Required code end */
  at /home/jiaming/slither_fp_files/out1035.sol(222)

[33mWarning[0m for DAO in contract 'Deposit':
    |
    |        // Send commission to marketplace
  > |        mp.payPlatformOutgoingTransactionCommission.value(commission)();
    |        emit PlatformOutgoingTransactionCommission(commission);
    |        /* Required code end */
  at /home/jiaming/slither_fp_files/out1035.sol(198)

[33mWarning[0m for DAOConstantGas in contract 'Deposit':
    |        /* Required code end */
    |
  > |        to.transfer(amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out1035.sol(202)

[33mWarning[0m for DAOConstantGas in contract 'Deposit':
    |        depositsMap[from].balance -= amount;
    |
  > |        to.transfer(amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out1035.sol(229)

[33mWarning[0m for LockedEther in contract 'Deposit':
    |/* Required code end */
    |
  > |contract Deposit is Ownable {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/slither_fp_files/out1035.sol(103)

[33mWarning[0m for TODAmount in contract 'Deposit':
    |
    |        // Send commission to marketplace
  > |        mp.payPlatformOutgoingTransactionCommission.value(commission)();
    |        emit PlatformOutgoingTransactionCommission(commission);
    |        /* Required code end */
  at /home/jiaming/slither_fp_files/out1035.sol(198)

[33mWarning[0m for TODAmount in contract 'Deposit':
    |        /* Required code end */
    |
  > |        to.transfer(amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out1035.sol(202)

[33mWarning[0m for TODAmount in contract 'Deposit':
    |
    |        // Send commission to marketplace
  > |        mp.payPlatformOutgoingTransactionCommission.value(commission)();
    |        emit PlatformOutgoingTransactionCommission(commission);
    |        /* Required code end */
  at /home/jiaming/slither_fp_files/out1035.sol(222)

[33mWarning[0m for TODAmount in contract 'Deposit':
    |        depositsMap[from].balance -= amount;
    |
  > |        to.transfer(amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out1035.sol(229)

[33mWarning[0m for TODReceiver in contract 'Deposit':
    |        // Send all incoming eth if user blocked
    |        if (mp.isUserBlockedByContract(address(this))) {
  > |            mp.payPlatformIncomingTransactionCommission.value(amount)(clientAddress);
    |            emit Blocked();
    |        } else {
  at /home/jiaming/slither_fp_files/out1035.sol(163)

[33mWarning[0m for TODReceiver in contract 'Deposit':
    |            emit Blocked();
    |        } else {
  > |            mp.payPlatformIncomingTransactionCommission.value(clientDeposit.nextPaymentPlatformCommission)(clientAddress);
    |            emit PlatformIncomingTransactionCommission(clientDeposit.nextPaymentPlatformCommission, clientAddress);
    |        }
  at /home/jiaming/slither_fp_files/out1035.sol(166)

[33mWarning[0m for TODReceiver in contract 'Deposit':
    |
    |        // Send commission to marketplace
  > |        mp.payPlatformOutgoingTransactionCommission.value(commission)();
    |        emit PlatformOutgoingTransactionCommission(commission);
    |        /* Required code end */
  at /home/jiaming/slither_fp_files/out1035.sol(198)

[33mWarning[0m for TODReceiver in contract 'Deposit':
    |        /* Required code end */
    |
  > |        to.transfer(amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out1035.sol(202)

[33mWarning[0m for TODReceiver in contract 'Deposit':
    |
    |        // Send commission to marketplace
  > |        mp.payPlatformOutgoingTransactionCommission.value(commission)();
    |        emit PlatformOutgoingTransactionCommission(commission);
    |        /* Required code end */
  at /home/jiaming/slither_fp_files/out1035.sol(222)

[33mWarning[0m for TODReceiver in contract 'Deposit':
    |        depositsMap[from].balance -= amount;
    |
  > |        to.transfer(amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out1035.sol(229)

[33mWarning[0m for UnhandledException in contract 'Deposit':
    |        /* Required code start */
    |        // Send all incoming eth if user blocked
  > |        if (mp.isUserBlockedByContract(address(this))) {
    |            mp.payPlatformIncomingTransactionCommission.value(amount)(clientAddress);
    |            emit Blocked();
  at /home/jiaming/slither_fp_files/out1035.sol(162)

[33mWarning[0m for UnhandledException in contract 'Deposit':
    |        // Send all incoming eth if user blocked
    |        if (mp.isUserBlockedByContract(address(this))) {
  > |            mp.payPlatformIncomingTransactionCommission.value(amount)(clientAddress);
    |            emit Blocked();
    |        } else {
  at /home/jiaming/slither_fp_files/out1035.sol(163)

[33mWarning[0m for UnhandledException in contract 'Deposit':
    |            emit Blocked();
    |        } else {
  > |            mp.payPlatformIncomingTransactionCommission.value(clientDeposit.nextPaymentPlatformCommission)(clientAddress);
    |            emit PlatformIncomingTransactionCommission(clientDeposit.nextPaymentPlatformCommission, clientAddress);
    |        }
  at /home/jiaming/slither_fp_files/out1035.sol(166)

[33mWarning[0m for UnhandledException in contract 'Deposit':
    |        /* Required code start */
    |        // Get commission amount from marketplace
  > |        uint256 commission = mp.calculatePlatformCommission(amount);
    |
    |        require(address(this).balance > amount.add(commission));
  at /home/jiaming/slither_fp_files/out1035.sol(193)

[33mWarning[0m for UnhandledException in contract 'Deposit':
    |
    |        // Send commission to marketplace
  > |        mp.payPlatformOutgoingTransactionCommission.value(commission)();
    |        emit PlatformOutgoingTransactionCommission(commission);
    |        /* Required code end */
  at /home/jiaming/slither_fp_files/out1035.sol(198)

[33mWarning[0m for UnhandledException in contract 'Deposit':
    |        /* Required code end */
    |
  > |        to.transfer(amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out1035.sol(202)

[33mWarning[0m for UnhandledException in contract 'Deposit':
    |        /* Required code start */
    |        // Get commission amount from marketplace
  > |        uint256 commission = mp.calculatePlatformCommission(amount);
    |
    |        require(address(this).balance > amount.add(commission));
  at /home/jiaming/slither_fp_files/out1035.sol(216)

[33mWarning[0m for UnhandledException in contract 'Deposit':
    |
    |        // Send commission to marketplace
  > |        mp.payPlatformOutgoingTransactionCommission.value(commission)();
    |        emit PlatformOutgoingTransactionCommission(commission);
    |        /* Required code end */
  at /home/jiaming/slither_fp_files/out1035.sol(222)

[33mWarning[0m for UnhandledException in contract 'Deposit':
    |        depositsMap[from].balance -= amount;
    |
  > |        to.transfer(amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out1035.sol(229)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Deposit':
    |        /* Required code start */
    |        // Send all incoming eth if user blocked
  > |        if (mp.isUserBlockedByContract(address(this))) {
    |            mp.payPlatformIncomingTransactionCommission.value(amount)(clientAddress);
    |            emit Blocked();
  at /home/jiaming/slither_fp_files/out1035.sol(162)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Deposit':
    |        /* Required code start */
    |        // Get commission amount from marketplace
  > |        uint256 commission = mp.calculatePlatformCommission(amount);
    |
    |        require(address(this).balance > amount.add(commission));
  at /home/jiaming/slither_fp_files/out1035.sol(193)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Deposit':
    |
    |        // Send commission to marketplace
  > |        mp.payPlatformOutgoingTransactionCommission.value(commission)();
    |        emit PlatformOutgoingTransactionCommission(commission);
    |        /* Required code end */
  at /home/jiaming/slither_fp_files/out1035.sol(198)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Deposit':
    |        /* Required code start */
    |        // Get commission amount from marketplace
  > |        uint256 commission = mp.calculatePlatformCommission(amount);
    |
    |        require(address(this).balance > amount.add(commission));
  at /home/jiaming/slither_fp_files/out1035.sol(216)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Deposit':
    |
    |        // Send commission to marketplace
  > |        mp.payPlatformOutgoingTransactionCommission.value(commission)();
    |        emit PlatformOutgoingTransactionCommission(commission);
    |        /* Required code end */
  at /home/jiaming/slither_fp_files/out1035.sol(222)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Deposit':
    |        /* Required code end */
    |
  > |        to.transfer(amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out1035.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Deposit':
    |        depositsMap[from].balance -= amount;
    |
  > |        to.transfer(amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out1035.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'Deposit':
    |
    |        // Virtually add ETH to client deposit (sended ETH subtract platform and deposit commissions)
  > |        clientDeposit.balance += amount.sub(clientDeposit.nextPaymentPlatformCommission).sub(clientDeposit.nextPaymentDepositCommission);
    |        emit DepositCommission(clientDeposit.nextPaymentDepositCommission, clientAddress);
    |    }
  at /home/jiaming/slither_fp_files/out1035.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'Deposit':
    |
    |        // Virtually subtract amount from client deposit
  > |        depositsMap[from].balance -= amount;
    |
    |        to.transfer(amount);
  at /home/jiaming/slither_fp_files/out1035.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'Deposit':
    |
    |        // Add new element to structure
  > |        depositsMap[clientAddress] = ClientDeposit(
    |            0,                                  // balance
    |            _nextPaymentTotalAmount,            // nextPaymentTotalAmount
  at /home/jiaming/slither_fp_files/out1035.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'Deposit':
    |        require(clientDeposit.exists);
    |
  > |        clientDeposit.nextPaymentTotalAmount = _nextPaymentTotalAmount;
    |        clientDeposit.nextPaymentDepositCommission = _nextPaymentDepositCommission;
    |        clientDeposit.nextPaymentPlatformCommission = _nextPaymentPlatformCommission;
  at /home/jiaming/slither_fp_files/out1035.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'Deposit':
    |
    |        clientDeposit.nextPaymentTotalAmount = _nextPaymentTotalAmount;
  > |        clientDeposit.nextPaymentDepositCommission = _nextPaymentDepositCommission;
    |        clientDeposit.nextPaymentPlatformCommission = _nextPaymentPlatformCommission;
    |    }
  at /home/jiaming/slither_fp_files/out1035.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'Deposit':
    |        clientDeposit.nextPaymentTotalAmount = _nextPaymentTotalAmount;
    |        clientDeposit.nextPaymentDepositCommission = _nextPaymentDepositCommission;
  > |        clientDeposit.nextPaymentPlatformCommission = _nextPaymentPlatformCommission;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out1035.sol(285)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/slither_fp_files/out1035.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    /**
  at /home/jiaming/slither_fp_files/out1035.sol(73)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/slither_fp_files/out1035.sol(7)


