Processing contract: /home/jiaming/slither_fp_files/out5222.sol:Brave3d
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5222.sol:HourglassInterface
[31mViolation[0m for DAO in contract 'Brave3d':
    |            }
    |
  > |            p3dContract.buy.value(P3D_VALUE * rate)(address(OFFICIAL_P3D));
    |
    |        } else {
  at /home/jiaming/slither_fp_files/out5222.sol(346)

[31mViolation[0m for DAOConstantGas in contract 'Brave3d':
    |        emit BraveWithdraw(msg.sender, amount);
    |
  > |        msg.sender.transfer(amount);
    |
    |        overStage(1);
  at /home/jiaming/slither_fp_files/out5222.sol(203)

[33mWarning[0m for LockedEther in contract 'Brave3d':
    |pragma solidity ^0.4.25;
    |
  > |contract Brave3d {
    |
    |    struct Stage {
  at /home/jiaming/slither_fp_files/out5222.sol(3)

[33mWarning[0m for TODReceiver in contract 'Brave3d':
    |        emit BraveWithdraw(msg.sender, amount);
    |
  > |        msg.sender.transfer(amount);
    |
    |        overStage(1);
  at /home/jiaming/slither_fp_files/out5222.sol(203)

[33mWarning[0m for TODReceiver in contract 'Brave3d':
    |            }
    |
  > |            p3dContract.buy.value(P3D_VALUE * rate)(address(OFFICIAL_P3D));
    |
    |        } else {
  at /home/jiaming/slither_fp_files/out5222.sol(346)

[33mWarning[0m for UnhandledException in contract 'Brave3d':
    |        emit BraveWithdraw(msg.sender, amount);
    |
  > |        msg.sender.transfer(amount);
    |
    |        overStage(1);
  at /home/jiaming/slither_fp_files/out5222.sol(203)

[33mWarning[0m for UnhandledException in contract 'Brave3d':
    |
    |
  > |            uint256 dividends = p3dContract.myDividends(true);
    |            if (dividends > 0) {
    |                p3dContract.withdraw();
  at /home/jiaming/slither_fp_files/out5222.sol(340)

[33mWarning[0m for UnhandledException in contract 'Brave3d':
    |            uint256 dividends = p3dContract.myDividends(true);
    |            if (dividends > 0) {
  > |                p3dContract.withdraw();
    |                _valueMap[deadPlayer] += dividends;
    |            }
  at /home/jiaming/slither_fp_files/out5222.sol(342)

[33mWarning[0m for UnhandledException in contract 'Brave3d':
    |            }
    |
  > |            p3dContract.buy.value(P3D_VALUE * rate)(address(OFFICIAL_P3D));
    |
    |        } else {
  at /home/jiaming/slither_fp_files/out5222.sol(346)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Brave3d':
    |
    |
  > |            uint256 dividends = p3dContract.myDividends(true);
    |            if (dividends > 0) {
    |                p3dContract.withdraw();
  at /home/jiaming/slither_fp_files/out5222.sol(340)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Brave3d':
    |            uint256 dividends = p3dContract.myDividends(true);
    |            if (dividends > 0) {
  > |                p3dContract.withdraw();
    |                _valueMap[deadPlayer] += dividends;
    |            }
  at /home/jiaming/slither_fp_files/out5222.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'Brave3d':
    |pragma solidity ^0.4.25;
    |
  > |contract Brave3d {
    |
    |    struct Stage {
  at /home/jiaming/slither_fp_files/out5222.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Brave3d':
    |        if (_addressMap[msg.sender] == 0) {
    |            if (referee != 0x0000000000000000000000000000000000000000 && referee != msg.sender && _valueMap[referee] > 0) {
  > |                _addressMap[msg.sender] = referee;
    |            } else {
    |                _addressMap[msg.sender] = OFFICIAL;
  at /home/jiaming/slither_fp_files/out5222.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'Brave3d':
    |                _addressMap[msg.sender] = referee;
    |            } else {
  > |                _addressMap[msg.sender] = OFFICIAL;
    |            }
    |        }
  at /home/jiaming/slither_fp_files/out5222.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'Brave3d':
    |            if (_nameAddressMap[name] == 0) {
    |
  > |                _addressMap[msg.sender] = OFFICIAL;
    |
    |            } else {
  at /home/jiaming/slither_fp_files/out5222.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'Brave3d':
    |                if (referee != 0x0000000000000000000000000000000000000000 && referee != msg.sender && _valueMap[referee] > 0) {
    |
  > |                    _addressMap[msg.sender] = referee;
    |                } else {
    |
  at /home/jiaming/slither_fp_files/out5222.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'Brave3d':
    |                } else {
    |
  > |                    _addressMap[msg.sender] = OFFICIAL;
    |                }
    |            }
  at /home/jiaming/slither_fp_files/out5222.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'Brave3d':
    |        resetStage(rate);
    |
  > |        _valueMap[msg.sender] -= PRICE * rate;
    |
    |        buy(rate);
  at /home/jiaming/slither_fp_files/out5222.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'Brave3d':
    |
    |        uint256 amount = _valueMap[msg.sender];
  > |        _valueMap[msg.sender] = 0;
    |
    |        emit BraveWithdraw(msg.sender, amount);
  at /home/jiaming/slither_fp_files/out5222.sol(199)


