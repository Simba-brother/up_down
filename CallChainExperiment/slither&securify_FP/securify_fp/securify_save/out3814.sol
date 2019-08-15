Processing contract: /home/jiaming/slither_fp_files/out3814.sol:CashMoney
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out3814.sol:WinnerLog
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CashMoney':
    |// Guess the number, win a prize!
    |
  > |contract CashMoney {
    |    uint256 private current;
    |    uint256 private last;
  at /home/jiaming/slither_fp_files/out3814.sol(5)

[33mWarning[0m for TODReceiver in contract 'CashMoney':
    |            
    |            if (winnerNum <= bonuses.length) {
  > |                msg.sender.transfer(msg.value+bonuses[winnerNum-1]);
    |            } else {
    |                msg.sender.transfer(msg.value);
  at /home/jiaming/slither_fp_files/out3814.sol(93)

[33mWarning[0m for TODReceiver in contract 'CashMoney':
    |                msg.sender.transfer(msg.value+bonuses[winnerNum-1]);
    |            } else {
  > |                msg.sender.transfer(msg.value);
    |            }
    |        } else {
  at /home/jiaming/slither_fp_files/out3814.sol(95)

[33mWarning[0m for UnhandledException in contract 'CashMoney':
    |        require(msg.value >= min_bet && number <= 10);
    |        // YOWO - You Only Win Once
  > |        require(!winnerLog.isWinner(msg.sender));
    |        
    |        Guess storage guess;
  at /home/jiaming/slither_fp_files/out3814.sol(75)

[33mWarning[0m for UnhandledException in contract 'CashMoney':
    |        if (number == current) {
    |            // you win!
  > |            winnerLog.logWinner(msg.sender, players[msg.sender].playerNo, players[msg.sender].name);
    |            
    |            uint256 winnerNum = winnerLog.getWinnerAddrs().length;
  at /home/jiaming/slither_fp_files/out3814.sol(85)

[33mWarning[0m for UnhandledException in contract 'CashMoney':
    |            winnerLog.logWinner(msg.sender, players[msg.sender].playerNo, players[msg.sender].name);
    |            
  > |            uint256 winnerNum = winnerLog.getWinnerAddrs().length;
    |            
    |            // should always be true
  at /home/jiaming/slither_fp_files/out3814.sol(87)

[33mWarning[0m for UnhandledException in contract 'CashMoney':
    |            
    |            if (winnerNum <= bonuses.length) {
  > |                msg.sender.transfer(msg.value+bonuses[winnerNum-1]);
    |            } else {
    |                msg.sender.transfer(msg.value);
  at /home/jiaming/slither_fp_files/out3814.sol(93)

[33mWarning[0m for UnhandledException in contract 'CashMoney':
    |                msg.sender.transfer(msg.value+bonuses[winnerNum-1]);
    |            } else {
  > |                msg.sender.transfer(msg.value);
    |            }
    |        } else {
  at /home/jiaming/slither_fp_files/out3814.sol(95)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CashMoney':
    |        require(msg.value >= min_bet && number <= 10);
    |        // YOWO - You Only Win Once
  > |        require(!winnerLog.isWinner(msg.sender));
    |        
    |        Guess storage guess;
  at /home/jiaming/slither_fp_files/out3814.sol(75)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CashMoney':
    |        if (number == current) {
    |            // you win!
  > |            winnerLog.logWinner(msg.sender, players[msg.sender].playerNo, players[msg.sender].name);
    |            
    |            uint256 winnerNum = winnerLog.getWinnerAddrs().length;
  at /home/jiaming/slither_fp_files/out3814.sol(85)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CashMoney':
    |            winnerLog.logWinner(msg.sender, players[msg.sender].playerNo, players[msg.sender].name);
    |            
  > |            uint256 winnerNum = winnerLog.getWinnerAddrs().length;
    |            
    |            // should always be true
  at /home/jiaming/slither_fp_files/out3814.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'CashMoney':
    |// Guess the number, win a prize!
    |
  > |contract CashMoney {
    |    uint256 private current;
    |    uint256 private last;
  at /home/jiaming/slither_fp_files/out3814.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'CashMoney':
    |    
    |    function updateSelf(uint256 number, bytes name) public onlyPlayer {
  > |        players[msg.sender].playerNo = number;
    |        players[msg.sender].name = name;
    |        players[msg.sender].exists = true;
  at /home/jiaming/slither_fp_files/out3814.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'CashMoney':
    |        players[msg.sender].playerNo = number;
    |        players[msg.sender].name = name;
  > |        players[msg.sender].exists = true;
    |    }
    |
  at /home/jiaming/slither_fp_files/out3814.sol(68)

[31mViolation[0m for LockedEther in contract 'WinnerLog':
    |}
    |
  > |contract WinnerLog {
    |    address public owner;
    |    event NewWinner(
  at /home/jiaming/slither_fp_files/out3814.sol(114)

[31mViolation[0m for UnrestrictedWrite in contract 'WinnerLog':
    |pragma solidity ^0.4.25;
  > |pragma experimental ABIEncoderV2;
    |// Guess the number, win a prize!
    |
  at /home/jiaming/slither_fp_files/out3814.sol(2)

[31mViolation[0m for UnrestrictedWrite in contract 'WinnerLog':
    |            winners[addr] = true;
    |            winner_name_list.push(string(name));
  > |            winner_addr_list.push(addr);
    |            emit NewWinner(msg.sender, string(name), playerNo);
    |    }
  at /home/jiaming/slither_fp_files/out3814.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'WinnerLog':
    |}
    |
  > |contract WinnerLog {
    |    address public owner;
    |    event NewWinner(
  at /home/jiaming/slither_fp_files/out3814.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'WinnerLog':
    |
    |    function addPlayer(address addr, uint256 number, string name) public onlyOwner {
  > |        players[addr] = Player(number, name, true);
    |    }
    |
  at /home/jiaming/slither_fp_files/out3814.sol(164)


