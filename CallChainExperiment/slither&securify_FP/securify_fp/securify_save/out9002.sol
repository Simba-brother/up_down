Processing contract: /home/jiaming/slither_fp_files/out9002.sol:AbstractCrowdsale
Processing contract: /home/jiaming/slither_fp_files/out9002.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9002.sol:ERC20
Processing contract: /home/jiaming/slither_fp_files/out9002.sol:ERC20Basic
Processing contract: /home/jiaming/slither_fp_files/out9002.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9002.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9002.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9002.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9002.sol:StattmPrivSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9002.sol:StattmToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out9002.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out9002.sol(98)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/slither_fp_files/out9002.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out9002.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out9002.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_to != address(0));
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/slither_fp_files/out9002.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out9002.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out9002.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out9002.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out9002.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/slither_fp_files/out9002.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out9002.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/slither_fp_files/out9002.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/slither_fp_files/out9002.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out9002.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out9002.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() public onlyOwner canMint returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/slither_fp_files/out9002.sol(372)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/slither_fp_files/out9002.sol(264)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out9002.sol(265)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/slither_fp_files/out9002.sol(297)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out9002.sol(306)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out9002.sol(314)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out9002.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out9002.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out9002.sol(317)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/slither_fp_files/out9002.sol(23)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/slither_fp_files/out9002.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out9002.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out9002.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out9002.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out9002.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/slither_fp_files/out9002.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out9002.sol(249)

