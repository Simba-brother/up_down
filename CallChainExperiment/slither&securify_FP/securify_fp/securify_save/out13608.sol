Processing contract: /home/jiaming/slither_fp_files/out13608.sol:ERC20Interface
Processing contract: /home/jiaming/slither_fp_files/out13608.sol:Kujira
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out13608.sol:PoC
[33mWarning[0m for DAO in contract 'Kujira':
    |                if(ethToTransfer > 0)
    |                {
  > |                    pocContract.buy.value(ethToTransfer)(0x0);
    |                }
    |                else
  at /home/jiaming/slither_fp_files/out13608.sol(120)

[33mWarning[0m for DAO in contract 'Kujira':
    |                else
    |                {
  > |                    pocContract.buy.value(msg.value)(0x0);
    |                }
    |            }
  at /home/jiaming/slither_fp_files/out13608.sol(124)

[33mWarning[0m for DAOConstantGas in contract 'Kujira':
    |            ethToTransfer = address(this).balance;
    |
  > |            owner.transfer(ethToTransfer);
    |            emit Transfer(ethToTransfer, address(owner));
    |        }
  at /home/jiaming/slither_fp_files/out13608.sol(98)

[33mWarning[0m for LockedEther in contract 'Kujira':
    |
    |
  > |contract Kujira 
    |{ 
    |    /*
  at /home/jiaming/slither_fp_files/out13608.sol(19)

[31mViolation[0m for MissingInputValidation in contract 'Kujira':
    |       如果有人发送除PoC令牌以外的令牌，则所有者可以退回它们。
    |     */
  > |    function transferAnyERC20Token(address tokenAddress, address tokenOwner, uint tokens) 
    |    public 
    |    onlyOwner() 
  at /home/jiaming/slither_fp_files/out13608.sol(182)

[33mWarning[0m for MissingInputValidation in contract 'Kujira':
    |      给合同ETH并让它立即使用的唯一方法是使用捐赠功能
    |     */
  > |    function donate() 
    |    public payable 
    |    {
  at /home/jiaming/slither_fp_files/out13608.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'Kujira':
    |       合同拥有的代币数量。
    |     */
  > |    function myTokens() 
    |    public 
    |    view 
  at /home/jiaming/slither_fp_files/out13608.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'Kujira':
    |       欠合同的股息数量。
    |     */
  > |    function myDividends() 
    |    public 
    |    view 
  at /home/jiaming/slither_fp_files/out13608.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'Kujira':
    |       合约的ETH余额
    |     */
  > |    function ethBalance() 
    |    public 
    |    view 
  at /home/jiaming/slither_fp_files/out13608.sol(170)

[31mViolation[0m for TODAmount in contract 'Kujira':
    |            ethToTransfer = address(this).balance;
    |
  > |            owner.transfer(ethToTransfer);
    |            emit Transfer(ethToTransfer, address(owner));
    |        }
  at /home/jiaming/slither_fp_files/out13608.sol(98)

[31mViolation[0m for TODAmount in contract 'Kujira':
    |                if(ethToTransfer > 0)
    |                {
  > |                    pocContract.buy.value(ethToTransfer)(0x0);
    |                }
    |                else
  at /home/jiaming/slither_fp_files/out13608.sol(120)

[31mViolation[0m for TODAmount in contract 'Kujira':
    |                if(ethToTransfer > 0)
    |                {
  > |                    pocContract.buy.value(ethToTransfer)(0x0);
    |                    tokenBalance = myTokens();
    |                    emit Deposit(msg.value, msg.sender);
  at /home/jiaming/slither_fp_files/out13608.sol(133)

[33mWarning[0m for TODReceiver in contract 'Kujira':
    |            ethToTransfer = address(this).balance;
    |
  > |            owner.transfer(ethToTransfer);
    |            emit Transfer(ethToTransfer, address(owner));
    |        }
  at /home/jiaming/slither_fp_files/out13608.sol(98)

[33mWarning[0m for UnhandledException in contract 'Kujira':
    |        if(PoCEthInContract < 5 ether)
    |        {
  > |            pocContract.exit();
    |            tokenBalance = 0;
    |            ethToTransfer = address(this).balance;
  at /home/jiaming/slither_fp_files/out13608.sol(94)

[33mWarning[0m for UnhandledException in contract 'Kujira':
    |            ethToTransfer = address(this).balance;
    |
  > |            owner.transfer(ethToTransfer);
    |            emit Transfer(ethToTransfer, address(owner));
    |        }
  at /home/jiaming/slither_fp_files/out13608.sol(98)

[33mWarning[0m for UnhandledException in contract 'Kujira':
    |            if(tokenBalance > 0)
    |            {
  > |                pocContract.exit();
    |                tokenBalance = 0; 
    |
  at /home/jiaming/slither_fp_files/out13608.sol(113)

[33mWarning[0m for UnhandledException in contract 'Kujira':
    |                if(ethToTransfer > 0)
    |                {
  > |                    pocContract.buy.value(ethToTransfer)(0x0);
    |                }
    |                else
  at /home/jiaming/slither_fp_files/out13608.sol(120)

[33mWarning[0m for UnhandledException in contract 'Kujira':
    |                else
    |                {
  > |                    pocContract.buy.value(msg.value)(0x0);
    |                }
    |            }
  at /home/jiaming/slither_fp_files/out13608.sol(124)

[33mWarning[0m for UnhandledException in contract 'Kujira':
    |                if(ethToTransfer > 0)
    |                {
  > |                    pocContract.buy.value(ethToTransfer)(0x0);
    |                    tokenBalance = myTokens();
    |                    emit Deposit(msg.value, msg.sender);
  at /home/jiaming/slither_fp_files/out13608.sol(133)

[33mWarning[0m for UnhandledException in contract 'Kujira':
    |    returns(uint256)
    |    {
  > |        return pocContract.myTokens();
    |    }
    |    
  at /home/jiaming/slither_fp_files/out13608.sol(151)

[33mWarning[0m for UnhandledException in contract 'Kujira':
    |    returns(uint256)
    |    {
  > |        return pocContract.myDividends(true);
    |    }
    |
  at /home/jiaming/slither_fp_files/out13608.sol(163)

[33mWarning[0m for UnhandledException in contract 'Kujira':
    |    returns (bool success) 
    |    {
  > |        return ERC20Interface(tokenAddress).transfer(tokenOwner, tokens);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out13608.sol(188)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Kujira':
    |        if(PoCEthInContract < 5 ether)
    |        {
  > |            pocContract.exit();
    |            tokenBalance = 0;
    |            ethToTransfer = address(this).balance;
  at /home/jiaming/slither_fp_files/out13608.sol(94)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Kujira':
    |            if(tokenBalance > 0)
    |            {
  > |                pocContract.exit();
    |                tokenBalance = 0; 
    |
  at /home/jiaming/slither_fp_files/out13608.sol(113)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Kujira':
    |    returns(uint256)
    |    {
  > |        return pocContract.myTokens();
    |    }
    |    
  at /home/jiaming/slither_fp_files/out13608.sol(151)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Kujira':
    |    returns(uint256)
    |    {
  > |        return pocContract.myDividends(true);
    |    }
    |
  at /home/jiaming/slither_fp_files/out13608.sol(163)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Kujira':
    |    returns (bool success) 
    |    {
  > |        return ERC20Interface(tokenAddress).transfer(tokenOwner, tokens);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out13608.sol(188)

[31mViolation[0m for UnrestrictedWrite in contract 'Kujira':
    |        {
    |            pocContract.exit();
  > |            tokenBalance = 0;
    |            ethToTransfer = address(this).balance;
    |
  at /home/jiaming/slither_fp_files/out13608.sol(95)

[31mViolation[0m for UnrestrictedWrite in contract 'Kujira':
    |        else
    |        {
  > |            tokenBalance = myTokens();
    |
    |             // if token balance is greater than 0, sell and rebuy 
  at /home/jiaming/slither_fp_files/out13608.sol(106)

[31mViolation[0m for UnrestrictedWrite in contract 'Kujira':
    |            {
    |                pocContract.exit();
  > |                tokenBalance = 0; 
    |
    |                ethToTransfer = address(this).balance;
  at /home/jiaming/slither_fp_files/out13608.sol(114)

[31mViolation[0m for UnrestrictedWrite in contract 'Kujira':
    |                {
    |                    pocContract.buy.value(ethToTransfer)(0x0);
  > |                    tokenBalance = myTokens();
    |                    emit Deposit(msg.value, msg.sender);
    |                }
  at /home/jiaming/slither_fp_files/out13608.sol(134)


