Processing contract: /home/jiaming/slither_fp_files/out10360.sol:Betting
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10360.sol:P3DTakeout
Processing contract: /home/jiaming/slither_fp_files/out10360.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'Betting':
    |            require(house_fee < address(this).balance);
    |            total_reward = total_reward.sub(house_fee);
  > |            house_takeout.transfer(house_fee);
    |            
    |            // p3d takeout
  at /home/jiaming/slither_fp_files/out10360.sol(217)

[33mWarning[0m for DAOConstantGas in contract 'Betting':
    |        require(address(this).balance >= transfer_amount);
    |        voterIndex[msg.sender].rewarded = true;
  > |        msg.sender.transfer(transfer_amount);
    |        emit Withdraw(msg.sender, transfer_amount);
    |    }
  at /home/jiaming/slither_fp_files/out10360.sol(300)

[33mWarning[0m for DAOConstantGas in contract 'Betting':
    |        require((chronus.race_end && now > chronus.starting_time + chronus.race_duration + (30 days))
    |            || (chronus.voided_bet && now > chronus.voided_timestamp + (30 days)));
  > |        house_takeout.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out10360.sol(358)

[33mWarning[0m for LockedEther in contract 'Betting':
    |}
    |
  > |contract Betting{
    |    using SafeMath for uint256; //using safemath
    |
  at /home/jiaming/slither_fp_files/out10360.sol(34)

[31mViolation[0m for TODAmount in contract 'Betting':
    |        require((chronus.race_end && now > chronus.starting_time + chronus.race_duration + (30 days))
    |            || (chronus.voided_bet && now > chronus.voided_timestamp + (30 days)));
  > |        house_takeout.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out10360.sol(358)

[33mWarning[0m for TODAmount in contract 'Betting':
    |            require(house_fee < address(this).balance);
    |            total_reward = total_reward.sub(house_fee);
  > |            house_takeout.transfer(house_fee);
    |            
    |            // p3d takeout
  at /home/jiaming/slither_fp_files/out10360.sol(217)

[33mWarning[0m for TODAmount in contract 'Betting':
    |            require(p3d_fee < address(this).balance);
    |            total_reward = total_reward.sub(p3d_fee);
  > |            P3DContract_.buyTokens.value(p3d_fee)();
    |        }
    |
  at /home/jiaming/slither_fp_files/out10360.sol(223)

[33mWarning[0m for TODReceiver in contract 'Betting':
    |        require(address(this).balance >= transfer_amount);
    |        voterIndex[msg.sender].rewarded = true;
  > |        msg.sender.transfer(transfer_amount);
    |        emit Withdraw(msg.sender, transfer_amount);
    |    }
  at /home/jiaming/slither_fp_files/out10360.sol(300)

[33mWarning[0m for TODReceiver in contract 'Betting':
    |        require((chronus.race_end && now > chronus.starting_time + chronus.race_duration + (30 days))
    |            || (chronus.voided_bet && now > chronus.voided_timestamp + (30 days)));
  > |        house_takeout.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out10360.sol(358)

[33mWarning[0m for UnhandledException in contract 'Betting':
    |            require(house_fee < address(this).balance);
    |            total_reward = total_reward.sub(house_fee);
  > |            house_takeout.transfer(house_fee);
    |            
    |            // p3d takeout
  at /home/jiaming/slither_fp_files/out10360.sol(217)

[33mWarning[0m for UnhandledException in contract 'Betting':
    |            require(p3d_fee < address(this).balance);
    |            total_reward = total_reward.sub(p3d_fee);
  > |            P3DContract_.buyTokens.value(p3d_fee)();
    |        }
    |
  at /home/jiaming/slither_fp_files/out10360.sol(223)

[33mWarning[0m for UnhandledException in contract 'Betting':
    |        require(address(this).balance >= transfer_amount);
    |        voterIndex[msg.sender].rewarded = true;
  > |        msg.sender.transfer(transfer_amount);
    |        emit Withdraw(msg.sender, transfer_amount);
    |    }
  at /home/jiaming/slither_fp_files/out10360.sol(300)

[33mWarning[0m for UnhandledException in contract 'Betting':
    |        require((chronus.race_end && now > chronus.starting_time + chronus.race_duration + (30 days))
    |            || (chronus.voided_bet && now > chronus.voided_timestamp + (30 days)));
  > |        house_takeout.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out10360.sol(358)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Betting':
    |            require(house_fee < address(this).balance);
    |            total_reward = total_reward.sub(house_fee);
  > |            house_takeout.transfer(house_fee);
    |            
    |            // p3d takeout
  at /home/jiaming/slither_fp_files/out10360.sol(217)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Betting':
    |            require(p3d_fee < address(this).balance);
    |            total_reward = total_reward.sub(p3d_fee);
  > |            P3DContract_.buyTokens.value(p3d_fee)();
    |        }
    |
  at /home/jiaming/slither_fp_files/out10360.sol(223)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Betting':
    |        require((chronus.race_end && now > chronus.starting_time + chronus.race_duration + (30 days))
    |            || (chronus.voided_bet && now > chronus.voided_timestamp + (30 days)));
  > |        house_takeout.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out10360.sol(358)

[31mViolation[0m for UnrestrictedWrite in contract 'Betting':
    |        uint160 _newTotal = coinIndex[horse].total + uint160(msg.value);
    |        uint32 _newCount = coinIndex[horse].count + 1;
  > |        coinIndex[horse].total = _newTotal;
    |        coinIndex[horse].count = _newCount;
    |        emit Deposit(msg.sender, msg.value, horse, now);
  at /home/jiaming/slither_fp_files/out10360.sol(182)

[31mViolation[0m for UnrestrictedWrite in contract 'Betting':
    |        uint32 _newCount = coinIndex[horse].count + 1;
    |        coinIndex[horse].total = _newTotal;
  > |        coinIndex[horse].count = _newCount;
    |        emit Deposit(msg.sender, msg.value, horse, now);
    |    }
  at /home/jiaming/slither_fp_files/out10360.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        }
    |        uint _newAmount = voterIndex[msg.sender].bets[horse] + msg.value;
  > |        voterIndex[msg.sender].bets[horse] = _newAmount;
    |        voterIndex[msg.sender].total_bet += uint160(msg.value);
    |        uint160 _newTotal = coinIndex[horse].total + uint160(msg.value);
  at /home/jiaming/slither_fp_files/out10360.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        uint _newAmount = voterIndex[msg.sender].bets[horse] + msg.value;
    |        voterIndex[msg.sender].bets[horse] = _newAmount;
  > |        voterIndex[msg.sender].total_bet += uint160(msg.value);
    |        uint160 _newTotal = coinIndex[horse].total + uint160(msg.value);
    |        uint32 _newCount = coinIndex[horse].count + 1;
  at /home/jiaming/slither_fp_files/out10360.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            uint house_fee = total_reward.mul(5).div(100);
    |            require(house_fee < address(this).balance);
  > |            total_reward = total_reward.sub(house_fee);
    |            house_takeout.transfer(house_fee);
    |            
  at /home/jiaming/slither_fp_files/out10360.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            uint p3d_fee = house_fee/2;
    |            require(p3d_fee < address(this).balance);
  > |            total_reward = total_reward.sub(p3d_fee);
    |            P3DContract_.buyTokens.value(p3d_fee)();
    |        }
  at /home/jiaming/slither_fp_files/out10360.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        if (horses.BTC_delta > horses.ETH_delta) {
    |            if (horses.BTC_delta > horses.LTC_delta) {
  > |                winner_horse[horses.BTC] = true;
    |                winnerPoolTotal = coinIndex[horses.BTC].total;
    |            }
  at /home/jiaming/slither_fp_files/out10360.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            if (horses.BTC_delta > horses.LTC_delta) {
    |                winner_horse[horses.BTC] = true;
  > |                winnerPoolTotal = coinIndex[horses.BTC].total;
    |            }
    |            else if(horses.LTC_delta > horses.BTC_delta) {
  at /home/jiaming/slither_fp_files/out10360.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            }
    |            else if(horses.LTC_delta > horses.BTC_delta) {
  > |                winner_horse[horses.LTC] = true;
    |                winnerPoolTotal = coinIndex[horses.LTC].total;
    |            } else {
  at /home/jiaming/slither_fp_files/out10360.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            else if(horses.LTC_delta > horses.BTC_delta) {
    |                winner_horse[horses.LTC] = true;
  > |                winnerPoolTotal = coinIndex[horses.LTC].total;
    |            } else {
    |                winner_horse[horses.BTC] = true;
  at /home/jiaming/slither_fp_files/out10360.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |                winnerPoolTotal = coinIndex[horses.LTC].total;
    |            } else {
  > |                winner_horse[horses.BTC] = true;
    |                winner_horse[horses.LTC] = true;
    |                winnerPoolTotal = coinIndex[horses.BTC].total + (coinIndex[horses.LTC].total);
  at /home/jiaming/slither_fp_files/out10360.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            } else {
    |                winner_horse[horses.BTC] = true;
  > |                winner_horse[horses.LTC] = true;
    |                winnerPoolTotal = coinIndex[horses.BTC].total + (coinIndex[horses.LTC].total);
    |            }
  at /home/jiaming/slither_fp_files/out10360.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |                winner_horse[horses.BTC] = true;
    |                winner_horse[horses.LTC] = true;
  > |                winnerPoolTotal = coinIndex[horses.BTC].total + (coinIndex[horses.LTC].total);
    |            }
    |        } else if(horses.ETH_delta > horses.BTC_delta) {
  at /home/jiaming/slither_fp_files/out10360.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        } else if(horses.ETH_delta > horses.BTC_delta) {
    |            if (horses.ETH_delta > horses.LTC_delta) {
  > |                winner_horse[horses.ETH] = true;
    |                winnerPoolTotal = coinIndex[horses.ETH].total;
    |            }
  at /home/jiaming/slither_fp_files/out10360.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            if (horses.ETH_delta > horses.LTC_delta) {
    |                winner_horse[horses.ETH] = true;
  > |                winnerPoolTotal = coinIndex[horses.ETH].total;
    |            }
    |            else if (horses.LTC_delta > horses.ETH_delta) {
  at /home/jiaming/slither_fp_files/out10360.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            }
    |            else if (horses.LTC_delta > horses.ETH_delta) {
  > |                winner_horse[horses.LTC] = true;
    |                winnerPoolTotal = coinIndex[horses.LTC].total;
    |            } else {
  at /home/jiaming/slither_fp_files/out10360.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            else if (horses.LTC_delta > horses.ETH_delta) {
    |                winner_horse[horses.LTC] = true;
  > |                winnerPoolTotal = coinIndex[horses.LTC].total;
    |            } else {
    |                winner_horse[horses.ETH] = true;
  at /home/jiaming/slither_fp_files/out10360.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |                winnerPoolTotal = coinIndex[horses.LTC].total;
    |            } else {
  > |                winner_horse[horses.ETH] = true;
    |                winner_horse[horses.LTC] = true;
    |                winnerPoolTotal = coinIndex[horses.ETH].total + (coinIndex[horses.LTC].total);
  at /home/jiaming/slither_fp_files/out10360.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            } else {
    |                winner_horse[horses.ETH] = true;
  > |                winner_horse[horses.LTC] = true;
    |                winnerPoolTotal = coinIndex[horses.ETH].total + (coinIndex[horses.LTC].total);
    |            }
  at /home/jiaming/slither_fp_files/out10360.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |                winner_horse[horses.ETH] = true;
    |                winner_horse[horses.LTC] = true;
  > |                winnerPoolTotal = coinIndex[horses.ETH].total + (coinIndex[horses.LTC].total);
    |            }
    |        } else {
  at /home/jiaming/slither_fp_files/out10360.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        } else {
    |            if (horses.LTC_delta > horses.ETH_delta) {
  > |                winner_horse[horses.LTC] = true;
    |                winnerPoolTotal = coinIndex[horses.LTC].total;
    |            } else if(horses.LTC_delta < horses.ETH_delta){
  at /home/jiaming/slither_fp_files/out10360.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            if (horses.LTC_delta > horses.ETH_delta) {
    |                winner_horse[horses.LTC] = true;
  > |                winnerPoolTotal = coinIndex[horses.LTC].total;
    |            } else if(horses.LTC_delta < horses.ETH_delta){
    |                winner_horse[horses.ETH] = true;
  at /home/jiaming/slither_fp_files/out10360.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |                winnerPoolTotal = coinIndex[horses.LTC].total;
    |            } else if(horses.LTC_delta < horses.ETH_delta){
  > |                winner_horse[horses.ETH] = true;
    |                winner_horse[horses.BTC] = true;
    |                winnerPoolTotal = coinIndex[horses.ETH].total + (coinIndex[horses.BTC].total);
  at /home/jiaming/slither_fp_files/out10360.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            } else if(horses.LTC_delta < horses.ETH_delta){
    |                winner_horse[horses.ETH] = true;
  > |                winner_horse[horses.BTC] = true;
    |                winnerPoolTotal = coinIndex[horses.ETH].total + (coinIndex[horses.BTC].total);
    |            } else {
  at /home/jiaming/slither_fp_files/out10360.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |                winner_horse[horses.ETH] = true;
    |                winner_horse[horses.BTC] = true;
  > |                winnerPoolTotal = coinIndex[horses.ETH].total + (coinIndex[horses.BTC].total);
    |            } else {
    |                winner_horse[horses.LTC] = true;
  at /home/jiaming/slither_fp_files/out10360.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |                winnerPoolTotal = coinIndex[horses.ETH].total + (coinIndex[horses.BTC].total);
    |            } else {
  > |                winner_horse[horses.LTC] = true;
    |                winner_horse[horses.ETH] = true;
    |                winner_horse[horses.BTC] = true;
  at /home/jiaming/slither_fp_files/out10360.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            } else {
    |                winner_horse[horses.LTC] = true;
  > |                winner_horse[horses.ETH] = true;
    |                winner_horse[horses.BTC] = true;
    |                winnerPoolTotal = coinIndex[horses.ETH].total + (coinIndex[horses.BTC].total) + (coinIndex[horses.LTC].total);
  at /home/jiaming/slither_fp_files/out10360.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |                winner_horse[horses.LTC] = true;
    |                winner_horse[horses.ETH] = true;
  > |                winner_horse[horses.BTC] = true;
    |                winnerPoolTotal = coinIndex[horses.ETH].total + (coinIndex[horses.BTC].total) + (coinIndex[horses.LTC].total);
    |            }
  at /home/jiaming/slither_fp_files/out10360.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |                winner_horse[horses.ETH] = true;
    |                winner_horse[horses.BTC] = true;
  > |                winnerPoolTotal = coinIndex[horses.ETH].total + (coinIndex[horses.BTC].total) + (coinIndex[horses.LTC].total);
    |            }
    |        }
  at /home/jiaming/slither_fp_files/out10360.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            }
    |        }
  > |        chronus.race_end = true;
    |    }
    |
  at /home/jiaming/slither_fp_files/out10360.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        uint transfer_amount = calculateReward(msg.sender);
    |        require(address(this).balance >= transfer_amount);
  > |        voterIndex[msg.sender].rewarded = true;
    |        msg.sender.transfer(transfer_amount);
    |        emit Withdraw(msg.sender, transfer_amount);
  at /home/jiaming/slither_fp_files/out10360.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |    function changeOwnership(address _newOwner) onlyOwner external {
    |        require(now > chronus.starting_time + chronus.race_duration + 60 minutes);
  > |        owner = _newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out10360.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        require (!chronus.race_end);
    |        emit PriceCallback(coin_pointer, result, isPrePrice);
  > |        chronus.race_start = true;
    |        chronus.betting_open = false;
    |        if (isPrePrice) {
  at /home/jiaming/slither_fp_files/out10360.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        emit PriceCallback(coin_pointer, result, isPrePrice);
    |        chronus.race_start = true;
  > |        chronus.betting_open = false;
    |        if (isPrePrice) {
    |            if (now >= chronus.starting_time+chronus.betting_duration+ 60 minutes) {
  at /home/jiaming/slither_fp_files/out10360.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |                forceVoidRace();
    |            } else {
  > |                coinIndex[coin_pointer].pre = result;
    |            }
    |        } else if (!isPrePrice){
  at /home/jiaming/slither_fp_files/out10360.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |                    forceVoidRace();
    |                } else {
  > |                    coinIndex[coin_pointer].post = result;
    |                    coinIndex[coin_pointer].price_check = true;
    |
  at /home/jiaming/slither_fp_files/out10360.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |                } else {
    |                    coinIndex[coin_pointer].post = result;
  > |                    coinIndex[coin_pointer].price_check = true;
    |
    |                    if (coinIndex[horses.ETH].price_check && coinIndex[horses.BTC].price_check && coinIndex[horses.LTC].price_check) {
  at /home/jiaming/slither_fp_files/out10360.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |    // method to place the oraclize queries
    |    function setupRace(uint32 _bettingDuration, uint32 _raceDuration) onlyOwner beforeBetting external payable {
  > |            chronus.starting_time = uint32(block.timestamp);
    |            chronus.betting_open = true;
    |            chronus.betting_duration = _bettingDuration;
  at /home/jiaming/slither_fp_files/out10360.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |    function setupRace(uint32 _bettingDuration, uint32 _raceDuration) onlyOwner beforeBetting external payable {
    |            chronus.starting_time = uint32(block.timestamp);
  > |            chronus.betting_open = true;
    |            chronus.betting_duration = _bettingDuration;
    |            chronus.race_duration = _raceDuration;
  at /home/jiaming/slither_fp_files/out10360.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            chronus.starting_time = uint32(block.timestamp);
    |            chronus.betting_open = true;
  > |            chronus.betting_duration = _bettingDuration;
    |            chronus.race_duration = _raceDuration;
    |    }
  at /home/jiaming/slither_fp_files/out10360.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            chronus.betting_open = true;
    |            chronus.betting_duration = _bettingDuration;
  > |            chronus.race_duration = _raceDuration;
    |    }
    |
  at /home/jiaming/slither_fp_files/out10360.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        not using safemath since signed integers are handled
    |        */
  > |        horses.BTC_delta = int64(coinIndex[horses.BTC].post - coinIndex[horses.BTC].pre)*100000/int64(coinIndex[horses.BTC].pre);
    |        horses.ETH_delta = int64(coinIndex[horses.ETH].post - coinIndex[horses.ETH].pre)*100000/int64(coinIndex[horses.ETH].pre);
    |        horses.LTC_delta = int64(coinIndex[horses.LTC].post - coinIndex[horses.LTC].pre)*100000/int64(coinIndex[horses.LTC].pre);
  at /home/jiaming/slither_fp_files/out10360.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        */
    |        horses.BTC_delta = int64(coinIndex[horses.BTC].post - coinIndex[horses.BTC].pre)*100000/int64(coinIndex[horses.BTC].pre);
  > |        horses.ETH_delta = int64(coinIndex[horses.ETH].post - coinIndex[horses.ETH].pre)*100000/int64(coinIndex[horses.ETH].pre);
    |        horses.LTC_delta = int64(coinIndex[horses.LTC].post - coinIndex[horses.LTC].pre)*100000/int64(coinIndex[horses.LTC].pre);
    |
  at /home/jiaming/slither_fp_files/out10360.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        horses.BTC_delta = int64(coinIndex[horses.BTC].post - coinIndex[horses.BTC].pre)*100000/int64(coinIndex[horses.BTC].pre);
    |        horses.ETH_delta = int64(coinIndex[horses.ETH].post - coinIndex[horses.ETH].pre)*100000/int64(coinIndex[horses.ETH].pre);
  > |        horses.LTC_delta = int64(coinIndex[horses.LTC].post - coinIndex[horses.LTC].pre)*100000/int64(coinIndex[horses.LTC].pre);
    |
    |        total_reward = (coinIndex[horses.BTC].total) + (coinIndex[horses.ETH].total) + (coinIndex[horses.LTC].total);
  at /home/jiaming/slither_fp_files/out10360.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        horses.LTC_delta = int64(coinIndex[horses.LTC].post - coinIndex[horses.LTC].pre)*100000/int64(coinIndex[horses.LTC].pre);
    |
  > |        total_reward = (coinIndex[horses.BTC].total) + (coinIndex[horses.ETH].total) + (coinIndex[horses.LTC].total);
    |        if (total_bettors <= 1) {
    |            emit RefundEnabled("Not enough participants");
  at /home/jiaming/slither_fp_files/out10360.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |    function forceVoidRace() internal {
    |        require(!chronus.voided_bet);
  > |        chronus.voided_bet=true;
    |        chronus.race_end = true;
    |        chronus.voided_timestamp=uint32(now);
  at /home/jiaming/slither_fp_files/out10360.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        require(!chronus.voided_bet);
    |        chronus.voided_bet=true;
  > |        chronus.race_end = true;
    |        chronus.voided_timestamp=uint32(now);
    |    }
  at /home/jiaming/slither_fp_files/out10360.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        chronus.voided_bet=true;
    |        chronus.race_end = true;
  > |        chronus.voided_timestamp=uint32(now);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out10360.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        require((chronus.betting_open && !chronus.race_start)
    |            || (chronus.race_start && !chronus.race_end));
  > |        chronus.voided_bet = true;
    |        chronus.race_end = true;
    |        chronus.voided_timestamp=uint32(now);
  at /home/jiaming/slither_fp_files/out10360.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |            || (chronus.race_start && !chronus.race_end));
    |        chronus.voided_bet = true;
  > |        chronus.race_end = true;
    |        chronus.voided_timestamp=uint32(now);
    |    }
  at /home/jiaming/slither_fp_files/out10360.sol(350)

[33mWarning[0m for UnrestrictedWrite in contract 'Betting':
    |        chronus.voided_bet = true;
    |        chronus.race_end = true;
  > |        chronus.voided_timestamp=uint32(now);
    |    }
    |
  at /home/jiaming/slither_fp_files/out10360.sol(351)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |pragma solidity ^0.4.21;
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/slither_fp_files/out10360.sol(4)