[31mViolation[0m for DAOConstantGas in contract 'StattmPrivSale':
    |            devSum = devSum - address(this).balance;
    |            uint256 tmp = address(this).balance;
  > |            dev.transfer(tmp);
    |
    |        } else {
  at /home/jiaming/slither_fp_files/out9002.sol(594)

[31mViolation[0m for DAOConstantGas in contract 'StattmPrivSale':
    |
    |        } else {
  > |            dev.transfer(devSum);
    |            emit Stage2(dev,70);
    |            devSum = 0;
  at /home/jiaming/slither_fp_files/out9002.sol(597)

[33mWarning[0m for DAOConstantGas in contract 'StattmPrivSale':
    |        }
    |        if(softCapInTokens()==0){
  > |          beneficiary.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out9002.sol(602)

[33mWarning[0m for LockedEther in contract 'StattmPrivSale':
    |// File: contracts\StattmPrivSale.sol
    |
  > |contract StattmPrivSale is AbstractCrowdsale{
    |
    |    function softCapInTokens() public constant returns(uint256){
  at /home/jiaming/slither_fp_files/out9002.sol(557)

[31mViolation[0m for TODAmount in contract 'StattmPrivSale':
    |            emit Stage(address(this).balance,60);
    |            //sale end successfully all eth is send to beneficiary
  > |            beneficiary.transfer(address(this).balance);
    |            emit Stage(address(this).balance,60);
    |            emit Stage(block.number,61);
  at /home/jiaming/slither_fp_files/out9002.sol(544)

[31mViolation[0m for TODAmount in contract 'StattmPrivSale':
    |            devSum = devSum - address(this).balance;
    |            uint256 tmp = address(this).balance;
  > |            dev.transfer(tmp);
    |
    |        } else {
  at /home/jiaming/slither_fp_files/out9002.sol(594)

[31mViolation[0m for TODAmount in contract 'StattmPrivSale':
    |
    |        } else {
  > |            dev.transfer(devSum);
    |            emit Stage2(dev,70);
    |            devSum = 0;
  at /home/jiaming/slither_fp_files/out9002.sol(597)

[31mViolation[0m for TODAmount in contract 'StattmPrivSale':
    |        }
    |        if(softCapInTokens()==0){
  > |          beneficiary.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out9002.sol(602)

[33mWarning[0m for TODAmount in contract 'StattmPrivSale':
    |            softCapReached = totalTokensToTransfer >= softCapInTokens();
    |            emit Stage(block.number,12);
  > |            msg.sender.transfer(amountToReturn);
    |            emit Stage(block.number,13);
    |
  at /home/jiaming/slither_fp_files/out9002.sol(495)

[33mWarning[0m for TODReceiver in contract 'StattmPrivSale':
    |            softCapReached = totalTokensToTransfer >= softCapInTokens();
    |            emit Stage(block.number,12);
  > |            msg.sender.transfer(amountToReturn);
    |            emit Stage(block.number,13);
    |
  at /home/jiaming/slither_fp_files/out9002.sol(495)

[33mWarning[0m for UnhandledException in contract 'StattmPrivSale':
    |    function forceReturn(address _adr) public onlyOwner{
    |
  > |        if (token.isWhiteListed(_adr) == false) {
    |          //send tokens, presale successful
    |          require(msg.value == 0);
  at /home/jiaming/slither_fp_files/out9002.sol(454)

[33mWarning[0m for UnhandledException in contract 'StattmPrivSale':
    |          totalTokensToTransfer=totalTokensToTransfer-amountToSend;
    |          softCapReached = totalTokensToTransfer >= softCapInTokens();
  > |          require(token.transfer(msg.sender, amountToSend));
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out9002.sol(462)

[33mWarning[0m for UnhandledException in contract 'StattmPrivSale':
    |        if (getNow()  > saleEndTime()
    |          && (softCapReached == false
  > |          || token.isWhiteListed(msg.sender) == false)) {
    |
    |            //return funds, presale unsuccessful or user not whitelisteed
  at /home/jiaming/slither_fp_files/out9002.sol(483)

[33mWarning[0m for UnhandledException in contract 'StattmPrivSale':
    |            softCapReached = totalTokensToTransfer >= softCapInTokens();
    |            emit Stage(block.number,12);
  > |            msg.sender.transfer(amountToReturn);
    |            emit Stage(block.number,13);
    |
  at /home/jiaming/slither_fp_files/out9002.sol(495)

[33mWarning[0m for UnhandledException in contract 'StattmPrivSale':
    |        if (getNow()  > saleEndTime()
    |          && softCapReached == true
  > |          && token.isWhiteListed(msg.sender)) {
    |
    |            emit Stage(block.number,20);
  at /home/jiaming/slither_fp_files/out9002.sol(501)

[33mWarning[0m for UnhandledException in contract 'StattmPrivSale':
    |            tokensToTransfer[msg.sender] = 0;
    |            ethPayed[msg.sender] = 0;
  > |            require(token.transfer(msg.sender, amountToSend));
    |            emit Stage(block.number,22);
    |
  at /home/jiaming/slither_fp_files/out9002.sol(510)

[33mWarning[0m for UnhandledException in contract 'StattmPrivSale':
    |            }
    |        }
  > |        if(tokensToTransfer[msg.sender] > 0 &&  token.isWhiteListed(msg.sender) && softCapInTokens()==0){
    |          emit Stage(block.number,40);
    |          uint256 amountOfTokens = tokensToTransfer[msg.sender] ;
  at /home/jiaming/slither_fp_files/out9002.sol(527)

[33mWarning[0m for UnhandledException in contract 'StattmPrivSale':
    |          tokensToTransfer[msg.sender] = 0;
    |          emit Stage(block.number,41);
  > |          require(token.transfer(msg.sender,amountOfTokens));
    |          emit Stage(block.number,42);
    |        }
  at /home/jiaming/slither_fp_files/out9002.sol(532)

[33mWarning[0m for UnhandledException in contract 'StattmPrivSale':
    |            emit Stage(address(this).balance,60);
    |            //sale end successfully all eth is send to beneficiary
  > |            beneficiary.transfer(address(this).balance);
    |            emit Stage(address(this).balance,60);
    |            emit Stage(block.number,61);
  at /home/jiaming/slither_fp_files/out9002.sol(544)

[33mWarning[0m for UnhandledException in contract 'StattmPrivSale':
    |            emit Stage(address(this).balance,60);
    |            emit Stage(block.number,61);
  > |            token.burn();
    |            emit Stage(block.number,62);
    |        }
  at /home/jiaming/slither_fp_files/out9002.sol(547)

[33mWarning[0m for UnhandledException in contract 'StattmPrivSale':
    |    function() public payable {
    |      buy();
  > |      if(softCapInTokens()==0 && token.isWhiteListed(msg.sender)==false){
    |        revert('User needs to be immediatly whiteListed in Presale');
    |      }
  at /home/jiaming/slither_fp_files/out9002.sol(587)

[33mWarning[0m for UnhandledException in contract 'StattmPrivSale':
    |            devSum = devSum - address(this).balance;
    |            uint256 tmp = address(this).balance;
  > |            dev.transfer(tmp);
    |
    |        } else {
  at /home/jiaming/slither_fp_files/out9002.sol(594)

[33mWarning[0m for UnhandledException in contract 'StattmPrivSale':
    |
    |        } else {
  > |            dev.transfer(devSum);
    |            emit Stage2(dev,70);
    |            devSum = 0;
  at /home/jiaming/slither_fp_files/out9002.sol(597)

[33mWarning[0m for UnhandledException in contract 'StattmPrivSale':
    |        }
    |        if(softCapInTokens()==0){
  > |          beneficiary.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out9002.sol(602)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StattmPrivSale':
    |    function forceReturn(address _adr) public onlyOwner{
    |
  > |        if (token.isWhiteListed(_adr) == false) {
    |          //send tokens, presale successful
    |          require(msg.value == 0);
  at /home/jiaming/slither_fp_files/out9002.sol(454)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StattmPrivSale':
    |          totalTokensToTransfer=totalTokensToTransfer-amountToSend;
    |          softCapReached = totalTokensToTransfer >= softCapInTokens();
  > |          require(token.transfer(msg.sender, amountToSend));
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out9002.sol(462)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StattmPrivSale':
    |        if (getNow()  > saleEndTime()
    |          && (softCapReached == false
  > |          || token.isWhiteListed(msg.sender) == false)) {
    |
    |            //return funds, presale unsuccessful or user not whitelisteed
  at /home/jiaming/slither_fp_files/out9002.sol(483)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StattmPrivSale':
    |            softCapReached = totalTokensToTransfer >= softCapInTokens();
    |            emit Stage(block.number,12);
  > |            msg.sender.transfer(amountToReturn);
    |            emit Stage(block.number,13);
    |
  at /home/jiaming/slither_fp_files/out9002.sol(495)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StattmPrivSale':
    |        if (getNow()  > saleEndTime()
    |          && softCapReached == true
  > |          && token.isWhiteListed(msg.sender)) {
    |
    |            emit Stage(block.number,20);
  at /home/jiaming/slither_fp_files/out9002.sol(501)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StattmPrivSale':
    |            tokensToTransfer[msg.sender] = 0;
    |            ethPayed[msg.sender] = 0;
  > |            require(token.transfer(msg.sender, amountToSend));
    |            emit Stage(block.number,22);
    |
  at /home/jiaming/slither_fp_files/out9002.sol(510)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StattmPrivSale':
    |            }
    |        }
  > |        if(tokensToTransfer[msg.sender] > 0 &&  token.isWhiteListed(msg.sender) && softCapInTokens()==0){
    |          emit Stage(block.number,40);
    |          uint256 amountOfTokens = tokensToTransfer[msg.sender] ;
  at /home/jiaming/slither_fp_files/out9002.sol(527)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StattmPrivSale':
    |          tokensToTransfer[msg.sender] = 0;
    |          emit Stage(block.number,41);
  > |          require(token.transfer(msg.sender,amountOfTokens));
    |          emit Stage(block.number,42);
    |        }
  at /home/jiaming/slither_fp_files/out9002.sol(532)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StattmPrivSale':
    |            emit Stage(address(this).balance,60);
    |            //sale end successfully all eth is send to beneficiary
  > |            beneficiary.transfer(address(this).balance);
    |            emit Stage(address(this).balance,60);
    |            emit Stage(block.number,61);
  at /home/jiaming/slither_fp_files/out9002.sol(544)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StattmPrivSale':
    |            emit Stage(address(this).balance,60);
    |            emit Stage(block.number,61);
  > |            token.burn();
    |            emit Stage(block.number,62);
    |        }
  at /home/jiaming/slither_fp_files/out9002.sol(547)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StattmPrivSale':
    |    function() public payable {
    |      buy();
  > |      if(softCapInTokens()==0 && token.isWhiteListed(msg.sender)==false){
    |        revert('User needs to be immediatly whiteListed in Presale');
    |      }
  at /home/jiaming/slither_fp_files/out9002.sol(587)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StattmPrivSale':
    |            devSum = devSum - address(this).balance;
    |            uint256 tmp = address(this).balance;
  > |            dev.transfer(tmp);
    |
    |        } else {
  at /home/jiaming/slither_fp_files/out9002.sol(594)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StattmPrivSale':
    |
    |        } else {
  > |            dev.transfer(devSum);
    |            emit Stage2(dev,70);
    |            devSum = 0;
  at /home/jiaming/slither_fp_files/out9002.sol(597)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StattmPrivSale':
    |        }
    |        if(softCapInTokens()==0){
  > |          beneficiary.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out9002.sol(602)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmPrivSale':
    |          require(msg.value == 0);
    |          uint256 amountToSend = tokensToTransfer[msg.sender];
  > |          tokensToTransfer[msg.sender] = 0;
    |          ethPayed[msg.sender] = 0;
    |          totalTokensToTransfer=totalTokensToTransfer-amountToSend;
  at /home/jiaming/slither_fp_files/out9002.sol(458)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmPrivSale':
    |          uint256 amountToSend = tokensToTransfer[msg.sender];
    |          tokensToTransfer[msg.sender] = 0;
  > |          ethPayed[msg.sender] = 0;
    |          totalTokensToTransfer=totalTokensToTransfer-amountToSend;
    |          softCapReached = totalTokensToTransfer >= softCapInTokens();
  at /home/jiaming/slither_fp_files/out9002.sol(459)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmPrivSale':
    |          ethPayed[msg.sender] = 0;
    |          totalTokensToTransfer=totalTokensToTransfer-amountToSend;
  > |          softCapReached = totalTokensToTransfer >= softCapInTokens();
    |          require(token.transfer(msg.sender, amountToSend));
    |        }
  at /home/jiaming/slither_fp_files/out9002.sol(461)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmPrivSale':
    |            emit Stage(block.number,11);
    |            uint256 amountToReturn = ethPayed[msg.sender];
  > |            totalTokensToTransfer=totalTokensToTransfer-tokensToTransfer[msg.sender];
    |            tokensToTransfer[msg.sender] = 0;
    |            ethPayed[msg.sender] = 0;
  at /home/jiaming/slither_fp_files/out9002.sol(490)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmPrivSale':
    |            uint256 amountToReturn = ethPayed[msg.sender];
    |            totalTokensToTransfer=totalTokensToTransfer-tokensToTransfer[msg.sender];
  > |            tokensToTransfer[msg.sender] = 0;
    |            ethPayed[msg.sender] = 0;
    |            softCapReached = totalTokensToTransfer >= softCapInTokens();
  at /home/jiaming/slither_fp_files/out9002.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmPrivSale':
    |            totalTokensToTransfer=totalTokensToTransfer-tokensToTransfer[msg.sender];
    |            tokensToTransfer[msg.sender] = 0;
  > |            ethPayed[msg.sender] = 0;
    |            softCapReached = totalTokensToTransfer >= softCapInTokens();
    |            emit Stage(block.number,12);
  at /home/jiaming/slither_fp_files/out9002.sol(492)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmPrivSale':
    |            tokensToTransfer[msg.sender] = 0;
    |            ethPayed[msg.sender] = 0;
  > |            softCapReached = totalTokensToTransfer >= softCapInTokens();
    |            emit Stage(block.number,12);
    |            msg.sender.transfer(amountToReturn);
  at /home/jiaming/slither_fp_files/out9002.sol(493)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmPrivSale':
    |            emit Stage(block.number,21);
    |            uint256 amountToSend = tokensToTransfer[msg.sender];
  > |            tokensToTransfer[msg.sender] = 0;
    |            ethPayed[msg.sender] = 0;
    |            require(token.transfer(msg.sender, amountToSend));
  at /home/jiaming/slither_fp_files/out9002.sol(508)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmPrivSale':
    |            uint256 amountToSend = tokensToTransfer[msg.sender];
    |            tokensToTransfer[msg.sender] = 0;
  > |            ethPayed[msg.sender] = 0;
    |            require(token.transfer(msg.sender, amountToSend));
    |            emit Stage(block.number,22);
  at /home/jiaming/slither_fp_files/out9002.sol(509)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmPrivSale':
    |        if (getNow()  <= saleEndTime() && getNow()  > saleStartTime()) {
    |            emit Stage(block.number,30);
  > |            ethPayed[msg.sender] = ethPayed[msg.sender] + msg.value;
    |            tokensToTransfer[msg.sender] = tokensToTransfer[msg.sender] + getCurrentPrice() * msg.value;
    |            totalTokensToTransfer = totalTokensToTransfer + getCurrentPrice() * msg.value;
  at /home/jiaming/slither_fp_files/out9002.sol(516)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmPrivSale':
    |            emit Stage(block.number,30);
    |            ethPayed[msg.sender] = ethPayed[msg.sender] + msg.value;
  > |            tokensToTransfer[msg.sender] = tokensToTransfer[msg.sender] + getCurrentPrice() * msg.value;
    |            totalTokensToTransfer = totalTokensToTransfer + getCurrentPrice() * msg.value;
    |
  at /home/jiaming/slither_fp_files/out9002.sol(517)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmPrivSale':
    |            ethPayed[msg.sender] = ethPayed[msg.sender] + msg.value;
    |            tokensToTransfer[msg.sender] = tokensToTransfer[msg.sender] + getCurrentPrice() * msg.value;
  > |            totalTokensToTransfer = totalTokensToTransfer + getCurrentPrice() * msg.value;
    |
    |            if (totalTokensToTransfer >= hardCapInTokens()) {
  at /home/jiaming/slither_fp_files/out9002.sol(518)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmPrivSale':
    |          emit Stage(block.number,40);
    |          uint256 amountOfTokens = tokensToTransfer[msg.sender] ;
  > |          tokensToTransfer[msg.sender] = 0;
    |          emit Stage(block.number,41);
    |          require(token.transfer(msg.sender,amountOfTokens));
  at /home/jiaming/slither_fp_files/out9002.sol(530)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmPrivSale':
    |        if (totalTokensToTransfer >= softCapInTokens()) {
    |            emit Stage(block.number,50);
  > |            softCapReached = true;
    |            emit Stage(block.number,51);
    |        }
  at /home/jiaming/slither_fp_files/out9002.sol(537)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmPrivSale':
    |
    |        if (address(this).balance < devSum) {
  > |            devSum = devSum - address(this).balance;
    |            uint256 tmp = address(this).balance;
    |            dev.transfer(tmp);
  at /home/jiaming/slither_fp_files/out9002.sol(592)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmPrivSale':
    |            dev.transfer(devSum);
    |            emit Stage2(dev,70);
  > |            devSum = 0;
    |        }
    |        if(softCapInTokens()==0){
  at /home/jiaming/slither_fp_files/out9002.sol(599)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmPrivSale':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out9002.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmPrivSale':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out9002.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmPrivSale':
    |          tokensToTransfer[msg.sender] = 0;
    |          ethPayed[msg.sender] = 0;
  > |          totalTokensToTransfer=totalTokensToTransfer-amountToSend;
    |          softCapReached = totalTokensToTransfer >= softCapInTokens();
    |          require(token.transfer(msg.sender, amountToSend));
  at /home/jiaming/slither_fp_files/out9002.sol(460)

[33mWarning[0m for LockedEther in contract 'StattmToken':
    |// File: contracts\StattmToken.sol
    |
  > |contract StattmToken is MintableToken {
    |
    |    string public constant name = "Stattm";
  at /home/jiaming/slither_fp_files/out9002.sol(380)

[31mViolation[0m for UnrestrictedWrite in contract 'StattmToken':
    |        uint256 _b = balanceOf(msg.sender);
    |        balances[msg.sender] = 0;
  > |        totalSupply_ = totalSupply_ - _b;
    |    }
    |
  at /home/jiaming/slither_fp_files/out9002.sol(392)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out9002.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out9002.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmToken':
    |    require(_to != address(0));
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/slither_fp_files/out9002.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out9002.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out9002.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/slither_fp_files/out9002.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out9002.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/slither_fp_files/out9002.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/slither_fp_files/out9002.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/slither_fp_files/out9002.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/slither_fp_files/out9002.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmToken':
    |    function burn() public {
    |        uint256 _b = balanceOf(msg.sender);
  > |        balances[msg.sender] = 0;
    |        totalSupply_ = totalSupply_ - _b;
    |    }
  at /home/jiaming/slither_fp_files/out9002.sol(391)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmToken':
    |        mint(address(ico), (10 ** decimals) * (35000000));
    |        mint(address(projectManagementAndAirdrop), (10 ** decimals) * (35100100));
  > |        mintingFinished = true;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out9002.sol(414)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out9002.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out9002.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmToken':
    |   */
    |  function finishMinting() public onlyOwner canMint returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/slither_fp_files/out9002.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmToken':
    |
    |    function addToWhitelist(address _user) public onlyOwner {
  > |        isWhiteListed[_user] = true;
    |    }
    |
  at /home/jiaming/slither_fp_files/out9002.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'StattmToken':
    |
    |    function removeFromWhitelist(address _user) public onlyOwner {
  > |        isWhiteListed[_user] = false;
    |    }
    |
  at /home/jiaming/slither_fp_files/out9002.sol(400)


