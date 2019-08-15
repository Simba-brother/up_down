Processing contract: /home/jiaming/slither_fp_files/out13813.sol:Controlled
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out13813.sol:ERC20Interface
Processing contract: /home/jiaming/slither_fp_files/out13813.sol:Extollet
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out13813.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out13813.sol:SofiaToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Controlled':
    |}
    |
  > |contract Controlled {
    |    address public controller;
    |    /// @notice The address of the controller is the only address that can call
  at /home/jiaming/slither_fp_files/out13813.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'Controlled':
    |    /// @notice Changes the controller of the contract
    |    /// @param _newController The new controller of the contract
  > |    function changeController(address _newController) public onlyController {
    |        controller = _newController;
    |    }
  at /home/jiaming/slither_fp_files/out13813.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    |
    |contract Controlled {
  > |    address public controller;
    |    /// @notice The address of the controller is the only address that can call
    |    ///  a function with this modifier
  at /home/jiaming/slither_fp_files/out13813.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) public onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out13813.sol(39)

[31mViolation[0m for DAOConstantGas in contract 'Extollet':
    |  //Send the ether to the vault
    |    preValidatePurchase(_owner,msg.value);
  > |    require (vaultAddress.send(msg.value));
    |    require (tokenContract.transfer(_owner,tokenAmount));
    |//  Track how much the Campaign has collected
  at /home/jiaming/slither_fp_files/out13813.sol(275)

[33mWarning[0m for LockedEther in contract 'Extollet':
    |}
    |
  > |contract Extollet is Controlled {
    |
    |    using SafeMath for uint;
  at /home/jiaming/slither_fp_files/out13813.sol(190)

[33mWarning[0m for TODAmount in contract 'Extollet':
    |  //Send the ether to the vault
    |    preValidatePurchase(_owner,msg.value);
  > |    require (vaultAddress.send(msg.value));
    |    require (tokenContract.transfer(_owner,tokenAmount));
    |//  Track how much the Campaign has collected
  at /home/jiaming/slither_fp_files/out13813.sol(275)

[31mViolation[0m for TODReceiver in contract 'Extollet':
    |  //Send the ether to the vault
    |    preValidatePurchase(_owner,msg.value);
  > |    require (vaultAddress.send(msg.value));
    |    require (tokenContract.transfer(_owner,tokenAmount));
    |//  Track how much the Campaign has collected
  at /home/jiaming/slither_fp_files/out13813.sol(275)

[33mWarning[0m for UnhandledException in contract 'Extollet':
    |    require ((now >= startFundingTime) &&
    |            (now <= endFundingTime) &&
  > |            (tokenContract.controller() != 0) &&            //Extra check
    |            (msg.value != 0) &&
    |            ((totalTokensSold + tokenAmount) <= volume)
  at /home/jiaming/slither_fp_files/out13813.sol(269)

[33mWarning[0m for UnhandledException in contract 'Extollet':
    |  //Send the ether to the vault
    |    preValidatePurchase(_owner,msg.value);
  > |    require (vaultAddress.send(msg.value));
    |    require (tokenContract.transfer(_owner,tokenAmount));
    |//  Track how much the Campaign has collected
  at /home/jiaming/slither_fp_files/out13813.sol(275)

[33mWarning[0m for UnhandledException in contract 'Extollet':
    |    preValidatePurchase(_owner,msg.value);
    |    require (vaultAddress.send(msg.value));
  > |    require (tokenContract.transfer(_owner,tokenAmount));
    |//  Track how much the Campaign has collected
    |    totalCollected += msg.value;
  at /home/jiaming/slither_fp_files/out13813.sol(276)

[33mWarning[0m for UnhandledException in contract 'Extollet':
    |      function finalizeFunding(address to) public onlyController{
    |        require(now >= endFundingTime);
  > |        uint tokensLeft = tokenContract.balanceOf(this);
    |        require(tokensLeft > 0);
    |        require(tokenContract.transfer(to,tokensLeft));
  at /home/jiaming/slither_fp_files/out13813.sol(326)

[33mWarning[0m for UnhandledException in contract 'Extollet':
    |        uint tokensLeft = tokenContract.balanceOf(this);
    |        require(tokensLeft > 0);
  > |        require(tokenContract.transfer(to,tokensLeft));
    |      }
    |
  at /home/jiaming/slither_fp_files/out13813.sol(328)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Extollet':
    |    require ((now >= startFundingTime) &&
    |            (now <= endFundingTime) &&
  > |            (tokenContract.controller() != 0) &&            //Extra check
    |            (msg.value != 0) &&
    |            ((totalTokensSold + tokenAmount) <= volume)
  at /home/jiaming/slither_fp_files/out13813.sol(269)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Extollet':
    |  //Send the ether to the vault
    |    preValidatePurchase(_owner,msg.value);
  > |    require (vaultAddress.send(msg.value));
    |    require (tokenContract.transfer(_owner,tokenAmount));
    |//  Track how much the Campaign has collected
  at /home/jiaming/slither_fp_files/out13813.sol(275)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Extollet':
    |    preValidatePurchase(_owner,msg.value);
    |    require (vaultAddress.send(msg.value));
  > |    require (tokenContract.transfer(_owner,tokenAmount));
    |//  Track how much the Campaign has collected
    |    totalCollected += msg.value;
  at /home/jiaming/slither_fp_files/out13813.sol(276)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Extollet':
    |      function finalizeFunding(address to) public onlyController{
    |        require(now >= endFundingTime);
  > |        uint tokensLeft = tokenContract.balanceOf(this);
    |        require(tokensLeft > 0);
    |        require(tokenContract.transfer(to,tokensLeft));
  at /home/jiaming/slither_fp_files/out13813.sol(326)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Extollet':
    |        uint tokensLeft = tokenContract.balanceOf(this);
    |        require(tokensLeft > 0);
  > |        require(tokenContract.transfer(to,tokensLeft));
    |      }
    |
  at /home/jiaming/slither_fp_files/out13813.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'Extollet':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) public onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out13813.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Extollet':
    |    require (tokenContract.transfer(_owner,tokenAmount));
    |//  Track how much the Campaign has collected
  > |    totalCollected += msg.value;
    |    totalTokensSold += tokenAmount;
    |    emit FundTransfer(msg.sender,tokenAmount,true);
  at /home/jiaming/slither_fp_files/out13813.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'Extollet':
    |//  Track how much the Campaign has collected
    |    totalCollected += msg.value;
  > |    totalTokensSold += tokenAmount;
    |    emit FundTransfer(msg.sender,tokenAmount,true);
    |    return;
  at /home/jiaming/slither_fp_files/out13813.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'Extollet':
    |     */
    |    function setVault(address _newVaultAddress) public onlyController {
  > |        vaultAddress = _newVaultAddress;
    |    }
    |
  at /home/jiaming/slither_fp_files/out13813.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'Extollet':
    |    function modifyEndFundingTime(uint256 newEndingTime) public onlyController{
    |      require((now < endFundingTime) && (now < newEndingTime));
  > |      endFundingTime = newEndingTime;
    |    }
    |
  at /home/jiaming/slither_fp_files/out13813.sol(318)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.24;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/slither_fp_files/out13813.sol(3)

[33mWarning[0m for LockedEther in contract 'SofiaToken':
    |}
    |
  > |contract SofiaToken is ERC20Interface,Controlled {
    |
    |    using SafeMath for uint;
  at /home/jiaming/slither_fp_files/out13813.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'SofiaToken':
    |      if(allowed[from][msg.sender] > 0 && allowed[from][msg.sender] >= tokens)
    |      {
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        return doTransfer(from,to,tokens);
    |      }
  at /home/jiaming/slither_fp_files/out13813.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'SofiaToken':
    |    function doTransfer(address from,address to, uint tokens) internal returns (bool success){
    |        if( tokens > 0 && balances[from] >= tokens){
  > |            balances[from] = balances[from].sub(tokens);
    |            balances[to] = balances[to].add(tokens);
    |            emit Transfer(from,to,tokens);
  at /home/jiaming/slither_fp_files/out13813.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'SofiaToken':
    |        if( tokens > 0 && balances[from] >= tokens){
    |            balances[from] = balances[from].sub(tokens);
  > |            balances[to] = balances[to].add(tokens);
    |            emit Transfer(from,to,tokens);
    |            return true;
  at /home/jiaming/slither_fp_files/out13813.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'SofiaToken':
    |    function approve(address spender, uint tokens) public returns (bool success){
    |      if(balances[msg.sender] >= tokens){
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender,spender,tokens);
    |        return true;
  at /home/jiaming/slither_fp_files/out13813.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'SofiaToken':
    |  function burn(uint _value) public onlyController{
    |    require(_value <= balances[msg.sender]);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    emit Burn(msg.sender, _value);
  at /home/jiaming/slither_fp_files/out13813.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'SofiaToken':
    |    require(_value <= balances[msg.sender]);
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    totalSupply = totalSupply.sub(_value);
    |    emit Burn(msg.sender, _value);
    |    emit Transfer(msg.sender, address(0), _value);
  at /home/jiaming/slither_fp_files/out13813.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'SofiaToken':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) public onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out13813.sol(39)


