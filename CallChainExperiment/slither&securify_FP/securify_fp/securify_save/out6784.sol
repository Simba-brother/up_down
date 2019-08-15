Processing contract: /home/jiaming/slither_fp_files/out6784.sol:AgileArbitrationWithAssistance
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6784.sol:AgileCycleWithAssistance
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6784.sol:AgileICOWithAssistance
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6784.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6784.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6784.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6784.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6784.sol:TokenWithoutStart
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'AgileArbitrationWithAssistance':
    |
    |
  > |contract AgileArbitrationWithAssistance is Owned {
    |
    |    address public operator;
  at /home/jiaming/slither_fp_files/out6784.sol(816)

[33mWarning[0m for UnhandledException in contract 'AgileArbitrationWithAssistance':
    |    function openDispute(address _icoRoundAddress, string _reason) public {
    |        AgileCycleWithAssistance cycle = AgileCycleWithAssistance(_icoRoundAddress);
  > |        uint milestoneDispute = cycle.currentMilestone();
    |        require(milestoneDispute > 0);
    |        require(cycle.investorExists(msg.sender) == true);
  at /home/jiaming/slither_fp_files/out6784.sol(876)

[33mWarning[0m for UnhandledException in contract 'AgileArbitrationWithAssistance':
    |        uint milestoneDispute = cycle.currentMilestone();
    |        require(milestoneDispute > 0);
  > |        require(cycle.investorExists(msg.sender) == true);
    |        disputes[disputeLength].milestone = milestoneDispute;
    |
  at /home/jiaming/slither_fp_files/out6784.sol(878)

[33mWarning[0m for UnhandledException in contract 'AgileArbitrationWithAssistance':
    |        disputes[disputeLength].pending = true;
    |
  > |        cycle.disputeOpened(msg.sender);
    |        disputeLength +=1;
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(887)

[33mWarning[0m for UnhandledException in contract 'AgileArbitrationWithAssistance':
    |        uint milestoneDispute = disputes[_disputeId].milestone;
    |        AgileCycleWithAssistance cycle = AgileCycleWithAssistance(disputes[_disputeId].icoRoundAddress);
  > |        cycle.verdictExecuted(disputes[_disputeId].investorAddress,_verdictForInvestor,milestoneDispute);
    |        //counter +=1;
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(896)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileArbitrationWithAssistance':
    |    function openDispute(address _icoRoundAddress, string _reason) public {
    |        AgileCycleWithAssistance cycle = AgileCycleWithAssistance(_icoRoundAddress);
  > |        uint milestoneDispute = cycle.currentMilestone();
    |        require(milestoneDispute > 0);
    |        require(cycle.investorExists(msg.sender) == true);
  at /home/jiaming/slither_fp_files/out6784.sol(876)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileArbitrationWithAssistance':
    |        uint milestoneDispute = cycle.currentMilestone();
    |        require(milestoneDispute > 0);
  > |        require(cycle.investorExists(msg.sender) == true);
    |        disputes[disputeLength].milestone = milestoneDispute;
    |
  at /home/jiaming/slither_fp_files/out6784.sol(878)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileArbitrationWithAssistance':
    |        disputes[disputeLength].pending = true;
    |
  > |        cycle.disputeOpened(msg.sender);
    |        disputeLength +=1;
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(887)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileArbitrationWithAssistance':
    |        uint milestoneDispute = disputes[_disputeId].milestone;
    |        AgileCycleWithAssistance cycle = AgileCycleWithAssistance(disputes[_disputeId].icoRoundAddress);
  > |        cycle.verdictExecuted(disputes[_disputeId].investorAddress,_verdictForInvestor,milestoneDispute);
    |        //counter +=1;
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(896)

[31mViolation[0m for UnrestrictedWrite in contract 'AgileArbitrationWithAssistance':
    |
    |
  > |contract AgileArbitrationWithAssistance is Owned {
    |
    |    address public operator;
  at /home/jiaming/slither_fp_files/out6784.sol(816)

[31mViolation[0m for UnrestrictedWrite in contract 'AgileArbitrationWithAssistance':
    |    function setArbiters(address _icoRoundAddress, address[] _arbiters) only(owner) public {
    |        for (uint i = 0; i < _arbiters.length ; i++) {
  > |            arbiterPool[_icoRoundAddress][_arbiters[i]] = true;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(853)

[31mViolation[0m for UnrestrictedWrite in contract 'AgileArbitrationWithAssistance':
    |        require(arbiterPool[disputes[_disputeId].icoRoundAddress][msg.sender] == true);
    |        require(disputes[_disputeId].voters[msg.sender] != true);
  > |        if (_voteForInvestor == true) { disputes[_disputeId].votesForInvestor += 1; }
    |        else { disputes[_disputeId].votesForProject += 1; }
    |        if (disputes[_disputeId].votesForInvestor == quorum) {
  at /home/jiaming/slither_fp_files/out6784.sol(862)

[31mViolation[0m for UnrestrictedWrite in contract 'AgileArbitrationWithAssistance':
    |        require(disputes[_disputeId].voters[msg.sender] != true);
    |        if (_voteForInvestor == true) { disputes[_disputeId].votesForInvestor += 1; }
  > |        else { disputes[_disputeId].votesForProject += 1; }
    |        if (disputes[_disputeId].votesForInvestor == quorum) {
    |            executeVerdict(_disputeId,true);
  at /home/jiaming/slither_fp_files/out6784.sol(863)

[31mViolation[0m for UnrestrictedWrite in contract 'AgileArbitrationWithAssistance':
    |        require(milestoneDispute > 0);
    |        require(cycle.investorExists(msg.sender) == true);
  > |        disputes[disputeLength].milestone = milestoneDispute;
    |
    |        disputes[disputeLength].icoRoundAddress = _icoRoundAddress;
  at /home/jiaming/slither_fp_files/out6784.sol(879)

[31mViolation[0m for UnrestrictedWrite in contract 'AgileArbitrationWithAssistance':
    |        disputes[disputeLength].milestone = milestoneDispute;
    |
  > |        disputes[disputeLength].icoRoundAddress = _icoRoundAddress;
    |        disputes[disputeLength].investorAddress = msg.sender;
    |        disputes[disputeLength].timestamp = now;
  at /home/jiaming/slither_fp_files/out6784.sol(881)

[31mViolation[0m for UnrestrictedWrite in contract 'AgileArbitrationWithAssistance':
    |
    |        disputes[disputeLength].icoRoundAddress = _icoRoundAddress;
  > |        disputes[disputeLength].investorAddress = msg.sender;
    |        disputes[disputeLength].timestamp = now;
    |        disputes[disputeLength].reason = _reason;
  at /home/jiaming/slither_fp_files/out6784.sol(882)

[31mViolation[0m for UnrestrictedWrite in contract 'AgileArbitrationWithAssistance':
    |        disputes[disputeLength].icoRoundAddress = _icoRoundAddress;
    |        disputes[disputeLength].investorAddress = msg.sender;
  > |        disputes[disputeLength].timestamp = now;
    |        disputes[disputeLength].reason = _reason;
    |        disputes[disputeLength].pending = true;
  at /home/jiaming/slither_fp_files/out6784.sol(883)

[31mViolation[0m for UnrestrictedWrite in contract 'AgileArbitrationWithAssistance':
    |        disputes[disputeLength].timestamp = now;
    |        disputes[disputeLength].reason = _reason;
  > |        disputes[disputeLength].pending = true;
    |
    |        cycle.disputeOpened(msg.sender);
  at /home/jiaming/slither_fp_files/out6784.sol(885)

[31mViolation[0m for UnrestrictedWrite in contract 'AgileArbitrationWithAssistance':
    |
    |        cycle.disputeOpened(msg.sender);
  > |        disputeLength +=1;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6784.sol(888)

[31mViolation[0m for UnrestrictedWrite in contract 'AgileArbitrationWithAssistance':
    |    // INTERNAL
    |    function executeVerdict(uint _disputeId, bool _verdictForInvestor) internal {
  > |        disputes[_disputeId].pending = false;
    |        uint milestoneDispute = disputes[_disputeId].milestone;
    |        AgileCycleWithAssistance cycle = AgileCycleWithAssistance(disputes[_disputeId].icoRoundAddress);
  at /home/jiaming/slither_fp_files/out6784.sol(893)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileArbitrationWithAssistance':
    |
    |    function transferOwnership(address _newOwner) only(owner) public {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6784.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileArbitrationWithAssistance':
    |    function acceptOwnership() only(newOwner) public {
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6784.sol(49)

[31mViolation[0m for DAOConstantGas in contract 'AgileCycleWithAssistance':
    |        }
    |        if (msg.sender == operator) {
  > |            require(projectWallet.send(ethForMilestone+postDisputeEth));
    |            ethForMilestone = 0;
    |            postDisputeEth = 0;
  at /home/jiaming/slither_fp_files/out6784.sol(616)

[31mViolation[0m for DAOConstantGas in contract 'AgileCycleWithAssistance':
    |        }
    |        if (msg.sender == juryOperator) {
  > |            require(juryOnlineWallet.send(etherAllowance));
    |            //require(jotter.call.value(jotAllowance)(abi.encodeWithSignature("swapMe()")));
    |            etherAllowance = 0;
  at /home/jiaming/slither_fp_files/out6784.sol(621)

[33mWarning[0m for DAOConstantGas in contract 'AgileCycleWithAssistance':
    |        }
    |        if (deals[msg.sender].verdictForInvestor == true) {
  > |            require(msg.sender.send(deals[msg.sender].etherAmount - deals[msg.sender].etherUsed));
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(627)

[33mWarning[0m for DAOConstantGas in contract 'AgileCycleWithAssistance':
    |        if (msg.sender == juryOperator) {
    |            require(saveMe == true);
  > |            require(juryOperator.send(address(this).balance));
    |            uint allTheLockedTokens = token.balanceOf(this);
    |            require(token.transfer(juryOperator,allTheLockedTokens));
  at /home/jiaming/slither_fp_files/out6784.sol(808)

[33mWarning[0m for LockedEther in contract 'AgileCycleWithAssistance':
    |}
    |
  > |contract AgileCycleWithAssistance {
    |    using SafeMath for uint;
    |    //VARIABLES
  at /home/jiaming/slither_fp_files/out6784.sol(505)

[31mViolation[0m for TODAmount in contract 'AgileCycleWithAssistance':
    |        }
    |        if (msg.sender == operator) {
  > |            require(projectWallet.send(ethForMilestone+postDisputeEth));
    |            ethForMilestone = 0;
    |            postDisputeEth = 0;
  at /home/jiaming/slither_fp_files/out6784.sol(616)

[31mViolation[0m for TODAmount in contract 'AgileCycleWithAssistance':
    |        }
    |        if (msg.sender == juryOperator) {
  > |            require(juryOnlineWallet.send(etherAllowance));
    |            //require(jotter.call.value(jotAllowance)(abi.encodeWithSignature("swapMe()")));
    |            etherAllowance = 0;
  at /home/jiaming/slither_fp_files/out6784.sol(621)

[31mViolation[0m for TODAmount in contract 'AgileCycleWithAssistance':
    |        if (msg.sender == juryOperator) {
    |            require(saveMe == true);
  > |            require(juryOperator.send(address(this).balance));
    |            uint allTheLockedTokens = token.balanceOf(this);
    |            require(token.transfer(juryOperator,allTheLockedTokens));
  at /home/jiaming/slither_fp_files/out6784.sol(808)

[33mWarning[0m for TODReceiver in contract 'AgileCycleWithAssistance':
    |    function withdrawEther() public {
    |        if (roundFailedToStart == true) {
  > |            require(msg.sender.send(deals[msg.sender].etherAmount));
    |        }
    |        if (msg.sender == operator) {
  at /home/jiaming/slither_fp_files/out6784.sol(613)

[33mWarning[0m for TODReceiver in contract 'AgileCycleWithAssistance':
    |        }
    |        if (deals[msg.sender].verdictForInvestor == true) {
  > |            require(msg.sender.send(deals[msg.sender].etherAmount - deals[msg.sender].etherUsed));
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(627)

[33mWarning[0m for UnhandledException in contract 'AgileCycleWithAssistance':
    |    function withdrawEther() public {
    |        if (roundFailedToStart == true) {
  > |            require(msg.sender.send(deals[msg.sender].etherAmount));
    |        }
    |        if (msg.sender == operator) {
  at /home/jiaming/slither_fp_files/out6784.sol(613)

[33mWarning[0m for UnhandledException in contract 'AgileCycleWithAssistance':
    |        }
    |        if (msg.sender == operator) {
  > |            require(projectWallet.send(ethForMilestone+postDisputeEth));
    |            ethForMilestone = 0;
    |            postDisputeEth = 0;
  at /home/jiaming/slither_fp_files/out6784.sol(616)

[33mWarning[0m for UnhandledException in contract 'AgileCycleWithAssistance':
    |        }
    |        if (msg.sender == juryOperator) {
  > |            require(juryOnlineWallet.send(etherAllowance));
    |            //require(jotter.call.value(jotAllowance)(abi.encodeWithSignature("swapMe()")));
    |            etherAllowance = 0;
  at /home/jiaming/slither_fp_files/out6784.sol(621)

[33mWarning[0m for UnhandledException in contract 'AgileCycleWithAssistance':
    |        }
    |        if (deals[msg.sender].verdictForInvestor == true) {
  > |            require(msg.sender.send(deals[msg.sender].etherAmount - deals[msg.sender].etherUsed));
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(627)

[33mWarning[0m for UnhandledException in contract 'AgileCycleWithAssistance':
    |    // CALLED BY INVESTOR TO RETRIEVE TOKENS
    |    function withdrawToken() public {
  > |        require(token.transfer(msg.sender,deals[msg.sender].tokenAllowance));
    |        deals[msg.sender].tokenAllowance = 0;
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(632)

[33mWarning[0m for UnhandledException in contract 'AgileCycleWithAssistance':
    |        if (msg.sender == juryOperator) {
    |            require(saveMe == true);
  > |            require(juryOperator.send(address(this).balance));
    |            uint allTheLockedTokens = token.balanceOf(this);
    |            require(token.transfer(juryOperator,allTheLockedTokens));
  at /home/jiaming/slither_fp_files/out6784.sol(808)

[33mWarning[0m for UnhandledException in contract 'AgileCycleWithAssistance':
    |            require(saveMe == true);
    |            require(juryOperator.send(address(this).balance));
  > |            uint allTheLockedTokens = token.balanceOf(this);
    |            require(token.transfer(juryOperator,allTheLockedTokens));
    |        }
  at /home/jiaming/slither_fp_files/out6784.sol(809)

[33mWarning[0m for UnhandledException in contract 'AgileCycleWithAssistance':
    |            require(juryOperator.send(address(this).balance));
    |            uint allTheLockedTokens = token.balanceOf(this);
  > |            require(token.transfer(juryOperator,allTheLockedTokens));
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(810)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileCycleWithAssistance':
    |        }
    |        if (msg.sender == operator) {
  > |            require(projectWallet.send(ethForMilestone+postDisputeEth));
    |            ethForMilestone = 0;
    |            postDisputeEth = 0;
  at /home/jiaming/slither_fp_files/out6784.sol(616)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileCycleWithAssistance':
    |        }
    |        if (msg.sender == juryOperator) {
  > |            require(juryOnlineWallet.send(etherAllowance));
    |            //require(jotter.call.value(jotAllowance)(abi.encodeWithSignature("swapMe()")));
    |            etherAllowance = 0;
  at /home/jiaming/slither_fp_files/out6784.sol(621)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileCycleWithAssistance':
    |        }
    |        if (deals[msg.sender].verdictForInvestor == true) {
  > |            require(msg.sender.send(deals[msg.sender].etherAmount - deals[msg.sender].etherUsed));
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(627)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileCycleWithAssistance':
    |    // CALLED BY INVESTOR TO RETRIEVE TOKENS
    |    function withdrawToken() public {
  > |        require(token.transfer(msg.sender,deals[msg.sender].tokenAllowance));
    |        deals[msg.sender].tokenAllowance = 0;
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(632)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileCycleWithAssistance':
    |        if (msg.sender == juryOperator) {
    |            require(saveMe == true);
  > |            require(juryOperator.send(address(this).balance));
    |            uint allTheLockedTokens = token.balanceOf(this);
    |            require(token.transfer(juryOperator,allTheLockedTokens));
  at /home/jiaming/slither_fp_files/out6784.sol(808)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileCycleWithAssistance':
    |            require(saveMe == true);
    |            require(juryOperator.send(address(this).balance));
  > |            uint allTheLockedTokens = token.balanceOf(this);
    |            require(token.transfer(juryOperator,allTheLockedTokens));
    |        }
  at /home/jiaming/slither_fp_files/out6784.sol(809)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileCycleWithAssistance':
    |            require(juryOperator.send(address(this).balance));
    |            uint allTheLockedTokens = token.balanceOf(this);
  > |            require(token.transfer(juryOperator,allTheLockedTokens));
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(810)

[31mViolation[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |}
    |
  > |contract AgileCycleWithAssistance {
    |    using SafeMath for uint;
    |    //VARIABLES
  at /home/jiaming/slither_fp_files/out6784.sol(505)

[31mViolation[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |		milestones.push(Milestone(_etherAmounts[i], _tokenAmounts[i], _startTimes[i],0,_durations[i],"",""));
    |	}
  > |	sealTimestamp = now;
    |    }
    |    function addMilestone(uint _etherAmount, uint _tokenAmount, uint _startTime, uint _duration, string _description) public notSealed onlyAdmin returns(uint) {
  at /home/jiaming/slither_fp_files/out6784.sol(647)

[31mViolation[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |            if (deals[investor].disputing == false) {
    |                if (deals[investor].verdictForInvestor != true) {
  > |                    ethForMilestone += etherPartition[investor][currentMilestone];
    |                    deals[investor].etherUsed += etherPartition[investor][currentMilestone];
    |                    if (tokenReleaseAtStart == false) {
  at /home/jiaming/slither_fp_files/out6784.sol(677)

[31mViolation[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |                if (deals[investor].verdictForInvestor != true) {
    |                    ethForMilestone += etherPartition[investor][currentMilestone];
  > |                    deals[investor].etherUsed += etherPartition[investor][currentMilestone];
    |                    if (tokenReleaseAtStart == false) {
    |                        deals[investor].tokenAllowance += tokenPartition[investor][currentMilestone];
  at /home/jiaming/slither_fp_files/out6784.sol(678)

[31mViolation[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |                    deals[investor].etherUsed += etherPartition[investor][currentMilestone];
    |                    if (tokenReleaseAtStart == false) {
  > |                        deals[investor].tokenAllowance += tokenPartition[investor][currentMilestone];
    |                    }
    |                }
  at /home/jiaming/slither_fp_files/out6784.sol(680)

[31mViolation[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |            }
    |        }
  > |        milestones[currentMilestone].startTime = now;
    |        currentMilestone +=1;
    |        ethForMilestone = payCommission();
  at /home/jiaming/slither_fp_files/out6784.sol(685)

[31mViolation[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |        }
    |        milestones[currentMilestone].startTime = now;
  > |        currentMilestone +=1;
    |        ethForMilestone = payCommission();
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(686)

[31mViolation[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |        milestones[currentMilestone-1].result = _result;
    |        if (currentMilestone == milestones.length) {
  > |            finishedTimeStamp = now;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(697)

[31mViolation[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |            deals[_investor].verdictForProject = true;
    |            for (uint i = _milestoneDispute; i < currentMilestone; i++) {
  > |                postDisputeEth += etherPartition[_investor][i];
    |                deals[_investor].etherUsed += etherPartition[_investor][i];
    |            }
  at /home/jiaming/slither_fp_files/out6784.sol(747)

[31mViolation[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |            for (uint i = _milestoneDispute; i < currentMilestone; i++) {
    |                postDisputeEth += etherPartition[_investor][i];
  > |                deals[_investor].etherUsed += etherPartition[_investor][i];
    |            }
    |        }
  at /home/jiaming/slither_fp_files/out6784.sol(748)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |        if (msg.sender == operator) {
    |            require(projectWallet.send(ethForMilestone+postDisputeEth));
  > |            ethForMilestone = 0;
    |            postDisputeEth = 0;
    |        }
  at /home/jiaming/slither_fp_files/out6784.sol(617)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |            require(projectWallet.send(ethForMilestone+postDisputeEth));
    |            ethForMilestone = 0;
  > |            postDisputeEth = 0;
    |        }
    |        if (msg.sender == juryOperator) {
  at /home/jiaming/slither_fp_files/out6784.sol(618)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |            require(juryOnlineWallet.send(etherAllowance));
    |            //require(jotter.call.value(jotAllowance)(abi.encodeWithSignature("swapMe()")));
  > |            etherAllowance = 0;
    |            jotAllowance = 0;
    |        }
  at /home/jiaming/slither_fp_files/out6784.sol(623)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |            //require(jotter.call.value(jotAllowance)(abi.encodeWithSignature("swapMe()")));
    |            etherAllowance = 0;
  > |            jotAllowance = 0;
    |        }
    |        if (deals[msg.sender].verdictForInvestor == true) {
  at /home/jiaming/slither_fp_files/out6784.sol(624)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |    function withdrawToken() public {
    |        require(token.transfer(msg.sender,deals[msg.sender].tokenAllowance));
  > |        deals[msg.sender].tokenAllowance = 0;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6784.sol(633)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |    function failSafe() public {
    |        if (msg.sender == operator) {
  > |            saveMe = true;
    |        }
    |        if (msg.sender == juryOperator) {
  at /home/jiaming/slither_fp_files/out6784.sol(804)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |pragma solidity ^0.4.20;
    |
  > |// File: contracts/ERC20Token.sol
    |
    |library SafeMath {
  at /home/jiaming/slither_fp_files/out6784.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |}
    |
  > |contract AgileCycleWithAssistance {
    |    using SafeMath for uint;
    |    //VARIABLES
  at /home/jiaming/slither_fp_files/out6784.sol(505)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |    function setToken(address _tokenAddress) public onlyAdmin {
    |    	require(token == 0x0000000000000000000000000000000000000000);
  > |	    token = Token(_tokenAddress);
    |    }
    |    // CALLED BY JURY.ONLINE TO RETRIEVE COMMISSION
  at /home/jiaming/slither_fp_files/out6784.sol(606)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |	require(_durations.length == _etherAmounts.length);
    |	for (uint i = 0; i < _etherAmounts.length; i++) {
  > |		totalEther = totalEther.add(_etherAmounts[i]);
    |		totalToken = totalToken.add(_tokenAmounts[i]);
    |		milestones.push(Milestone(_etherAmounts[i], _tokenAmounts[i], _startTimes[i],0,_durations[i],"",""));
  at /home/jiaming/slither_fp_files/out6784.sol(643)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |	for (uint i = 0; i < _etherAmounts.length; i++) {
    |		totalEther = totalEther.add(_etherAmounts[i]);
  > |		totalToken = totalToken.add(_tokenAmounts[i]);
    |		milestones.push(Milestone(_etherAmounts[i], _tokenAmounts[i], _startTimes[i],0,_durations[i],"",""));
    |	}
  at /home/jiaming/slither_fp_files/out6784.sol(644)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |		totalEther = totalEther.add(_etherAmounts[i]);
    |		totalToken = totalToken.add(_tokenAmounts[i]);
  > |		milestones.push(Milestone(_etherAmounts[i], _tokenAmounts[i], _startTimes[i],0,_durations[i],"",""));
    |	}
    |	sealTimestamp = now;
  at /home/jiaming/slither_fp_files/out6784.sol(645)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |    }
    |    function addMilestone(uint _etherAmount, uint _tokenAmount, uint _startTime, uint _duration, string _description) public notSealed onlyAdmin returns(uint) {
  > |        totalEther = totalEther.add(_etherAmount);
    |        totalToken = totalToken.add(_tokenAmount);
    |        return milestones.push(Milestone(_etherAmount, _tokenAmount, _startTime, 0, _duration, _description, ""));
  at /home/jiaming/slither_fp_files/out6784.sol(650)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |    function addMilestone(uint _etherAmount, uint _tokenAmount, uint _startTime, uint _duration, string _description) public notSealed onlyAdmin returns(uint) {
    |        totalEther = totalEther.add(_etherAmount);
  > |        totalToken = totalToken.add(_tokenAmount);
    |        return milestones.push(Milestone(_etherAmount, _tokenAmount, _startTime, 0, _duration, _description, ""));
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(651)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |        totalEther = totalEther.add(_etherAmount);
    |        totalToken = totalToken.add(_tokenAmount);
  > |        return milestones.push(Milestone(_etherAmount, _tokenAmount, _startTime, 0, _duration, _description, ""));
    |    }
    |    function approveCycle(bool _approved) public {
  at /home/jiaming/slither_fp_files/out6784.sol(652)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |        require(msg.sender == juryOperator);
    |        if (_approved == true) {
  > |            cycleApproved = true;
    |        } else {
    |            roundFailedToStart = true;
  at /home/jiaming/slither_fp_files/out6784.sol(658)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |            cycleApproved = true;
    |        } else {
  > |            roundFailedToStart = true;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(660)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |        milestones[currentMilestone].startTime = now;
    |        currentMilestone +=1;
  > |        ethForMilestone = payCommission();
    |    }
    |    function finishMilestone(string _result) public onlyAdmin {
  at /home/jiaming/slither_fp_files/out6784.sol(687)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |	    uint interval = now - milestones[currentMilestone-1].startTime;
    |        require(interval > 1 weeks);
  > |        milestones[currentMilestone-1].finishTime = now;
    |        milestones[currentMilestone-1].result = _result;
    |        if (currentMilestone == milestones.length) {
  at /home/jiaming/slither_fp_files/out6784.sol(694)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |    function editMilestone(uint _id, uint _etherAmount, uint _tokenAmount, uint _startTime, uint _duration, string _description) public notSealed onlyAdmin {
    |        assert(_id < milestones.length);
  > |        totalEther = (totalEther - milestones[_id].etherAmount).add(_etherAmount); //previous addition
    |        totalToken = (totalToken - milestones[_id].tokenAmount).add(_tokenAmount);
    |        milestones[_id].etherAmount = _etherAmount;
  at /home/jiaming/slither_fp_files/out6784.sol(702)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |        assert(_id < milestones.length);
    |        totalEther = (totalEther - milestones[_id].etherAmount).add(_etherAmount); //previous addition
  > |        totalToken = (totalToken - milestones[_id].tokenAmount).add(_tokenAmount);
    |        milestones[_id].etherAmount = _etherAmount;
    |        milestones[_id].tokenAmount = _tokenAmount;
  at /home/jiaming/slither_fp_files/out6784.sol(703)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |        totalEther = (totalEther - milestones[_id].etherAmount).add(_etherAmount); //previous addition
    |        totalToken = (totalToken - milestones[_id].tokenAmount).add(_tokenAmount);
  > |        milestones[_id].etherAmount = _etherAmount;
    |        milestones[_id].tokenAmount = _tokenAmount;
    |        milestones[_id].startTime = _startTime;
  at /home/jiaming/slither_fp_files/out6784.sol(704)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |        totalToken = (totalToken - milestones[_id].tokenAmount).add(_tokenAmount);
    |        milestones[_id].etherAmount = _etherAmount;
  > |        milestones[_id].tokenAmount = _tokenAmount;
    |        milestones[_id].startTime = _startTime;
    |        milestones[_id].duration = _duration;
  at /home/jiaming/slither_fp_files/out6784.sol(705)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |        milestones[_id].etherAmount = _etherAmount;
    |        milestones[_id].tokenAmount = _tokenAmount;
  > |        milestones[_id].startTime = _startTime;
    |        milestones[_id].duration = _duration;
    |        milestones[_id].description = _description;
  at /home/jiaming/slither_fp_files/out6784.sol(706)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |        milestones[_id].tokenAmount = _tokenAmount;
    |        milestones[_id].startTime = _startTime;
  > |        milestones[_id].duration = _duration;
    |        milestones[_id].description = _description;
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(707)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |        // currently balance is required only when accepting offer
    |        //require(token.balanceOf(address(this)) >= promisedTokens);
  > |        sealTimestamp = now;
    |    }
    |    // -------------------------------------------------------------------------
  at /home/jiaming/slither_fp_files/out6784.sol(716)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |        uint _etherAmount = msg.value;
    |        assignPartition(_investor, _etherAmount, _tokenAmount);
  > |        if (!(deals[_investor].etherAmount > 0)) dealsList.push(_investor);
    |        if (tokenReleaseAtStart == true) {
    |            deals[_investor].tokenAllowance = _tokenAmount;
  at /home/jiaming/slither_fp_files/out6784.sol(725)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |        if (!(deals[_investor].etherAmount > 0)) dealsList.push(_investor);
    |        if (tokenReleaseAtStart == true) {
  > |            deals[_investor].tokenAllowance = _tokenAmount;
    |        }
    |        deals[_investor].etherAmount += _etherAmount;
  at /home/jiaming/slither_fp_files/out6784.sol(727)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |            deals[_investor].tokenAllowance = _tokenAmount;
    |        }
  > |        deals[_investor].etherAmount += _etherAmount;
    |        deals[_investor].tokenAmount += _tokenAmount;
    |    	// ADDS TO TOTALS
  at /home/jiaming/slither_fp_files/out6784.sol(729)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |        }
    |        deals[_investor].etherAmount += _etherAmount;
  > |        deals[_investor].tokenAmount += _tokenAmount;
    |    	// ADDS TO TOTALS
    |    	promisedTokens += _tokenAmount;
  at /home/jiaming/slither_fp_files/out6784.sol(730)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |        deals[_investor].tokenAmount += _tokenAmount;
    |    	// ADDS TO TOTALS
  > |    	promisedTokens += _tokenAmount;
    |    	raisedEther += _etherAmount;
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(732)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |    	// ADDS TO TOTALS
    |    	promisedTokens += _tokenAmount;
  > |    	raisedEther += _etherAmount;
    |    }
    |    // -------------------------------------------------------------------------
  at /home/jiaming/slither_fp_files/out6784.sol(733)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |    // ONLY(ARBITRATION) -------------------------------------------------------
    |    function disputeOpened(address _investor) public only(arbitrationAddress) {
  > |        deals[_investor].disputing = true;
    |    }
    |    function verdictExecuted(address _investor, bool _verdictForInvestor,uint _milestoneDispute) public only(arbitrationAddress) {
  at /home/jiaming/slither_fp_files/out6784.sol(738)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |        require(deals[_investor].disputing == true);
    |        if (_verdictForInvestor) {
  > |            deals[_investor].verdictForInvestor = true;
    |        } else {
    |            deals[_investor].verdictForProject = true;
  at /home/jiaming/slither_fp_files/out6784.sol(743)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |            deals[_investor].verdictForInvestor = true;
    |        } else {
  > |            deals[_investor].verdictForProject = true;
    |            for (uint i = _milestoneDispute; i < currentMilestone; i++) {
    |                postDisputeEth += etherPartition[_investor][i];
  at /home/jiaming/slither_fp_files/out6784.sol(745)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |            }
    |        }
  > |        deals[_investor].disputing = false;
    |    }
    |    // -------------------------------------------------------------------------
  at /home/jiaming/slither_fp_files/out6784.sol(751)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |            totalTokenInvestment = totalTokenInvestment.add(milestoneTokenAmount); //used to prevent rounding errors
    |            if (deals[_investor].etherAmount > 0) {
  > |                etherPartition[_investor][i] += milestoneEtherAmount;
    |                tokenPartition[_investor][i] += milestoneTokenAmount;
    |            } else {
  at /home/jiaming/slither_fp_files/out6784.sol(770)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |            if (deals[_investor].etherAmount > 0) {
    |                etherPartition[_investor][i] += milestoneEtherAmount;
  > |                tokenPartition[_investor][i] += milestoneTokenAmount;
    |            } else {
    |                etherPartition[_investor].push(milestoneEtherAmount);
  at /home/jiaming/slither_fp_files/out6784.sol(771)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |                tokenPartition[_investor][i] += milestoneTokenAmount;
    |            } else {
  > |                etherPartition[_investor].push(milestoneEtherAmount);
    |                tokenPartition[_investor].push(milestoneTokenAmount);
    |            }
  at /home/jiaming/slither_fp_files/out6784.sol(773)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |            } else {
    |                etherPartition[_investor].push(milestoneEtherAmount);
  > |                tokenPartition[_investor].push(milestoneTokenAmount);
    |            }
    |
  at /home/jiaming/slither_fp_files/out6784.sol(774)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |        }
    |        /* roundingErrors += _etherAmount - totalEtherInvestment; */
  > |        etherPartition[_investor][currentMilestone] += _etherAmount - totalEtherInvestment; //rounding error is added to the first milestone
    |        tokenPartition[_investor][currentMilestone] += _tokenAmount - totalTokenInvestment; //rounding error is added to the first milestone
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(779)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |        /* roundingErrors += _etherAmount - totalEtherInvestment; */
    |        etherPartition[_investor][currentMilestone] += _etherAmount - totalEtherInvestment; //rounding error is added to the first milestone
  > |        tokenPartition[_investor][currentMilestone] += _tokenAmount - totalTokenInvestment; //rounding error is added to the first milestone
    |    }
    |    function payCommission() internal returns(uint) {
  at /home/jiaming/slither_fp_files/out6784.sol(780)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |            uint ethCommission = raisedEther.mul(commissionEth[currentMilestone-1]).div(100);
    |            uint jotCommission = raisedEther.mul(commissionJot[currentMilestone-1]).div(100);
  > |            etherAllowance += ethCommission;
    |            jotAllowance += jotCommission;
    |            return ethForMilestone.sub(ethCommission).sub(jotCommission);
  at /home/jiaming/slither_fp_files/out6784.sol(786)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileCycleWithAssistance':
    |            uint jotCommission = raisedEther.mul(commissionJot[currentMilestone-1]).div(100);
    |            etherAllowance += ethCommission;
  > |            jotAllowance += jotCommission;
    |            return ethForMilestone.sub(ethCommission).sub(jotCommission);
    |        } else {
  at /home/jiaming/slither_fp_files/out6784.sol(787)

[31mViolation[0m for DAO in contract 'AgileICOWithAssistance':
    |            _promisedTokens += _tokenAmount;
    |            if (requireTokens) require(_balanceTokens >= _promisedTokens);
  > |    	    cycle.offerAccepted.value(_etherAmount)(_investor, _tokenAmount);
    |    	    futureDeals[_investor].etherAmount = 0;
    |    	    futureDeals[_investor].tokenAmount = 0;
  at /home/jiaming/slither_fp_files/out6784.sol(483)

[33mWarning[0m for DAO in contract 'AgileICOWithAssistance':
    |        }
    |        investorList.push(_investor);
  > |        cycle.offerAccepted.value(_etherAmount)(_investor, _tokenAmount);
    |    }
    |    // after deploying Cycle, operator adds cycle address
  at /home/jiaming/slither_fp_files/out6784.sol(421)

[31mViolation[0m for DAOConstantGas in contract 'AgileICOWithAssistance':
    |        // INVESTOR CAN WITHDRAW OFFER
    |        require(offers[msg.sender][_offerNumber].accepted == false);
  > |        require(msg.sender.send(offers[msg.sender][_offerNumber].etherAmount));
    |        offers[msg.sender][_offerNumber].etherAmount = 0;
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(366)

[31mViolation[0m for DAOConstantGas in contract 'AgileICOWithAssistance':
    |    function withdrawEther() public {
    |        if (msg.sender == juryOperator) {
  > |            require(juryOnlineWallet.send(etherAllowance));
    |            //require(jotter.call.value(jotAllowance)(abi.encodeWithSignature("swapMe()")));
    |            etherAllowance = 0;
  at /home/jiaming/slither_fp_files/out6784.sol(372)

[33mWarning[0m for DAOConstantGas in contract 'AgileICOWithAssistance':
    |        if (msg.sender == juryOperator) {
    |            require(saveMe == true);
  > |            require(juryOperator.send(address(this).balance));
    |            uint allTheLockedTokens = token.balanceOf(this);
    |            require(token.transfer(juryOperator,allTheLockedTokens));
  at /home/jiaming/slither_fp_files/out6784.sol(497)

[33mWarning[0m for LockedEther in contract 'AgileICOWithAssistance':
    |
    |// REMEMER TO UNCOMMENT TIME CHECKS!!!!!
  > |contract AgileICOWithAssistance {
    |
    |    using SafeMath for uint;
  at /home/jiaming/slither_fp_files/out6784.sol(236)

[31mViolation[0m for TODAmount in contract 'AgileICOWithAssistance':
    |    function withdrawEther() public {
    |        if (msg.sender == juryOperator) {
  > |            require(juryOnlineWallet.send(etherAllowance));
    |            //require(jotter.call.value(jotAllowance)(abi.encodeWithSignature("swapMe()")));
    |            etherAllowance = 0;
  at /home/jiaming/slither_fp_files/out6784.sol(372)

[31mViolation[0m for TODAmount in contract 'AgileICOWithAssistance':
    |        if (msg.sender == juryOperator) {
    |            require(saveMe == true);
  > |            require(juryOperator.send(address(this).balance));
    |            uint allTheLockedTokens = token.balanceOf(this);
    |            require(token.transfer(juryOperator,allTheLockedTokens));
  at /home/jiaming/slither_fp_files/out6784.sol(497)

[33mWarning[0m for TODAmount in contract 'AgileICOWithAssistance':
    |        }
    |        investorList.push(_investor);
  > |        cycle.offerAccepted.value(_etherAmount)(_investor, _tokenAmount);
    |    }
    |    // after deploying Cycle, operator adds cycle address
  at /home/jiaming/slither_fp_files/out6784.sol(421)

[33mWarning[0m for TODReceiver in contract 'AgileICOWithAssistance':
    |        // INVESTOR CAN WITHDRAW OFFER
    |        require(offers[msg.sender][_offerNumber].accepted == false);
  > |        require(msg.sender.send(offers[msg.sender][_offerNumber].etherAmount));
    |        offers[msg.sender][_offerNumber].etherAmount = 0;
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(366)

[33mWarning[0m for TODReceiver in contract 'AgileICOWithAssistance':
    |        }
    |        investorList.push(_investor);
  > |        cycle.offerAccepted.value(_etherAmount)(_investor, _tokenAmount);
    |    }
    |    // after deploying Cycle, operator adds cycle address
  at /home/jiaming/slither_fp_files/out6784.sol(421)

[33mWarning[0m for UnhandledException in contract 'AgileICOWithAssistance':
    |        // INVESTOR CAN WITHDRAW OFFER
    |        require(offers[msg.sender][_offerNumber].accepted == false);
  > |        require(msg.sender.send(offers[msg.sender][_offerNumber].etherAmount));
    |        offers[msg.sender][_offerNumber].etherAmount = 0;
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(366)

[33mWarning[0m for UnhandledException in contract 'AgileICOWithAssistance':
    |    function withdrawEther() public {
    |        if (msg.sender == juryOperator) {
  > |            require(juryOnlineWallet.send(etherAllowance));
    |            //require(jotter.call.value(jotAllowance)(abi.encodeWithSignature("swapMe()")));
    |            etherAllowance = 0;
  at /home/jiaming/slither_fp_files/out6784.sol(372)

[33mWarning[0m for UnhandledException in contract 'AgileICOWithAssistance':
    |        AgileCycleWithAssistance cycle = AgileCycleWithAssistance(currentCycleAddress);
    |
  > |	    require(cycle.sealTimestamp() > 0);
    |
    |        offers[_investor][_offerNumber].accepted = true;
  at /home/jiaming/slither_fp_files/out6784.sol(392)

[33mWarning[0m for UnhandledException in contract 'AgileICOWithAssistance':
    |        uint _tokenAmount = offers[_investor][_offerNumber].tokenAmount;
    |
  > |        require(token.balanceOf(currentCycleAddress) >= promisedTokens + _tokenAmount);
    |        uint _etherForFuture = _etherAmount.mul(percentForFuture).div(100);
    |        uint _tokenForFuture =  _tokenAmount.mul(percentForFuture).div(100);
  at /home/jiaming/slither_fp_files/out6784.sol(398)

[33mWarning[0m for UnhandledException in contract 'AgileICOWithAssistance':
    |        }
    |        investorList.push(_investor);
  > |        cycle.offerAccepted.value(_etherAmount)(_investor, _tokenAmount);
    |    }
    |    // after deploying Cycle, operator adds cycle address
  at /home/jiaming/slither_fp_files/out6784.sol(421)

[33mWarning[0m for UnhandledException in contract 'AgileICOWithAssistance':
    |        if (currentCycleNumber > 0) {
    |            AgileCycleWithAssistance cycle = AgileCycleWithAssistance(currentCycleAddress);
  > |            uint finishedTimeStamp = cycle.finishedTimeStamp();
    |            require(now > finishedTimeStamp);
    |            uint interval = now - finishedTimeStamp;
  at /home/jiaming/slither_fp_files/out6784.sol(432)

[33mWarning[0m for UnhandledException in contract 'AgileICOWithAssistance':
    |    function sendFundsToNextCycle(uint _startLoop, uint _endLoop) public onlyAdmin {
    |        AgileCycleWithAssistance cycle = AgileCycleWithAssistance(currentCycleAddress);
  > |        require(cycle.sealTimestamp() > 0);
    |
    |        uint _promisedTokens = cycle.promisedTokens();
  at /home/jiaming/slither_fp_files/out6784.sol(467)

[33mWarning[0m for UnhandledException in contract 'AgileICOWithAssistance':
    |        require(cycle.sealTimestamp() > 0);
    |
  > |        uint _promisedTokens = cycle.promisedTokens();
    |        uint _balanceTokens = token.balanceOf(currentCycleAddress);
    |
  at /home/jiaming/slither_fp_files/out6784.sol(469)

[33mWarning[0m for UnhandledException in contract 'AgileICOWithAssistance':
    |
    |        uint _promisedTokens = cycle.promisedTokens();
  > |        uint _balanceTokens = token.balanceOf(currentCycleAddress);
    |
    |        if (_endLoop == 0) _endLoop = investorList.length;
  at /home/jiaming/slither_fp_files/out6784.sol(470)

[33mWarning[0m for UnhandledException in contract 'AgileICOWithAssistance':
    |        require(_endLoop <= investorList.length);
    |
  > |        require(token.balanceOf(currentCycleAddress) >= promisedTokens + _tokenAmount);
    |
    |        for ( uint i=_startLoop; i < _endLoop; i++ ) {
  at /home/jiaming/slither_fp_files/out6784.sol(475)

[33mWarning[0m for UnhandledException in contract 'AgileICOWithAssistance':
    |            _promisedTokens += _tokenAmount;
    |            if (requireTokens) require(_balanceTokens >= _promisedTokens);
  > |    	    cycle.offerAccepted.value(_etherAmount)(_investor, _tokenAmount);
    |    	    futureDeals[_investor].etherAmount = 0;
    |    	    futureDeals[_investor].tokenAmount = 0;
  at /home/jiaming/slither_fp_files/out6784.sol(483)

[33mWarning[0m for UnhandledException in contract 'AgileICOWithAssistance':
    |        if (msg.sender == juryOperator) {
    |            require(saveMe == true);
  > |            require(juryOperator.send(address(this).balance));
    |            uint allTheLockedTokens = token.balanceOf(this);
    |            require(token.transfer(juryOperator,allTheLockedTokens));
  at /home/jiaming/slither_fp_files/out6784.sol(497)

[33mWarning[0m for UnhandledException in contract 'AgileICOWithAssistance':
    |            require(saveMe == true);
    |            require(juryOperator.send(address(this).balance));
  > |            uint allTheLockedTokens = token.balanceOf(this);
    |            require(token.transfer(juryOperator,allTheLockedTokens));
    |        }
  at /home/jiaming/slither_fp_files/out6784.sol(498)

[33mWarning[0m for UnhandledException in contract 'AgileICOWithAssistance':
    |            require(juryOperator.send(address(this).balance));
    |            uint allTheLockedTokens = token.balanceOf(this);
  > |            require(token.transfer(juryOperator,allTheLockedTokens));
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(499)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileICOWithAssistance':
    |    function withdrawEther() public {
    |        if (msg.sender == juryOperator) {
  > |            require(juryOnlineWallet.send(etherAllowance));
    |            //require(jotter.call.value(jotAllowance)(abi.encodeWithSignature("swapMe()")));
    |            etherAllowance = 0;
  at /home/jiaming/slither_fp_files/out6784.sol(372)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileICOWithAssistance':
    |        AgileCycleWithAssistance cycle = AgileCycleWithAssistance(currentCycleAddress);
    |
  > |	    require(cycle.sealTimestamp() > 0);
    |
    |        offers[_investor][_offerNumber].accepted = true;
  at /home/jiaming/slither_fp_files/out6784.sol(392)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileICOWithAssistance':
    |        uint _tokenAmount = offers[_investor][_offerNumber].tokenAmount;
    |
  > |        require(token.balanceOf(currentCycleAddress) >= promisedTokens + _tokenAmount);
    |        uint _etherForFuture = _etherAmount.mul(percentForFuture).div(100);
    |        uint _tokenForFuture =  _tokenAmount.mul(percentForFuture).div(100);
  at /home/jiaming/slither_fp_files/out6784.sol(398)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileICOWithAssistance':
    |        }
    |        investorList.push(_investor);
  > |        cycle.offerAccepted.value(_etherAmount)(_investor, _tokenAmount);
    |    }
    |    // after deploying Cycle, operator adds cycle address
  at /home/jiaming/slither_fp_files/out6784.sol(421)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileICOWithAssistance':
    |        if (currentCycleNumber > 0) {
    |            AgileCycleWithAssistance cycle = AgileCycleWithAssistance(currentCycleAddress);
  > |            uint finishedTimeStamp = cycle.finishedTimeStamp();
    |            require(now > finishedTimeStamp);
    |            uint interval = now - finishedTimeStamp;
  at /home/jiaming/slither_fp_files/out6784.sol(432)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileICOWithAssistance':
    |    function sendFundsToNextCycle(uint _startLoop, uint _endLoop) public onlyAdmin {
    |        AgileCycleWithAssistance cycle = AgileCycleWithAssistance(currentCycleAddress);
  > |        require(cycle.sealTimestamp() > 0);
    |
    |        uint _promisedTokens = cycle.promisedTokens();
  at /home/jiaming/slither_fp_files/out6784.sol(467)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileICOWithAssistance':
    |        require(cycle.sealTimestamp() > 0);
    |
  > |        uint _promisedTokens = cycle.promisedTokens();
    |        uint _balanceTokens = token.balanceOf(currentCycleAddress);
    |
  at /home/jiaming/slither_fp_files/out6784.sol(469)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileICOWithAssistance':
    |
    |        uint _promisedTokens = cycle.promisedTokens();
  > |        uint _balanceTokens = token.balanceOf(currentCycleAddress);
    |
    |        if (_endLoop == 0) _endLoop = investorList.length;
  at /home/jiaming/slither_fp_files/out6784.sol(470)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileICOWithAssistance':
    |        require(_endLoop <= investorList.length);
    |
  > |        require(token.balanceOf(currentCycleAddress) >= promisedTokens + _tokenAmount);
    |
    |        for ( uint i=_startLoop; i < _endLoop; i++ ) {
  at /home/jiaming/slither_fp_files/out6784.sol(475)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileICOWithAssistance':
    |        if (msg.sender == juryOperator) {
    |            require(saveMe == true);
  > |            require(juryOperator.send(address(this).balance));
    |            uint allTheLockedTokens = token.balanceOf(this);
    |            require(token.transfer(juryOperator,allTheLockedTokens));
  at /home/jiaming/slither_fp_files/out6784.sol(497)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileICOWithAssistance':
    |            require(saveMe == true);
    |            require(juryOperator.send(address(this).balance));
  > |            uint allTheLockedTokens = token.balanceOf(this);
    |            require(token.transfer(juryOperator,allTheLockedTokens));
    |        }
  at /home/jiaming/slither_fp_files/out6784.sol(498)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgileICOWithAssistance':
    |            require(juryOperator.send(address(this).balance));
    |            uint allTheLockedTokens = token.balanceOf(this);
  > |            require(token.transfer(juryOperator,allTheLockedTokens));
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(499)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |pragma solidity ^0.4.20;
    |
  > |// File: contracts/ERC20Token.sol
    |
    |library SafeMath {
  at /home/jiaming/slither_fp_files/out6784.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |        uint dealNumber = offers[msg.sender][0].numberOfDeals;
    |        // uint dealNumber = 0;
  > |	offers[msg.sender][dealNumber].etherAmount = msg.value;
    |        offers[msg.sender][dealNumber].tokenAmount = msg.value*rate;
    |        offers[msg.sender][0].numberOfDeals += 1;
  at /home/jiaming/slither_fp_files/out6784.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |        // uint dealNumber = 0;
    |	offers[msg.sender][dealNumber].etherAmount = msg.value;
  > |        offers[msg.sender][dealNumber].tokenAmount = msg.value*rate;
    |        offers[msg.sender][0].numberOfDeals += 1;
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(359)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |	offers[msg.sender][dealNumber].etherAmount = msg.value;
    |        offers[msg.sender][dealNumber].tokenAmount = msg.value*rate;
  > |        offers[msg.sender][0].numberOfDeals += 1;
    |    }
    |    // Investor can withdraw offer if it has not been accepted
  at /home/jiaming/slither_fp_files/out6784.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |        require(offers[msg.sender][_offerNumber].accepted == false);
    |        require(msg.sender.send(offers[msg.sender][_offerNumber].etherAmount));
  > |        offers[msg.sender][_offerNumber].etherAmount = 0;
    |    }
    |    // Calles by Jury.Online to retrieve commission
  at /home/jiaming/slither_fp_files/out6784.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |            require(juryOnlineWallet.send(etherAllowance));
    |            //require(jotter.call.value(jotAllowance)(abi.encodeWithSignature("swapMe()")));
  > |            etherAllowance = 0;
    |            jotAllowance = 0;
    |        }
  at /home/jiaming/slither_fp_files/out6784.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |            //require(jotter.call.value(jotAllowance)(abi.encodeWithSignature("swapMe()")));
    |            etherAllowance = 0;
  > |            jotAllowance = 0;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |    function setToken(address _tokenAddress) public onlyAdmin {
    |    	require(token == 0x0000000000000000000000000000000000000000);
  > |	    token = Token(_tokenAddress);
    |    }
    |    function acceptOffer(address _investor, uint _offerNumber) public onlyAdmin {
  at /home/jiaming/slither_fp_files/out6784.sol(384)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |	    require(cycle.sealTimestamp() > 0);
    |
  > |        offers[_investor][_offerNumber].accepted = true;
    |        uint _etherAmount = offers[_investor][_offerNumber].etherAmount;
    |        uint _tokenAmount = offers[_investor][_offerNumber].tokenAmount;
  at /home/jiaming/slither_fp_files/out6784.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |
    |        if (_offerNumber == 0) {
  > |            futureDeals[_investor].etherAmount += _etherForFuture;
    |            futureDeals[_investor].tokenAmount += _tokenForFuture;
    |        } else {
  at /home/jiaming/slither_fp_files/out6784.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |        if (_offerNumber == 0) {
    |            futureDeals[_investor].etherAmount += _etherForFuture;
  > |            futureDeals[_investor].tokenAmount += _tokenForFuture;
    |        } else {
    |            futureDeals[_investor] = FutureDeal(_etherForFuture,_tokenForFuture);
  at /home/jiaming/slither_fp_files/out6784.sol(404)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |            futureDeals[_investor].tokenAmount += _tokenForFuture;
    |        } else {
  > |            futureDeals[_investor] = FutureDeal(_etherForFuture,_tokenForFuture);
    |        }
    |
  at /home/jiaming/slither_fp_files/out6784.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |            uint jotCommission = _etherAmount.mul(commissionOnInvestmentJot).div(100);
    |	        _etherAmount = _etherAmount.sub(etherCommission).sub(jotCommission);
  > |            offers[_investor][_offerNumber].etherAmount = _etherAmount;
    |            etherAllowance += etherCommission;
    |            jotAllowance += jotCommission;
  at /home/jiaming/slither_fp_files/out6784.sol(416)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |	        _etherAmount = _etherAmount.sub(etherCommission).sub(jotCommission);
    |            offers[_investor][_offerNumber].etherAmount = _etherAmount;
  > |            etherAllowance += etherCommission;
    |            jotAllowance += jotCommission;
    |        }
  at /home/jiaming/slither_fp_files/out6784.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |            offers[_investor][_offerNumber].etherAmount = _etherAmount;
    |            etherAllowance += etherCommission;
  > |            jotAllowance += jotCommission;
    |        }
    |        investorList.push(_investor);
  at /home/jiaming/slither_fp_files/out6784.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |            jotAllowance += jotCommission;
    |        }
  > |        investorList.push(_investor);
    |        cycle.offerAccepted.value(_etherAmount)(_investor, _tokenAmount);
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(420)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |    // after deploying Cycle, operator adds cycle address
    |    function addCycleAddress(address _cycleAddress) public onlyAdmin {
  > |        cycles.push(_cycleAddress);
    |    }
    |    // Sets the active cycle. If not first one, previous one has to be finished.
  at /home/jiaming/slither_fp_files/out6784.sol(425)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |            //require(interval > 3 days);
    |        }
  > |        currentCycleAddress = cycles[currentCycleNumber];
    |        currentCycleNumber += 1;
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |        }
    |        currentCycleAddress = cycles[currentCycleNumber];
  > |        currentCycleNumber += 1;
    |    }
    |    // to add FundingRounds
  at /home/jiaming/slither_fp_files/out6784.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |    function addFundingRound(uint _startTime,uint _endTime, uint _rate, address[] _whitelist) public onlyAdmin {
    |        if (_whitelist.length == 0) {
  > |            roundPrices.push(FundingRound(_startTime, _endTime,_rate,false));
    |        } else {
    |            for (uint i=0 ; i < _whitelist.length ; i++ ) {
  at /home/jiaming/slither_fp_files/out6784.sol(443)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |        uint interval = now - lastRateChange;
    |        //require(interval < 1 days);
  > |        rate = _rate;
    |    }
    |    // to activate a fundingRound
  at /home/jiaming/slither_fp_files/out6784.sol(455)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |    function setCurrentFundingRound(uint _fundingRound) public onlyAdmin {
    |        require(roundPrices.length > _fundingRound);
  > |        currentFundingRound = _fundingRound;
    |        rate = roundPrices[_fundingRound].rate;
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(460)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |        require(roundPrices.length > _fundingRound);
    |        currentFundingRound = _fundingRound;
  > |        rate = roundPrices[_fundingRound].rate;
    |    }
    |    // sends futureDeal funds to next cycle
  at /home/jiaming/slither_fp_files/out6784.sol(461)

[33mWarning[0m for UnrestrictedWrite in contract 'AgileICOWithAssistance':
    |    function failSafe() public {
    |        if (msg.sender == operator) {
  > |            saveMe = true;
    |        }
    |        if (msg.sender == juryOperator) {
  at /home/jiaming/slither_fp_files/out6784.sol(493)

[33mWarning[0m for LockedEther in contract 'ERC20':
    |}
    |
  > |contract ERC20 is Owned {
    |    using SafeMath for uint;
    |
  at /home/jiaming/slither_fp_files/out6784.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function transfer(address _to, uint _value) isStartedOnly public returns (bool success) {
    |        require(_to != address(0));
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out6784.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out6784.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function approve_fixed(address _spender, uint _currentValue, uint _value) isStartedOnly public returns (bool success) {
    |        if(allowed[msg.sender][_spender] == _currentValue){
  > |            allowed[msg.sender][_spender] = _value;
    |            emit Approval(msg.sender, _spender, _value);
    |            return true;
  at /home/jiaming/slither_fp_files/out6784.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    function approve(address _spender, uint _value) isStartedOnly public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out6784.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    function transferOwnership(address _newOwner) only(owner) public {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6784.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function acceptOwnership() only(newOwner) public {
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6784.sol(49)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/slither_fp_files/out6784.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) only(owner) public {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/slither_fp_files/out6784.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |    address newOwner;
    |
  at /home/jiaming/slither_fp_files/out6784.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership() only(newOwner) public {
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  at /home/jiaming/slither_fp_files/out6784.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) only(owner) public {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6784.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function acceptOwnership() only(newOwner) public {
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6784.sol(49)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// File: contracts/ERC20Token.sol
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/slither_fp_files/out6784.sol(5)

[33mWarning[0m for LockedEther in contract 'Token':
    |}
    |
  > |contract Token is ERC20 {
    |    using SafeMath for uint;
    |
  at /home/jiaming/slither_fp_files/out6784.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function transfer(address _to, uint _value) isStartedOnly public returns (bool success) {
    |        require(_to != address(0));
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out6784.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(_to != address(0));
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out6784.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function transferFrom(address _from, address _to, uint _value) isStartedOnly public returns (bool success) {
    |        require(_to != address(0));
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/slither_fp_files/out6784.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(_to != address(0));
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out6784.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out6784.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function approve_fixed(address _spender, uint _currentValue, uint _value) isStartedOnly public returns (bool success) {
    |        if(allowed[msg.sender][_spender] == _currentValue){
  > |            allowed[msg.sender][_spender] = _value;
    |            emit Approval(msg.sender, _spender, _value);
    |            return true;
  at /home/jiaming/slither_fp_files/out6784.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function approve(address _spender, uint _value) isStartedOnly public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out6784.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    //================= Crowdsale Only =================
    |    function mint(address _to, uint _amount) public only(owner) isNotStartedOnly returns(bool) {
  > |        totalSupply = totalSupply.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/slither_fp_files/out6784.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function mint(address _to, uint _amount) public only(owner) isNotStartedOnly returns(bool) {
    |        totalSupply = totalSupply.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/slither_fp_files/out6784.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function transferOwnership(address _newOwner) only(owner) public {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6784.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function acceptOwnership() only(newOwner) public {
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6784.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function start() public only(owner) isNotStartedOnly {
  > |        isStarted = true;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6784.sol(134)

[33mWarning[0m for LockedEther in contract 'TokenWithoutStart':
    |}
    |
  > |contract TokenWithoutStart is Owned {
    |    using SafeMath for uint;
    |
  at /home/jiaming/slither_fp_files/out6784.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenWithoutStart':
    |    function transfer(address _to, uint _value) public returns (bool success) {
    |        require(_to != address(0));
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out6784.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenWithoutStart':
    |        require(_to != address(0));
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out6784.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenWithoutStart':
    |    function transferFrom(address _from, address _to, uint _value) public returns (bool success) {
    |        require(_to != address(0));
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/slither_fp_files/out6784.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenWithoutStart':
    |        require(_to != address(0));
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out6784.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenWithoutStart':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out6784.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenWithoutStart':
    |    function approve_fixed(address _spender, uint _currentValue, uint _value) public returns (bool success) {
    |        if(allowed[msg.sender][_spender] == _currentValue){
  > |            allowed[msg.sender][_spender] = _value;
    |            emit Approval(msg.sender, _spender, _value);
    |            return true;
  at /home/jiaming/slither_fp_files/out6784.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenWithoutStart':
    |
    |    function approve(address _spender, uint _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out6784.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenWithoutStart':
    |
    |    function mint(address _to, uint _amount) public only(owner) returns(bool) {
  > |        totalSupply = totalSupply.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/slither_fp_files/out6784.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenWithoutStart':
    |    function mint(address _to, uint _amount) public only(owner) returns(bool) {
    |        totalSupply = totalSupply.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/slither_fp_files/out6784.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenWithoutStart':
    |
    |    function transferOwnership(address _newOwner) only(owner) public {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6784.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenWithoutStart':
    |    function acceptOwnership() only(newOwner) public {
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out6784.sol(49)


