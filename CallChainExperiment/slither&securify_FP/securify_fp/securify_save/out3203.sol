Processing contract: /home/jiaming/slither_fp_files/out3203.sol:Dice_BrickGame
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out3203.sol:IUserData
[31mViolation[0m for DAOConstantGas in contract 'Dice_BrickGame':
    |        require(winPossible <= MAX_PROFIT);
    |        if(userData.getUserRef(msg.sender, "Dice") != address(0x0)) {
  > |            userData.getUserRef(msg.sender, "Dice").transfer(msg.value * REF_PERCENT / 1000);
    |        } else if(ref != address(0x0)) {
    |            ref.transfer(msg.value * REF_PERCENT / 1000);
  at /home/jiaming/slither_fp_files/out3203.sol(121)

[31mViolation[0m for DAOConstantGas in contract 'Dice_BrickGame':
    |
    |    function sendFunds(address beneficiary, uint amount) private {
  > |        if (beneficiary.send(amount)) {
    |            emit Payment(beneficiary, amount);
    |        } else {
  at /home/jiaming/slither_fp_files/out3203.sol(296)

[31mViolation[0m for DAOConstantGas in contract 'Dice_BrickGame':
    |        uint pay = 0;
    |        for (uint i = payLoan; i < loans.length; i++) {
  > |            if (loans[i].player.send(loans[i].amount)) {
    |                emit Repayment(loans[i].player, loans[i].amount);
    |                pay++;
  at /home/jiaming/slither_fp_files/out3203.sol(307)

[33mWarning[0m for LockedEther in contract 'Dice_BrickGame':
    |}
    |
  > |contract Dice_BrickGame {
    |    IUserData userData = IUserData(address(0x21d364b66d9065B5207124e2b1e49e4193e0a2ff));
    |
  at /home/jiaming/slither_fp_files/out3203.sol(10)

[31mViolation[0m for TODAmount in contract 'Dice_BrickGame':
    |        require(winPossible <= MAX_PROFIT);
    |        if(userData.getUserRef(msg.sender, "Dice") != address(0x0)) {
  > |            userData.getUserRef(msg.sender, "Dice").transfer(msg.value * REF_PERCENT / 1000);
    |        } else if(ref != address(0x0)) {
    |            ref.transfer(msg.value * REF_PERCENT / 1000);
  at /home/jiaming/slither_fp_files/out3203.sol(121)

[31mViolation[0m for TODAmount in contract 'Dice_BrickGame':
    |            userData.getUserRef(msg.sender, "Dice").transfer(msg.value * REF_PERCENT / 1000);
    |        } else if(ref != address(0x0)) {
  > |            ref.transfer(msg.value * REF_PERCENT / 1000);
    |            userData.setUserRef(msg.sender, ref, "Dice");
    |        }
  at /home/jiaming/slither_fp_files/out3203.sol(123)

[33mWarning[0m for TODAmount in contract 'Dice_BrickGame':
    |
    |    function sendFunds(address beneficiary, uint amount) private {
  > |        if (beneficiary.send(amount)) {
    |            emit Payment(beneficiary, amount);
    |        } else {
  at /home/jiaming/slither_fp_files/out3203.sol(296)

[33mWarning[0m for TODReceiver in contract 'Dice_BrickGame':
    |
    |    function sendFunds(address beneficiary, uint amount) private {
  > |        if (beneficiary.send(amount)) {
    |            emit Payment(beneficiary, amount);
    |        } else {
  at /home/jiaming/slither_fp_files/out3203.sol(296)

[33mWarning[0m for UnhandledException in contract 'Dice_BrickGame':
    |        }
    |        require(winPossible <= MAX_PROFIT);
  > |        if(userData.getUserRef(msg.sender, "Dice") != address(0x0)) {
    |            userData.getUserRef(msg.sender, "Dice").transfer(msg.value * REF_PERCENT / 1000);
    |        } else if(ref != address(0x0)) {
  at /home/jiaming/slither_fp_files/out3203.sol(120)

[33mWarning[0m for UnhandledException in contract 'Dice_BrickGame':
    |        require(winPossible <= MAX_PROFIT);
    |        if(userData.getUserRef(msg.sender, "Dice") != address(0x0)) {
  > |            userData.getUserRef(msg.sender, "Dice").transfer(msg.value * REF_PERCENT / 1000);
    |        } else if(ref != address(0x0)) {
    |            ref.transfer(msg.value * REF_PERCENT / 1000);
  at /home/jiaming/slither_fp_files/out3203.sol(121)

[33mWarning[0m for UnhandledException in contract 'Dice_BrickGame':
    |            userData.getUserRef(msg.sender, "Dice").transfer(msg.value * REF_PERCENT / 1000);
    |        } else if(ref != address(0x0)) {
  > |            ref.transfer(msg.value * REF_PERCENT / 1000);
    |            userData.setUserRef(msg.sender, ref, "Dice");
    |        }
  at /home/jiaming/slither_fp_files/out3203.sol(123)

[33mWarning[0m for UnhandledException in contract 'Dice_BrickGame':
    |        } else if(ref != address(0x0)) {
    |            ref.transfer(msg.value * REF_PERCENT / 1000);
  > |            userData.setUserRef(msg.sender, ref, "Dice");
    |        }
    |        bets.length++;
  at /home/jiaming/slither_fp_files/out3203.sol(124)

[33mWarning[0m for UnhandledException in contract 'Dice_BrickGame':
    |
    |    function sendFunds(address beneficiary, uint amount) private {
  > |        if (beneficiary.send(amount)) {
    |            emit Payment(beneficiary, amount);
    |        } else {
  at /home/jiaming/slither_fp_files/out3203.sol(296)

[33mWarning[0m for UnhandledException in contract 'Dice_BrickGame':
    |        uint pay = 0;
    |        for (uint i = payLoan; i < loans.length; i++) {
  > |            if (loans[i].player.send(loans[i].amount)) {
    |                emit Repayment(loans[i].player, loans[i].amount);
    |                pay++;
  at /home/jiaming/slither_fp_files/out3203.sol(307)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dice_BrickGame':
    |        }
    |        require(winPossible <= MAX_PROFIT);
  > |        if(userData.getUserRef(msg.sender, "Dice") != address(0x0)) {
    |            userData.getUserRef(msg.sender, "Dice").transfer(msg.value * REF_PERCENT / 1000);
    |        } else if(ref != address(0x0)) {
  at /home/jiaming/slither_fp_files/out3203.sol(120)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dice_BrickGame':
    |        require(winPossible <= MAX_PROFIT);
    |        if(userData.getUserRef(msg.sender, "Dice") != address(0x0)) {
  > |            userData.getUserRef(msg.sender, "Dice").transfer(msg.value * REF_PERCENT / 1000);
    |        } else if(ref != address(0x0)) {
    |            ref.transfer(msg.value * REF_PERCENT / 1000);
  at /home/jiaming/slither_fp_files/out3203.sol(121)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dice_BrickGame':
    |        } else if(ref != address(0x0)) {
    |            ref.transfer(msg.value * REF_PERCENT / 1000);
  > |            userData.setUserRef(msg.sender, ref, "Dice");
    |        }
    |        bets.length++;
  at /home/jiaming/slither_fp_files/out3203.sol(124)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dice_BrickGame':
    |
    |    function sendFunds(address beneficiary, uint amount) private {
  > |        if (beneficiary.send(amount)) {
    |            emit Payment(beneficiary, amount);
    |        } else {
  at /home/jiaming/slither_fp_files/out3203.sol(296)

[31mViolation[0m for UnrestrictedWrite in contract 'Dice_BrickGame':
    |            }
    |        }
  > |        payLoan += pay;
    |    }
    |
  at /home/jiaming/slither_fp_files/out3203.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'Dice_BrickGame':
    |pragma solidity ^0.4.25;
    |
  > |contract IUserData {
    |    //set
    |    function setUserRef(address _address, address _refAddress, string _gameName) public;
  at /home/jiaming/slither_fp_files/out3203.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Dice_BrickGame':
    |                emit Jackpot(bets[gameNumber].player, jackpotFund);
    |                sendFunds(bets[gameNumber].player, jackpotFund + winValue);
  > |                jackpotFund = 0;
    |            } else {
    |                if (winValue > 0) {
  at /home/jiaming/slither_fp_files/out3203.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'Dice_BrickGame':
    |                emit Jackpot(bets[gameNumber].player, jackpotFund);
    |                sendFunds(bets[gameNumber].player, jackpotFund + winValue);
  > |                jackpotFund = 0;
    |            } else {
    |                if (winValue > 0) {
  at /home/jiaming/slither_fp_files/out3203.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'Dice_BrickGame':
    |            }
    |        }
  > |        resolve += i;
    |    }
    |
  at /home/jiaming/slither_fp_files/out3203.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'Dice_BrickGame':
    |        } else {
    |            emit FailedPayment(beneficiary, amount);
  > |            loans.push(Loan(beneficiary, amount));
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out3203.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'Dice_BrickGame':
    |    function setBot(address _bot) public onlyOwner {
    |        require(_bot != address(0x0));
  > |        bot = _bot;
    |    }
    |
  at /home/jiaming/slither_fp_files/out3203.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'Dice_BrickGame':
    |
    |    function setConfig(uint8 _FEE_PERCENT, uint8 _JACKPOT_PERCENT, uint _MAX_PROFIT, uint _MIN_BET, uint _MAX_BET, uint _JACKPOT_WIN, uint8 _REF_PERCENT) public onlyOwner {
  > |        FEE_PERCENT = _FEE_PERCENT;
    |        JACKPOT_PERCENT = _JACKPOT_PERCENT;
    |        MAX_PROFIT = _MAX_PROFIT;
  at /home/jiaming/slither_fp_files/out3203.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'Dice_BrickGame':
    |    function setConfig(uint8 _FEE_PERCENT, uint8 _JACKPOT_PERCENT, uint _MAX_PROFIT, uint _MIN_BET, uint _MAX_BET, uint _JACKPOT_WIN, uint8 _REF_PERCENT) public onlyOwner {
    |        FEE_PERCENT = _FEE_PERCENT;
  > |        JACKPOT_PERCENT = _JACKPOT_PERCENT;
    |        MAX_PROFIT = _MAX_PROFIT;
    |        MIN_BET = _MIN_BET;
  at /home/jiaming/slither_fp_files/out3203.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'Dice_BrickGame':
    |        FEE_PERCENT = _FEE_PERCENT;
    |        JACKPOT_PERCENT = _JACKPOT_PERCENT;
  > |        MAX_PROFIT = _MAX_PROFIT;
    |        MIN_BET = _MIN_BET;
    |        MAX_BET = _MAX_BET;
  at /home/jiaming/slither_fp_files/out3203.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'Dice_BrickGame':
    |        JACKPOT_PERCENT = _JACKPOT_PERCENT;
    |        MAX_PROFIT = _MAX_PROFIT;
  > |        MIN_BET = _MIN_BET;
    |        MAX_BET = _MAX_BET;
    |        MAX_PROFIT = _MAX_PROFIT;
  at /home/jiaming/slither_fp_files/out3203.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'Dice_BrickGame':
    |        MAX_PROFIT = _MAX_PROFIT;
    |        MIN_BET = _MIN_BET;
  > |        MAX_BET = _MAX_BET;
    |        MAX_PROFIT = _MAX_PROFIT;
    |        JACKPOT_WIN = _JACKPOT_WIN;
  at /home/jiaming/slither_fp_files/out3203.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'Dice_BrickGame':
    |        MIN_BET = _MIN_BET;
    |        MAX_BET = _MAX_BET;
  > |        MAX_PROFIT = _MAX_PROFIT;
    |        JACKPOT_WIN = _JACKPOT_WIN;
    |        REF_PERCENT = _REF_PERCENT;
  at /home/jiaming/slither_fp_files/out3203.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'Dice_BrickGame':
    |        MAX_BET = _MAX_BET;
    |        MAX_PROFIT = _MAX_PROFIT;
  > |        JACKPOT_WIN = _JACKPOT_WIN;
    |        REF_PERCENT = _REF_PERCENT;
    |    }
  at /home/jiaming/slither_fp_files/out3203.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'Dice_BrickGame':
    |        MAX_PROFIT = _MAX_PROFIT;
    |        JACKPOT_WIN = _JACKPOT_WIN;
  > |        REF_PERCENT = _REF_PERCENT;
    |    }
    |
  at /home/jiaming/slither_fp_files/out3203.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'Dice_BrickGame':
    |    function increaseJackpot(uint increaseAmount) external onlyOwner {
    |        require(increaseAmount <= address(this).balance, "Not enough funds");
  > |        jackpotFund += uint(increaseAmount);
    |        emit JackpotIncrease(jackpotFund);
    |    }
  at /home/jiaming/slither_fp_files/out3203.sol(154)


