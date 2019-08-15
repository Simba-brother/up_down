Processing contract: /home/jiaming/slither_fp_files/out2551.sol:DPInsuranceFund
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out2551.sol:DoubleProfit
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out2551.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'DPInsuranceFund':
    |            require(startOfPayments && investor.insured && notReceived > 0);
    |            investor.insured = false;
  > |            msg.sender.transfer(payAmount);
    |            emit Paid(msg.sender, payAmount, notReceived, partOfNotReceived);
    |        }
  at /home/jiaming/slither_fp_files/out2551.sol(405)

[33mWarning[0m for LockedEther in contract 'DPInsuranceFund':
    |* If you already received 100% from your deposit, you will take error.
    |*/
  > |contract DPInsuranceFund {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out2551.sol(263)

[33mWarning[0m for TODAmount in contract 'DPInsuranceFund':
    |                require(msg.value >= deposit.div(10) && deposit > 0);
    |                if (msg.value > deposit.div(10)) {
  > |                    msg.sender.transfer(msg.value - deposit.div(10));
    |                }
    |                countOfInvestors++;
  at /home/jiaming/slither_fp_files/out2551.sol(394)

[33mWarning[0m for TODReceiver in contract 'DPInsuranceFund':
    |            require(startOfPayments && investor.insured && notReceived > 0);
    |            investor.insured = false;
  > |            msg.sender.transfer(payAmount);
    |            emit Paid(msg.sender, payAmount, notReceived, partOfNotReceived);
    |        }
  at /home/jiaming/slither_fp_files/out2551.sol(405)

[33mWarning[0m for TODReceiver in contract 'DPInsuranceFund':
    |                require(msg.value >= deposit.div(10) && deposit > 0);
    |                if (msg.value > deposit.div(10)) {
  > |                    msg.sender.transfer(msg.value - deposit.div(10));
    |                }
    |                countOfInvestors++;
  at /home/jiaming/slither_fp_files/out2551.sol(394)

[33mWarning[0m for UnhandledException in contract 'DPInsuranceFund':
    |            require(!startOfPayments);
    |            if (msg.sender != DPAddress && msg.value >= 0.1 ether) {
  > |                require(countOfInvestors.add(1) <= DPContract.countOfInvestors().mul(32).div(100));
    |                uint256 deposit;
    |                uint256 withdrawals;
  at /home/jiaming/slither_fp_files/out2551.sol(388)

[33mWarning[0m for UnhandledException in contract 'DPInsuranceFund':
    |                uint256 deposit;
    |                uint256 withdrawals;
  > |                (deposit, withdrawals, investor.insured) = DPContract.setInsured(msg.sender);
    |                require(msg.value >= deposit.div(10) && deposit > 0);
    |                if (msg.value > deposit.div(10)) {
  at /home/jiaming/slither_fp_files/out2551.sol(391)

[33mWarning[0m for UnhandledException in contract 'DPInsuranceFund':
    |                require(msg.value >= deposit.div(10) && deposit > 0);
    |                if (msg.value > deposit.div(10)) {
  > |                    msg.sender.transfer(msg.value - deposit.div(10));
    |                }
    |                countOfInvestors++;
  at /home/jiaming/slither_fp_files/out2551.sol(394)

[33mWarning[0m for UnhandledException in contract 'DPInsuranceFund':
    |            require(startOfPayments && investor.insured && notReceived > 0);
    |            investor.insured = false;
  > |            msg.sender.transfer(payAmount);
    |            emit Paid(msg.sender, payAmount, notReceived, partOfNotReceived);
    |        }
  at /home/jiaming/slither_fp_files/out2551.sol(405)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DPInsuranceFund':
    |            require(!startOfPayments);
    |            if (msg.sender != DPAddress && msg.value >= 0.1 ether) {
  > |                require(countOfInvestors.add(1) <= DPContract.countOfInvestors().mul(32).div(100));
    |                uint256 deposit;
    |                uint256 withdrawals;
  at /home/jiaming/slither_fp_files/out2551.sol(388)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DPInsuranceFund':
    |                uint256 deposit;
    |                uint256 withdrawals;
  > |                (deposit, withdrawals, investor.insured) = DPContract.setInsured(msg.sender);
    |                require(msg.value >= deposit.div(10) && deposit > 0);
    |                if (msg.value > deposit.div(10)) {
  at /home/jiaming/slither_fp_files/out2551.sol(391)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DPInsuranceFund':
    |                require(msg.value >= deposit.div(10) && deposit > 0);
    |                if (msg.value > deposit.div(10)) {
  > |                    msg.sender.transfer(msg.value - deposit.div(10));
    |                }
    |                countOfInvestors++;
  at /home/jiaming/slither_fp_files/out2551.sol(394)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DPInsuranceFund':
    |            require(startOfPayments && investor.insured && notReceived > 0);
    |            investor.insured = false;
  > |            msg.sender.transfer(payAmount);
    |            emit Paid(msg.sender, payAmount, notReceived, partOfNotReceived);
    |        }
  at /home/jiaming/slither_fp_files/out2551.sol(405)

[31mViolation[0m for UnrestrictedWrite in contract 'DPInsuranceFund':
    |    function setDPAddress(address _DPAddress) public {
    |        require(DPAddress == address(0x0));
  > |        DPAddress = _DPAddress;
    |        DPContract = DoubleProfit(DPAddress);
    |    }
  at /home/jiaming/slither_fp_files/out2551.sol(305)

[31mViolation[0m for UnrestrictedWrite in contract 'DPInsuranceFund':
    |        require(DPAddress == address(0x0));
    |        DPAddress = _DPAddress;
  > |        DPContract = DoubleProfit(DPAddress);
    |    }
    |
  at /home/jiaming/slither_fp_files/out2551.sol(306)

[31mViolation[0m for UnrestrictedWrite in contract 'DPInsuranceFund':
    |    function beginOfPayments() public {
    |        require(address(DPAddress).balance < 0.1 ether && !startOfPayments);
  > |        startOfPayments = true;
    |        totalSupply = address(this).balance;
    |    }
  at /home/jiaming/slither_fp_files/out2551.sol(376)

[31mViolation[0m for UnrestrictedWrite in contract 'DPInsuranceFund':
    |        require(address(DPAddress).balance < 0.1 ether && !startOfPayments);
    |        startOfPayments = true;
  > |        totalSupply = address(this).balance;
    |    }
    |
  at /home/jiaming/slither_fp_files/out2551.sol(377)

[33mWarning[0m for UnrestrictedWrite in contract 'DPInsuranceFund':
    |
    |            if (investor.deposit != deposit){
  > |                totalNotReceived = totalNotReceived.add(deposit.sub(investor.deposit));
    |                investor.deposit = deposit;
    |            }
  at /home/jiaming/slither_fp_files/out2551.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'DPInsuranceFund':
    |            if (investor.deposit != deposit){
    |                totalNotReceived = totalNotReceived.add(deposit.sub(investor.deposit));
  > |                investor.deposit = deposit;
    |            }
    |
  at /home/jiaming/slither_fp_files/out2551.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'DPInsuranceFund':
    |                    different = investor.deposit.sub(investor.withdrawals);
    |                    if (totalNotReceived >= different && different != 0)
  > |                        totalNotReceived = totalNotReceived.sub(different);
    |                    else
    |                        totalNotReceived = 0;
  at /home/jiaming/slither_fp_files/out2551.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'DPInsuranceFund':
    |                        totalNotReceived = totalNotReceived.sub(different);
    |                    else
  > |                        totalNotReceived = 0;
    |                    withdrawals = investor.deposit;
    |                } else {
  at /home/jiaming/slither_fp_files/out2551.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'DPInsuranceFund':
    |                    different = withdrawals.sub(investor.withdrawals);
    |                    if (totalNotReceived >= different)
  > |                        totalNotReceived = totalNotReceived.sub(different);
    |                    else
    |                        totalNotReceived = 0;
  at /home/jiaming/slither_fp_files/out2551.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'DPInsuranceFund':
    |                        totalNotReceived = totalNotReceived.sub(different);
    |                    else
  > |                        totalNotReceived = 0;
    |
    |                }
  at /home/jiaming/slither_fp_files/out2551.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'DPInsuranceFund':
    |                }
    |            }
  > |            investor.withdrawals = withdrawals;
    |            emit SetInfo(_address, totalNotReceived, investor.deposit, investor.withdrawals);
    |        }
  at /home/jiaming/slither_fp_files/out2551.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'DPInsuranceFund':
    |                uint256 deposit;
    |                uint256 withdrawals;
  > |                (deposit, withdrawals, investor.insured) = DPContract.setInsured(msg.sender);
    |                require(msg.value >= deposit.div(10) && deposit > 0);
    |                if (msg.value > deposit.div(10)) {
  at /home/jiaming/slither_fp_files/out2551.sol(391)

[33mWarning[0m for UnrestrictedWrite in contract 'DPInsuranceFund':
    |                    msg.sender.transfer(msg.value - deposit.div(10));
    |                }
  > |                countOfInvestors++;
    |                privateSetInfo(msg.sender, deposit, withdrawals);
    |            }
  at /home/jiaming/slither_fp_files/out2551.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'DPInsuranceFund':
    |            uint256 payAmount = totalSupply.div(100).mul(partOfNotReceived);
    |            require(startOfPayments && investor.insured && notReceived > 0);
  > |            investor.insured = false;
    |            msg.sender.transfer(payAmount);
    |            emit Paid(msg.sender, payAmount, notReceived, partOfNotReceived);
  at /home/jiaming/slither_fp_files/out2551.sol(404)

[33mWarning[0m for UnrestrictedWrite in contract 'DPInsuranceFund':
    |    function deleteInsured(address _address) public onlyDP {
    |        Investor storage investor = investors[_address];
  > |        investor.deposit = 0;
    |        investor.withdrawals = 0;
    |        investor.insured = false;
  at /home/jiaming/slither_fp_files/out2551.sol(365)

[33mWarning[0m for UnrestrictedWrite in contract 'DPInsuranceFund':
    |        Investor storage investor = investors[_address];
    |        investor.deposit = 0;
  > |        investor.withdrawals = 0;
    |        investor.insured = false;
    |        countOfInvestors--;
  at /home/jiaming/slither_fp_files/out2551.sol(366)

[33mWarning[0m for UnrestrictedWrite in contract 'DPInsuranceFund':
    |        investor.deposit = 0;
    |        investor.withdrawals = 0;
  > |        investor.insured = false;
    |        countOfInvestors--;
    |    }
  at /home/jiaming/slither_fp_files/out2551.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'DPInsuranceFund':
    |        investor.withdrawals = 0;
    |        investor.insured = false;
  > |        countOfInvestors--;
    |    }
    |
  at /home/jiaming/slither_fp_files/out2551.sol(368)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > | library SafeMath {
    |
    |     function mul(uint256 _a, uint256 _b) internal pure returns (uint256) {
  at /home/jiaming/slither_fp_files/out2551.sol(210)


