Processing contract: /home/jiaming/slither_fp_files/out6239.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/slither_fp_files/out6239.sol:AutomatedExchange
Processing contract: /home/jiaming/slither_fp_files/out6239.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6239.sol:VRFBet
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6239.sol:VerifyToken
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/slither_fp_files/out6239.sol(156)

[33mWarning[0m for TODAmount in contract 'VRFBet':
    |    require(indexBetPlace-index<MAX_SIMULTANEOUS_BETS);//ensures you don't get a situation where there are too many existing bets to process, locking VRF in the contract
    |    uint tokensBefore=vrfcontract.balanceOf(this);
  > |    exchangecontract.buyTokens.value(msg.value)();
    |    _placeBet(vrfcontract.balanceOf(this).sub(tokensBefore),msg.sender,victoryMessage);
    |  }
  at /home/jiaming/slither_fp_files/out6239.sol(52)

[33mWarning[0m for TODReceiver in contract 'VRFBet':
    |    require(indexBetPlace-index<MAX_SIMULTANEOUS_BETS);//ensures you don't get a situation where there are too many existing bets to process, locking VRF in the contract
    |    uint tokensBefore=vrfcontract.balanceOf(this);
  > |    exchangecontract.buyTokens.value(msg.value)();
    |    _placeBet(vrfcontract.balanceOf(this).sub(tokensBefore),msg.sender,victoryMessage);
    |  }
  at /home/jiaming/slither_fp_files/out6239.sol(52)

[33mWarning[0m for UnhandledException in contract 'VRFBet':
    |  function receiveApproval(address from, uint256 tokens, address token, bytes data) public{
    |      require(msg.sender==vrfAddress);
  > |      vrfcontract.transferFrom(from,this,tokens);
    |      _placeBet(tokens,from,data);
    |  }
  at /home/jiaming/slither_fp_files/out6239.sol(46)

[33mWarning[0m for UnhandledException in contract 'VRFBet':
    |  function placeBetEth(bytes victoryMessage) public payable{
    |    require(indexBetPlace-index<MAX_SIMULTANEOUS_BETS);//ensures you don't get a situation where there are too many existing bets to process, locking VRF in the contract
  > |    uint tokensBefore=vrfcontract.balanceOf(this);
    |    exchangecontract.buyTokens.value(msg.value)();
    |    _placeBet(vrfcontract.balanceOf(this).sub(tokensBefore),msg.sender,victoryMessage);
  at /home/jiaming/slither_fp_files/out6239.sol(51)

[33mWarning[0m for UnhandledException in contract 'VRFBet':
    |    require(indexBetPlace-index<MAX_SIMULTANEOUS_BETS);//ensures you don't get a situation where there are too many existing bets to process, locking VRF in the contract
    |    uint tokensBefore=vrfcontract.balanceOf(this);
  > |    exchangecontract.buyTokens.value(msg.value)();
    |    _placeBet(vrfcontract.balanceOf(this).sub(tokensBefore),msg.sender,victoryMessage);
    |  }
  at /home/jiaming/slither_fp_files/out6239.sol(52)

[33mWarning[0m for UnhandledException in contract 'VRFBet':
    |    uint tokensBefore=vrfcontract.balanceOf(this);
    |    exchangecontract.buyTokens.value(msg.value)();
  > |    _placeBet(vrfcontract.balanceOf(this).sub(tokensBefore),msg.sender,victoryMessage);
    |  }
    |  function payout(address to,uint numTokens) private{
  at /home/jiaming/slither_fp_files/out6239.sol(53)

[33mWarning[0m for UnhandledException in contract 'VRFBet':
    |  }
    |  function payout(address to,uint numTokens) private{
  > |    vrfcontract.transfer(to,numTokens);
    |    emit Payout(to,numTokens);
    |  }
  at /home/jiaming/slither_fp_files/out6239.sol(56)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VRFBet':
    |  function receiveApproval(address from, uint256 tokens, address token, bytes data) public{
    |      require(msg.sender==vrfAddress);
  > |      vrfcontract.transferFrom(from,this,tokens);
    |      _placeBet(tokens,from,data);
    |  }
  at /home/jiaming/slither_fp_files/out6239.sol(46)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VRFBet':
    |  function placeBetEth(bytes victoryMessage) public payable{
    |    require(indexBetPlace-index<MAX_SIMULTANEOUS_BETS);//ensures you don't get a situation where there are too many existing bets to process, locking VRF in the contract
  > |    uint tokensBefore=vrfcontract.balanceOf(this);
    |    exchangecontract.buyTokens.value(msg.value)();
    |    _placeBet(vrfcontract.balanceOf(this).sub(tokensBefore),msg.sender,victoryMessage);
  at /home/jiaming/slither_fp_files/out6239.sol(51)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VRFBet':
    |    uint tokensBefore=vrfcontract.balanceOf(this);
    |    exchangecontract.buyTokens.value(msg.value)();
  > |    _placeBet(vrfcontract.balanceOf(this).sub(tokensBefore),msg.sender,victoryMessage);
    |  }
    |  function payout(address to,uint numTokens) private{
  at /home/jiaming/slither_fp_files/out6239.sol(53)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VRFBet':
    |  }
    |  function payout(address to,uint numTokens) private{
  > |    vrfcontract.transfer(to,numTokens);
    |    emit Payout(to,numTokens);
    |  }
  at /home/jiaming/slither_fp_files/out6239.sol(56)


