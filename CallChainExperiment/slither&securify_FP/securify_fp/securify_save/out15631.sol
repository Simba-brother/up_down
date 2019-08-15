Processing contract: /home/jiaming/slither_fp_files/out15631.sol:AbstractFee
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15631.sol:ECRecovery
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15631.sol:ERC20Basic
Processing contract: /home/jiaming/slither_fp_files/out15631.sol:Feeless
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15631.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAO in contract 'AbstractFee':
    |        require(nonces[msgSender]++ == nonce);
    |        
  > |        require(target.call.value(msg.value)(data));
    |        msgSender = address(0);
    |    }
  at /home/jiaming/slither_fp_files/out15631.sol(130)

[33mWarning[0m for UnhandledException in contract 'AbstractFee':
    |    } else {
    |      // solium-disable-next-line arg-overflow
  > |      return ecrecover(hash, v, r, s);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out15631.sol(43)

[33mWarning[0m for UnhandledException in contract 'AbstractFee':
    |        require(nonces[msgSender]++ == nonce);
    |        
  > |        require(target.call.value(msg.value)(data));
    |        msgSender = address(0);
    |    }
  at /home/jiaming/slither_fp_files/out15631.sol(130)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AbstractFee':
    |    } else {
    |      // solium-disable-next-line arg-overflow
  > |      return ecrecover(hash, v, r, s);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out15631.sol(43)

[31mViolation[0m for UnrestrictedWrite in contract 'AbstractFee':
    |    modifier feeless {
    |        if (msgSender == address(0)) {
  > |            msgSender = msg.sender;
    |            _;
    |            msgSender = address(0);
  at /home/jiaming/slither_fp_files/out15631.sol(114)

[31mViolation[0m for UnrestrictedWrite in contract 'AbstractFee':
    |        bytes memory prefix = "\x19Ethereum Signed Message:\n32";
    |        bytes32 hash = keccak256(prefix, keccak256(target, data, nonce));
  > |        msgSender = ECRecovery.recover(hash, sig);
    |        require(msgSender == sender);
    |        require(nonces[msgSender]++ == nonce);
  at /home/jiaming/slither_fp_files/out15631.sol(126)

[31mViolation[0m for UnrestrictedWrite in contract 'AbstractFee':
    |        msgSender = ECRecovery.recover(hash, sig);
    |        require(msgSender == sender);
  > |        require(nonces[msgSender]++ == nonce);
    |        
    |        require(target.call.value(msg.value)(data));
  at /home/jiaming/slither_fp_files/out15631.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'AbstractFee':
    |        
    |        require(target.call.value(msg.value)(data));
  > |        msgSender = address(0);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out15631.sol(131)

[33mWarning[0m for LockedEther in contract 'ECRecovery':
    |pragma solidity ^0.4.24;
  > |library ECRecovery {
    |
    |  /**
  at /home/jiaming/slither_fp_files/out15631.sol(2)

[31mViolation[0m for DAO in contract 'Feeless':
    |        require(nonces[msgSender]++ == nonce);
    |        
  > |        require(target.call.value(msg.value)(data));
    |        msgSender = address(0);
    |    }
  at /home/jiaming/slither_fp_files/out15631.sol(130)

[33mWarning[0m for UnhandledException in contract 'Feeless':
    |    } else {
    |      // solium-disable-next-line arg-overflow
  > |      return ecrecover(hash, v, r, s);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out15631.sol(43)

[33mWarning[0m for UnhandledException in contract 'Feeless':
    |        require(nonces[msgSender]++ == nonce);
    |        
  > |        require(target.call.value(msg.value)(data));
    |        msgSender = address(0);
    |    }
  at /home/jiaming/slither_fp_files/out15631.sol(130)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Feeless':
    |    } else {
    |      // solium-disable-next-line arg-overflow
  > |      return ecrecover(hash, v, r, s);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out15631.sol(43)

[31mViolation[0m for UnrestrictedWrite in contract 'Feeless':
    |        bytes memory prefix = "\x19Ethereum Signed Message:\n32";
    |        bytes32 hash = keccak256(prefix, keccak256(target, data, nonce));
  > |        msgSender = ECRecovery.recover(hash, sig);
    |        require(msgSender == sender);
    |        require(nonces[msgSender]++ == nonce);
  at /home/jiaming/slither_fp_files/out15631.sol(126)

[31mViolation[0m for UnrestrictedWrite in contract 'Feeless':
    |        msgSender = ECRecovery.recover(hash, sig);
    |        require(msgSender == sender);
  > |        require(nonces[msgSender]++ == nonce);
    |        
    |        require(target.call.value(msg.value)(data));
  at /home/jiaming/slither_fp_files/out15631.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'Feeless':
    |        
    |        require(target.call.value(msg.value)(data));
  > |        msgSender = address(0);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out15631.sol(131)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |  }
    |}
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/slither_fp_files/out15631.sol(64)


