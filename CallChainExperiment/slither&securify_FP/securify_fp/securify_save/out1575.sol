Processing contract: /home/jiaming/slither_fp_files/out1575.sol:Accessibility
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out1575.sol:EthUp
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out1575.sol:InvestorsStorage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out1575.sol:Percent
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out1575.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out1575.sol:ToAddress
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out1575.sol:Zero
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Accessibility':
    |}
    |
  > |contract Accessibility {
    |
    |    address private owner;
  at /home/jiaming/slither_fp_files/out1575.sol(253)

[33mWarning[0m for LockedEther in contract 'InvestorsStorage':
    |}
    |
  > |contract InvestorsStorage is Accessibility {
    |    using SafeMath for uint;
    |
  at /home/jiaming/slither_fp_files/out1575.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |            return false;
    |        }
  > |        inv.investment = investment;
    |        inv.paymentTime = paymentTime;
    |        inv.dividends.limit = dividendsLimit;
  at /home/jiaming/slither_fp_files/out1575.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |        }
    |        inv.investment = investment;
  > |        inv.paymentTime = paymentTime;
    |        inv.dividends.limit = dividendsLimit;
    |        size++;
  at /home/jiaming/slither_fp_files/out1575.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |        inv.investment = investment;
    |        inv.paymentTime = paymentTime;
  > |        inv.dividends.limit = dividendsLimit;
    |        size++;
    |        return true;
  at /home/jiaming/slither_fp_files/out1575.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |        inv.paymentTime = paymentTime;
    |        inv.dividends.limit = dividendsLimit;
  > |        size++;
    |        return true;
    |    }
  at /home/jiaming/slither_fp_files/out1575.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |            return false;
    |        }
  > |        investors[addr].investment = investors[addr].investment.add(investment);
    |        return true;
    |    }
  at /home/jiaming/slither_fp_files/out1575.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |            return false;
    |        }
  > |        investors[addr].paymentTime = paymentTime;
    |        return true;
    |    }
  at /home/jiaming/slither_fp_files/out1575.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |            return false;
    |        }
  > |        investors[addr].dividends.deferred = investors[addr].dividends.deferred.add(dividends);
    |        return true;
    |    }
  at /home/jiaming/slither_fp_files/out1575.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |        }
    |        if (investors[addr].dividends.value + dividends > investors[addr].dividends.limit) {
  > |            investors[addr].dividends.value = investors[addr].dividends.limit;
    |        } else {
    |            investors[addr].dividends.value = investors[addr].dividends.value.add(dividends);
  at /home/jiaming/slither_fp_files/out1575.sol(366)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |            investors[addr].dividends.value = investors[addr].dividends.limit;
    |        } else {
  > |            investors[addr].dividends.value = investors[addr].dividends.value.add(dividends);
    |        }
    |        return true;
  at /home/jiaming/slither_fp_files/out1575.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |            return false;
    |        }
  > |        investors[addr].investment = investment;
    |        investors[addr].dividends.limit = limit;
    |        // reset payment dividends
  at /home/jiaming/slither_fp_files/out1575.sol(377)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |        }
    |        investors[addr].investment = investment;
  > |        investors[addr].dividends.limit = limit;
    |        // reset payment dividends
    |        investors[addr].dividends.value = 0;
  at /home/jiaming/slither_fp_files/out1575.sol(378)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |        investors[addr].dividends.limit = limit;
    |        // reset payment dividends
  > |        investors[addr].dividends.value = 0;
    |        investors[addr].dividends.deferred = 0;
    |
  at /home/jiaming/slither_fp_files/out1575.sol(380)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |        // reset payment dividends
    |        investors[addr].dividends.value = 0;
  > |        investors[addr].dividends.deferred = 0;
    |
    |        return true;
  at /home/jiaming/slither_fp_files/out1575.sol(381)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |            return false;
    |        }
  > |        investors[addr].dividends.limit = investors[addr].dividends.limit.add(limit);
    |
    |        return true;
  at /home/jiaming/slither_fp_files/out1575.sol(390)

[33mWarning[0m for LockedEther in contract 'Percent':
    |}
    |
  > |library Percent {
    |    using SafeMath for uint;
    |
  at /home/jiaming/slither_fp_files/out1575.sol(178)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/slither_fp_files/out1575.sol(118)

[33mWarning[0m for LockedEther in contract 'ToAddress':
    |}
    |
  > |library ToAddress {
    |
    |    function toAddress(bytes source) internal pure returns(address addr) {
  at /home/jiaming/slither_fp_files/out1575.sol(239)

[33mWarning[0m for LockedEther in contract 'Zero':
    |
    |
  > |library Zero {
    |    function requireNotZero(address addr) internal pure {
    |        require(addr != address(0), "require not zero address");
  at /home/jiaming/slither_fp_files/out1575.sol(88)


