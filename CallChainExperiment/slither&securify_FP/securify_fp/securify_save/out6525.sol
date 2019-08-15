Processing contract: /home/jiaming/slither_fp_files/out6525.sol:ECTools
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6525.sol:HumanStandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6525.sol:LedgerChannel
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6525.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6525.sol:Token
[33mWarning[0m for DAO in contract 'ECTools':
    |            return 0x0;
    |        }
  > |        return ecrecover(prefixedHash, v, r, s);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6525.sol(79)

[33mWarning[0m for LockedEther in contract 'ECTools':
    |}
    |
  > |library ECTools {
    |
    |    // @dev Recovers the address which has signed a message
  at /home/jiaming/slither_fp_files/out6525.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'ECTools':
    |    // @dev Converts a uint to a bytes32
    |    // @thanks https://ethereum.stackexchange.com/questions/4170/how-to-convert-a-uint-to-bytes-in-solidity
  > |    function uintToBytes32(uint _uint) public pure returns (bytes b) {
    |        b = new bytes(32);
    |        assembly {mstore(add(b, 32), _uint)}
  at /home/jiaming/slither_fp_files/out6525.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'ECTools':
    |
    |    // @dev Converts an hexstring to bytes
  > |    function hexstrToBytes(string _hexstr) public pure returns (bytes) {
    |        uint len = bytes(_hexstr).length;
    |        require(len % 2 == 0);
  at /home/jiaming/slither_fp_files/out6525.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'ECTools':
    |
    |    // @dev Parses a hexchar, like 'a', and returns its hex value, in this case 10
  > |    function parseInt16Char(string _char) public pure returns (uint) {
    |        bytes memory bresult = bytes(_char);
    |        // bool decimals = false;
  at /home/jiaming/slither_fp_files/out6525.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'ECTools':
    |    // @dev Hashes the signed message
    |    // @ref https://github.com/ethereum/go-ethereum/issues/3731#issuecomment-293866868
  > |    function toEthereumSignedMessage(string _msg) public pure returns (bytes32) {
    |        uint len = bytes(_msg).length;
    |        require(len > 0);
  at /home/jiaming/slither_fp_files/out6525.sol(131)

[33mWarning[0m for UnhandledException in contract 'ECTools':
    |            return 0x0;
    |        }
  > |        return ecrecover(prefixedHash, v, r, s);
    |    }
    |
  at /home/jiaming/slither_fp_files/out6525.sol(79)

[33mWarning[0m for LockedEther in contract 'HumanStandardToken':
    |}
    |
  > |contract HumanStandardToken is StandardToken {
    |
    |    /* Public variables of the token */
  at /home/jiaming/slither_fp_files/out6525.sol(215)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/slither_fp_files/out6525.sol(174)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/slither_fp_files/out6525.sol(186)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/slither_fp_files/out6525.sol(197)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/slither_fp_files/out6525.sol(201)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/slither_fp_files/out6525.sol(207)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/slither_fp_files/out6525.sol(244)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/slither_fp_files/out6525.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/slither_fp_files/out6525.sol(225)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    */
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H0.1';       //human 0.1 standard. Just an arbitrary versioning scheme.
  at /home/jiaming/slither_fp_files/out6525.sol(226)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
  > |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H0.1';       //human 0.1 standard. Just an arbitrary versioning scheme.
    |
  at /home/jiaming/slither_fp_files/out6525.sol(227)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  > |    string public version = 'H0.1';       //human 0.1 standard. Just an arbitrary versioning scheme.
    |
    |    constructor(
  at /home/jiaming/slither_fp_files/out6525.sol(228)

[33mWarning[0m for UnhandledException in contract 'HumanStandardToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/slither_fp_files/out6525.sol(251)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HumanStandardToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/slither_fp_files/out6525.sol(251)

[31mViolation[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out6525.sol(181)

[31mViolation[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/slither_fp_files/out6525.sol(190)

[31mViolation[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out6525.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out6525.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out6525.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out6525.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/slither_fp_files/out6525.sol(245)

[33mWarning[0m for LockedEther in contract 'LedgerChannel':
    |}
    |
  > |contract LedgerChannel {
    |
    |    string public constant NAME = "Ledger Channel";
  at /home/jiaming/slither_fp_files/out6525.sol(256)

[33mWarning[0m for UnhandledException in contract 'LedgerChannel':
    |        if(_balances[1] != 0) {
    |            Channels[_lcID].token = HumanStandardToken(_token);
  > |            require(Channels[_lcID].token.transferFrom(msg.sender, this, _balances[1]),"CreateChannel: token transfer failure");
    |            Channels[_lcID].erc20Balances[0] = _balances[1];
    |        }
  at /home/jiaming/slither_fp_files/out6525.sol(398)

[33mWarning[0m for UnhandledException in contract 'LedgerChannel':
    |
    |        if(Channels[_lcID].initialDeposit[0] != 0) {
  > |            Channels[_lcID].partyAddresses[0].transfer(Channels[_lcID].ethBalances[0]);
    |        } 
    |        if(Channels[_lcID].initialDeposit[1] != 0) {
  at /home/jiaming/slither_fp_files/out6525.sol(417)

[33mWarning[0m for UnhandledException in contract 'LedgerChannel':
    |        } 
    |        if(Channels[_lcID].initialDeposit[1] != 0) {
  > |            require(Channels[_lcID].token.transfer(Channels[_lcID].partyAddresses[0], Channels[_lcID].erc20Balances[0]),"CreateChannel: token transfer failure");
    |        }
    |
  at /home/jiaming/slither_fp_files/out6525.sol(420)

[33mWarning[0m for UnhandledException in contract 'LedgerChannel':
    |        } 
    |        if(_balances[1] != 0) {
  > |            require(Channels[_lcID].token.transferFrom(msg.sender, this, _balances[1]),"joinChannel: token transfer failure");
    |            Channels[_lcID].erc20Balances[1] = _balances[1];          
    |        }
  at /home/jiaming/slither_fp_files/out6525.sol(439)

[33mWarning[0m for UnhandledException in contract 'LedgerChannel':
    |        if (Channels[_lcID].partyAddresses[0] == recipient) {
    |            if(isToken) {
  > |                require(Channels[_lcID].token.transferFrom(msg.sender, this, _balance),"deposit: token transfer failure");
    |                Channels[_lcID].erc20Balances[2] += _balance;
    |            } else {
  at /home/jiaming/slither_fp_files/out6525.sol(463)

[33mWarning[0m for UnhandledException in contract 'LedgerChannel':
    |        if (Channels[_lcID].partyAddresses[1] == recipient) {
    |            if(isToken) {
  > |                require(Channels[_lcID].token.transferFrom(msg.sender, this, _balance),"deposit: token transfer failure");
    |                Channels[_lcID].erc20Balances[3] += _balance;
    |            } else {
  at /home/jiaming/slither_fp_files/out6525.sol(473)

[33mWarning[0m for UnhandledException in contract 'LedgerChannel':
    |
    |        if(_balances[0] != 0 || _balances[1] != 0) {
  > |            Channels[_lcID].partyAddresses[0].transfer(_balances[0]);
    |            Channels[_lcID].partyAddresses[1].transfer(_balances[1]);
    |        }
  at /home/jiaming/slither_fp_files/out6525.sol(524)

[33mWarning[0m for UnhandledException in contract 'LedgerChannel':
    |        if(_balances[0] != 0 || _balances[1] != 0) {
    |            Channels[_lcID].partyAddresses[0].transfer(_balances[0]);
  > |            Channels[_lcID].partyAddresses[1].transfer(_balances[1]);
    |        }
    |
  at /home/jiaming/slither_fp_files/out6525.sol(525)

[33mWarning[0m for UnhandledException in contract 'LedgerChannel':
    |
    |        if(_balances[2] != 0 || _balances[3] != 0) {
  > |            require(Channels[_lcID].token.transfer(Channels[_lcID].partyAddresses[0], _balances[2]),"happyCloseChannel: token transfer failure");
    |            require(Channels[_lcID].token.transfer(Channels[_lcID].partyAddresses[1], _balances[3]),"happyCloseChannel: token transfer failure");          
    |        }
  at /home/jiaming/slither_fp_files/out6525.sol(529)

[33mWarning[0m for UnhandledException in contract 'LedgerChannel':
    |        if(_balances[2] != 0 || _balances[3] != 0) {
    |            require(Channels[_lcID].token.transfer(Channels[_lcID].partyAddresses[0], _balances[2]),"happyCloseChannel: token transfer failure");
  > |            require(Channels[_lcID].token.transfer(Channels[_lcID].partyAddresses[1], _balances[3]),"happyCloseChannel: token transfer failure");          
    |        }
    |
  at /home/jiaming/slither_fp_files/out6525.sol(530)

[33mWarning[0m for UnhandledException in contract 'LedgerChannel':
    |
    |        if(ethbalanceA != 0 || ethbalanceI != 0) {
  > |            channel.partyAddresses[0].transfer(ethbalanceA);
    |            channel.partyAddresses[1].transfer(ethbalanceI);
    |        }
  at /home/jiaming/slither_fp_files/out6525.sol(788)

[33mWarning[0m for UnhandledException in contract 'LedgerChannel':
    |        if(ethbalanceA != 0 || ethbalanceI != 0) {
    |            channel.partyAddresses[0].transfer(ethbalanceA);
  > |            channel.partyAddresses[1].transfer(ethbalanceI);
    |        }
    |
  at /home/jiaming/slither_fp_files/out6525.sol(789)

[33mWarning[0m for UnhandledException in contract 'LedgerChannel':
    |        if(tokenbalanceA != 0 || tokenbalanceI != 0) {
    |            require(
  > |                channel.token.transfer(channel.partyAddresses[0], tokenbalanceA),
    |                "byzantineCloseChannel: token transfer failure"
    |            );
  at /home/jiaming/slither_fp_files/out6525.sol(794)

[33mWarning[0m for UnhandledException in contract 'LedgerChannel':
    |            );
    |            require(
  > |                channel.token.transfer(channel.partyAddresses[1], tokenbalanceI),
    |                "byzantineCloseChannel: token transfer failure"
    |            );          
  at /home/jiaming/slither_fp_files/out6525.sol(798)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LedgerChannel':
    |        if(_balances[1] != 0) {
    |            Channels[_lcID].token = HumanStandardToken(_token);
  > |            require(Channels[_lcID].token.transferFrom(msg.sender, this, _balances[1]),"CreateChannel: token transfer failure");
    |            Channels[_lcID].erc20Balances[0] = _balances[1];
    |        }
  at /home/jiaming/slither_fp_files/out6525.sol(398)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LedgerChannel':
    |
    |        if(Channels[_lcID].initialDeposit[0] != 0) {
  > |            Channels[_lcID].partyAddresses[0].transfer(Channels[_lcID].ethBalances[0]);
    |        } 
    |        if(Channels[_lcID].initialDeposit[1] != 0) {
  at /home/jiaming/slither_fp_files/out6525.sol(417)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LedgerChannel':
    |        } 
    |        if(Channels[_lcID].initialDeposit[1] != 0) {
  > |            require(Channels[_lcID].token.transfer(Channels[_lcID].partyAddresses[0], Channels[_lcID].erc20Balances[0]),"CreateChannel: token transfer failure");
    |        }
    |
  at /home/jiaming/slither_fp_files/out6525.sol(420)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LedgerChannel':
    |        } 
    |        if(_balances[1] != 0) {
  > |            require(Channels[_lcID].token.transferFrom(msg.sender, this, _balances[1]),"joinChannel: token transfer failure");
    |            Channels[_lcID].erc20Balances[1] = _balances[1];          
    |        }
  at /home/jiaming/slither_fp_files/out6525.sol(439)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LedgerChannel':
    |        if (Channels[_lcID].partyAddresses[0] == recipient) {
    |            if(isToken) {
  > |                require(Channels[_lcID].token.transferFrom(msg.sender, this, _balance),"deposit: token transfer failure");
    |                Channels[_lcID].erc20Balances[2] += _balance;
    |            } else {
  at /home/jiaming/slither_fp_files/out6525.sol(463)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LedgerChannel':
    |        if (Channels[_lcID].partyAddresses[1] == recipient) {
    |            if(isToken) {
  > |                require(Channels[_lcID].token.transferFrom(msg.sender, this, _balance),"deposit: token transfer failure");
    |                Channels[_lcID].erc20Balances[3] += _balance;
    |            } else {
  at /home/jiaming/slither_fp_files/out6525.sol(473)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LedgerChannel':
    |
    |        if(_balances[2] != 0 || _balances[3] != 0) {
  > |            require(Channels[_lcID].token.transfer(Channels[_lcID].partyAddresses[0], _balances[2]),"happyCloseChannel: token transfer failure");
    |            require(Channels[_lcID].token.transfer(Channels[_lcID].partyAddresses[1], _balances[3]),"happyCloseChannel: token transfer failure");          
    |        }
  at /home/jiaming/slither_fp_files/out6525.sol(529)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LedgerChannel':
    |        if(_balances[2] != 0 || _balances[3] != 0) {
    |            require(Channels[_lcID].token.transfer(Channels[_lcID].partyAddresses[0], _balances[2]),"happyCloseChannel: token transfer failure");
  > |            require(Channels[_lcID].token.transfer(Channels[_lcID].partyAddresses[1], _balances[3]),"happyCloseChannel: token transfer failure");          
    |        }
    |
  at /home/jiaming/slither_fp_files/out6525.sol(530)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LedgerChannel':
    |        if(tokenbalanceA != 0 || tokenbalanceI != 0) {
    |            require(
  > |                channel.token.transfer(channel.partyAddresses[0], tokenbalanceA),
    |                "byzantineCloseChannel: token transfer failure"
    |            );
  at /home/jiaming/slither_fp_files/out6525.sol(794)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LedgerChannel':
    |            );
    |            require(
  > |                channel.token.transfer(channel.partyAddresses[1], tokenbalanceI),
    |                "byzantineCloseChannel: token transfer failure"
    |            );          
  at /home/jiaming/slither_fp_files/out6525.sol(798)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |}
    |
  > |contract LedgerChannel {
    |
    |    string public constant NAME = "Ledger Channel";
  at /home/jiaming/slither_fp_files/out6525.sol(256)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        // to be signed from this requirement
    |        // Alternative is to check a sig as in joinChannel
  > |        Channels[_lcID].partyAddresses[0] = msg.sender;
    |        Channels[_lcID].partyAddresses[1] = _partyI;
    |
  at /home/jiaming/slither_fp_files/out6525.sol(389)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        // Alternative is to check a sig as in joinChannel
    |        Channels[_lcID].partyAddresses[0] = msg.sender;
  > |        Channels[_lcID].partyAddresses[1] = _partyI;
    |
    |        if(_balances[0] != 0) {
  at /home/jiaming/slither_fp_files/out6525.sol(390)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        if(_balances[0] != 0) {
    |            require(msg.value == _balances[0], "Eth balance does not match sent value");
  > |            Channels[_lcID].ethBalances[0] = msg.value;
    |        } 
    |        if(_balances[1] != 0) {
  at /home/jiaming/slither_fp_files/out6525.sol(394)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        } 
    |        if(_balances[1] != 0) {
  > |            Channels[_lcID].token = HumanStandardToken(_token);
    |            require(Channels[_lcID].token.transferFrom(msg.sender, this, _balances[1]),"CreateChannel: token transfer failure");
    |            Channels[_lcID].erc20Balances[0] = _balances[1];
  at /home/jiaming/slither_fp_files/out6525.sol(397)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |            Channels[_lcID].token = HumanStandardToken(_token);
    |            require(Channels[_lcID].token.transferFrom(msg.sender, this, _balances[1]),"CreateChannel: token transfer failure");
  > |            Channels[_lcID].erc20Balances[0] = _balances[1];
    |        }
    |
  at /home/jiaming/slither_fp_files/out6525.sol(399)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        }
    |
  > |        Channels[_lcID].sequence = 0;
    |        Channels[_lcID].confirmTime = _confirmTime;
    |        // is close flag, lc state sequence, number open vc, vc root hash, partyA... 
  at /home/jiaming/slither_fp_files/out6525.sol(402)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |
    |        Channels[_lcID].sequence = 0;
  > |        Channels[_lcID].confirmTime = _confirmTime;
    |        // is close flag, lc state sequence, number open vc, vc root hash, partyA... 
    |        //Channels[_lcID].stateHash = keccak256(uint256(0), uint256(0), uint256(0), bytes32(0x0), bytes32(msg.sender), bytes32(_partyI), balanceA, balanceI);
  at /home/jiaming/slither_fp_files/out6525.sol(403)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        // is close flag, lc state sequence, number open vc, vc root hash, partyA... 
    |        //Channels[_lcID].stateHash = keccak256(uint256(0), uint256(0), uint256(0), bytes32(0x0), bytes32(msg.sender), bytes32(_partyI), balanceA, balanceI);
  > |        Channels[_lcID].LCopenTimeout = now + _confirmTime;
    |        Channels[_lcID].initialDeposit = _balances;
    |
  at /home/jiaming/slither_fp_files/out6525.sol(406)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |            if(isToken) {
    |                require(Channels[_lcID].token.transferFrom(msg.sender, this, _balance),"deposit: token transfer failure");
  > |                Channels[_lcID].erc20Balances[2] += _balance;
    |            } else {
    |                require(msg.value == _balance, "state balance does not match sent value");
  at /home/jiaming/slither_fp_files/out6525.sol(464)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |            } else {
    |                require(msg.value == _balance, "state balance does not match sent value");
  > |                Channels[_lcID].ethBalances[2] += msg.value;
    |            }
    |        }
  at /home/jiaming/slither_fp_files/out6525.sol(467)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |            if(isToken) {
    |                require(Channels[_lcID].token.transferFrom(msg.sender, this, _balance),"deposit: token transfer failure");
  > |                Channels[_lcID].erc20Balances[3] += _balance;
    |            } else {
    |                require(msg.value == _balance, "state balance does not match sent value");
  at /home/jiaming/slither_fp_files/out6525.sol(474)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |            } else {
    |                require(msg.value == _balance, "state balance does not match sent value");
  > |                Channels[_lcID].ethBalances[3] += msg.value; 
    |            }
    |        }
  at /home/jiaming/slither_fp_files/out6525.sol(477)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        require(Channels[_lcID].partyAddresses[1] == ECTools.recoverSigner(_state, _sigI));
    |
  > |        Channels[_lcID].isOpen = false;
    |
    |        if(_balances[0] != 0 || _balances[1] != 0) {
  at /home/jiaming/slither_fp_files/out6525.sol(521)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        }
    |
  > |        numChannels--;
    |
    |        emit DidLCClose(_lcID, _sequence, _balances[0], _balances[1], _balances[2], _balances[3]);
  at /home/jiaming/slither_fp_files/out6525.sol(533)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |
    |        // update LC state
  > |        channel.sequence = updateParams[0];
    |        channel.numOpenVC = updateParams[1];
    |        channel.ethBalances[0] = updateParams[2];
  at /home/jiaming/slither_fp_files/out6525.sol(579)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        // update LC state
    |        channel.sequence = updateParams[0];
  > |        channel.numOpenVC = updateParams[1];
    |        channel.ethBalances[0] = updateParams[2];
    |        channel.ethBalances[1] = updateParams[3];
  at /home/jiaming/slither_fp_files/out6525.sol(580)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        channel.sequence = updateParams[0];
    |        channel.numOpenVC = updateParams[1];
  > |        channel.ethBalances[0] = updateParams[2];
    |        channel.ethBalances[1] = updateParams[3];
    |        channel.erc20Balances[0] = updateParams[4];
  at /home/jiaming/slither_fp_files/out6525.sol(581)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        channel.numOpenVC = updateParams[1];
    |        channel.ethBalances[0] = updateParams[2];
  > |        channel.ethBalances[1] = updateParams[3];
    |        channel.erc20Balances[0] = updateParams[4];
    |        channel.erc20Balances[1] = updateParams[5];
  at /home/jiaming/slither_fp_files/out6525.sol(582)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        channel.ethBalances[0] = updateParams[2];
    |        channel.ethBalances[1] = updateParams[3];
  > |        channel.erc20Balances[0] = updateParams[4];
    |        channel.erc20Balances[1] = updateParams[5];
    |        channel.VCrootHash = _VCroot;
  at /home/jiaming/slither_fp_files/out6525.sol(583)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        channel.ethBalances[1] = updateParams[3];
    |        channel.erc20Balances[0] = updateParams[4];
  > |        channel.erc20Balances[1] = updateParams[5];
    |        channel.VCrootHash = _VCroot;
    |        channel.isUpdateLCSettling = true;
  at /home/jiaming/slither_fp_files/out6525.sol(584)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        channel.erc20Balances[0] = updateParams[4];
    |        channel.erc20Balances[1] = updateParams[5];
  > |        channel.VCrootHash = _VCroot;
    |        channel.isUpdateLCSettling = true;
    |        channel.updateLCtimeout = now + channel.confirmTime;
  at /home/jiaming/slither_fp_files/out6525.sol(585)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        channel.erc20Balances[1] = updateParams[5];
    |        channel.VCrootHash = _VCroot;
  > |        channel.isUpdateLCSettling = true;
    |        channel.updateLCtimeout = now + channel.confirmTime;
    |
  at /home/jiaming/slither_fp_files/out6525.sol(586)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        channel.VCrootHash = _VCroot;
    |        channel.isUpdateLCSettling = true;
  > |        channel.updateLCtimeout = now + channel.confirmTime;
    |
    |        // make settlement flag
  at /home/jiaming/slither_fp_files/out6525.sol(587)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        require(_isContained(_initState, _proof, Channels[_lcID].VCrootHash) == true);
    |
  > |        virtualChannels[_vcID].partyA = _partyA; // VC participant A
    |        virtualChannels[_vcID].partyB = _partyB; // VC participant B
    |        virtualChannels[_vcID].sequence = uint256(0);
  at /home/jiaming/slither_fp_files/out6525.sol(635)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |
    |        virtualChannels[_vcID].partyA = _partyA; // VC participant A
  > |        virtualChannels[_vcID].partyB = _partyB; // VC participant B
    |        virtualChannels[_vcID].sequence = uint256(0);
    |        virtualChannels[_vcID].ethBalances[0] = _balances[0];
  at /home/jiaming/slither_fp_files/out6525.sol(636)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        virtualChannels[_vcID].partyA = _partyA; // VC participant A
    |        virtualChannels[_vcID].partyB = _partyB; // VC participant B
  > |        virtualChannels[_vcID].sequence = uint256(0);
    |        virtualChannels[_vcID].ethBalances[0] = _balances[0];
    |        virtualChannels[_vcID].ethBalances[1] = _balances[1];
  at /home/jiaming/slither_fp_files/out6525.sol(637)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        virtualChannels[_vcID].partyB = _partyB; // VC participant B
    |        virtualChannels[_vcID].sequence = uint256(0);
  > |        virtualChannels[_vcID].ethBalances[0] = _balances[0];
    |        virtualChannels[_vcID].ethBalances[1] = _balances[1];
    |        virtualChannels[_vcID].erc20Balances[0] = _balances[2];
  at /home/jiaming/slither_fp_files/out6525.sol(638)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        virtualChannels[_vcID].sequence = uint256(0);
    |        virtualChannels[_vcID].ethBalances[0] = _balances[0];
  > |        virtualChannels[_vcID].ethBalances[1] = _balances[1];
    |        virtualChannels[_vcID].erc20Balances[0] = _balances[2];
    |        virtualChannels[_vcID].erc20Balances[1] = _balances[3];
  at /home/jiaming/slither_fp_files/out6525.sol(639)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        virtualChannels[_vcID].ethBalances[0] = _balances[0];
    |        virtualChannels[_vcID].ethBalances[1] = _balances[1];
  > |        virtualChannels[_vcID].erc20Balances[0] = _balances[2];
    |        virtualChannels[_vcID].erc20Balances[1] = _balances[3];
    |        virtualChannels[_vcID].bond = _bond;
  at /home/jiaming/slither_fp_files/out6525.sol(640)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        virtualChannels[_vcID].ethBalances[1] = _balances[1];
    |        virtualChannels[_vcID].erc20Balances[0] = _balances[2];
  > |        virtualChannels[_vcID].erc20Balances[1] = _balances[3];
    |        virtualChannels[_vcID].bond = _bond;
    |        virtualChannels[_vcID].updateVCtimeout = now + Channels[_lcID].confirmTime;
  at /home/jiaming/slither_fp_files/out6525.sol(641)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        virtualChannels[_vcID].erc20Balances[1] = _balances[3];
    |        virtualChannels[_vcID].bond = _bond;
  > |        virtualChannels[_vcID].updateVCtimeout = now + Channels[_lcID].confirmTime;
    |        virtualChannels[_vcID].isInSettlementState = true;
    |
  at /home/jiaming/slither_fp_files/out6525.sol(643)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        virtualChannels[_vcID].bond = _bond;
    |        virtualChannels[_vcID].updateVCtimeout = now + Channels[_lcID].confirmTime;
  > |        virtualChannels[_vcID].isInSettlementState = true;
    |
    |        emit DidVCInit(_lcID, _vcID, _proof, uint256(0), _partyA, _partyB, _balances[0], _balances[1]);
  at /home/jiaming/slither_fp_files/out6525.sol(644)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        // store VC data
    |        // we may want to record who is initiating on-chain settles
  > |        virtualChannels[_vcID].challenger = msg.sender;
    |        virtualChannels[_vcID].sequence = updateSeq;
    |
  at /home/jiaming/slither_fp_files/out6525.sol(701)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        // we may want to record who is initiating on-chain settles
    |        virtualChannels[_vcID].challenger = msg.sender;
  > |        virtualChannels[_vcID].sequence = updateSeq;
    |
    |        // channel state
  at /home/jiaming/slither_fp_files/out6525.sol(702)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |
    |        // channel state
  > |        virtualChannels[_vcID].ethBalances[0] = updateBal[0];
    |        virtualChannels[_vcID].ethBalances[1] = updateBal[1];
    |        virtualChannels[_vcID].erc20Balances[0] = updateBal[2];
  at /home/jiaming/slither_fp_files/out6525.sol(705)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        // channel state
    |        virtualChannels[_vcID].ethBalances[0] = updateBal[0];
  > |        virtualChannels[_vcID].ethBalances[1] = updateBal[1];
    |        virtualChannels[_vcID].erc20Balances[0] = updateBal[2];
    |        virtualChannels[_vcID].erc20Balances[1] = updateBal[3];
  at /home/jiaming/slither_fp_files/out6525.sol(706)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        virtualChannels[_vcID].ethBalances[0] = updateBal[0];
    |        virtualChannels[_vcID].ethBalances[1] = updateBal[1];
  > |        virtualChannels[_vcID].erc20Balances[0] = updateBal[2];
    |        virtualChannels[_vcID].erc20Balances[1] = updateBal[3];
    |
  at /home/jiaming/slither_fp_files/out6525.sol(707)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        virtualChannels[_vcID].ethBalances[1] = updateBal[1];
    |        virtualChannels[_vcID].erc20Balances[0] = updateBal[2];
  > |        virtualChannels[_vcID].erc20Balances[1] = updateBal[3];
    |
    |        virtualChannels[_vcID].updateVCtimeout = now + Channels[_lcID].confirmTime;
  at /home/jiaming/slither_fp_files/out6525.sol(708)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        virtualChannels[_vcID].erc20Balances[1] = updateBal[3];
    |
  > |        virtualChannels[_vcID].updateVCtimeout = now + Channels[_lcID].confirmTime;
    |
    |        emit DidVCSettle(_lcID, _vcID, updateSeq, updateBal[0], updateBal[1], msg.sender, virtualChannels[_vcID].updateVCtimeout);
  at /home/jiaming/slither_fp_files/out6525.sol(710)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        require(!virtualChannels[_vcID].isClose, "VC is already closed");
    |        // reduce the number of open virtual channels stored on LC
  > |        Channels[_lcID].numOpenVC--;
    |        // close vc flags
    |        virtualChannels[_vcID].isClose = true;
  at /home/jiaming/slither_fp_files/out6525.sol(722)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        Channels[_lcID].numOpenVC--;
    |        // close vc flags
  > |        virtualChannels[_vcID].isClose = true;
    |        // re-introduce the balances back into the LC state from the settled VC
    |        // decide if this lc is alice or bob in the vc
  at /home/jiaming/slither_fp_files/out6525.sol(724)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        // decide if this lc is alice or bob in the vc
    |        if(virtualChannels[_vcID].partyA == Channels[_lcID].partyAddresses[0]) {
  > |            Channels[_lcID].ethBalances[0] += virtualChannels[_vcID].ethBalances[0];
    |            Channels[_lcID].ethBalances[1] += virtualChannels[_vcID].ethBalances[1];
    |
  at /home/jiaming/slither_fp_files/out6525.sol(728)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        if(virtualChannels[_vcID].partyA == Channels[_lcID].partyAddresses[0]) {
    |            Channels[_lcID].ethBalances[0] += virtualChannels[_vcID].ethBalances[0];
  > |            Channels[_lcID].ethBalances[1] += virtualChannels[_vcID].ethBalances[1];
    |
    |            Channels[_lcID].erc20Balances[0] += virtualChannels[_vcID].erc20Balances[0];
  at /home/jiaming/slither_fp_files/out6525.sol(729)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |            Channels[_lcID].ethBalances[1] += virtualChannels[_vcID].ethBalances[1];
    |
  > |            Channels[_lcID].erc20Balances[0] += virtualChannels[_vcID].erc20Balances[0];
    |            Channels[_lcID].erc20Balances[1] += virtualChannels[_vcID].erc20Balances[1];
    |        } else if (virtualChannels[_vcID].partyB == Channels[_lcID].partyAddresses[0]) {
  at /home/jiaming/slither_fp_files/out6525.sol(731)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |
    |            Channels[_lcID].erc20Balances[0] += virtualChannels[_vcID].erc20Balances[0];
  > |            Channels[_lcID].erc20Balances[1] += virtualChannels[_vcID].erc20Balances[1];
    |        } else if (virtualChannels[_vcID].partyB == Channels[_lcID].partyAddresses[0]) {
    |            Channels[_lcID].ethBalances[0] += virtualChannels[_vcID].ethBalances[1];
  at /home/jiaming/slither_fp_files/out6525.sol(732)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |            Channels[_lcID].erc20Balances[1] += virtualChannels[_vcID].erc20Balances[1];
    |        } else if (virtualChannels[_vcID].partyB == Channels[_lcID].partyAddresses[0]) {
  > |            Channels[_lcID].ethBalances[0] += virtualChannels[_vcID].ethBalances[1];
    |            Channels[_lcID].ethBalances[1] += virtualChannels[_vcID].ethBalances[0];
    |
  at /home/jiaming/slither_fp_files/out6525.sol(734)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        } else if (virtualChannels[_vcID].partyB == Channels[_lcID].partyAddresses[0]) {
    |            Channels[_lcID].ethBalances[0] += virtualChannels[_vcID].ethBalances[1];
  > |            Channels[_lcID].ethBalances[1] += virtualChannels[_vcID].ethBalances[0];
    |
    |            Channels[_lcID].erc20Balances[0] += virtualChannels[_vcID].erc20Balances[1];
  at /home/jiaming/slither_fp_files/out6525.sol(735)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |            Channels[_lcID].ethBalances[1] += virtualChannels[_vcID].ethBalances[0];
    |
  > |            Channels[_lcID].erc20Balances[0] += virtualChannels[_vcID].erc20Balances[1];
    |            Channels[_lcID].erc20Balances[1] += virtualChannels[_vcID].erc20Balances[0];
    |        }
  at /home/jiaming/slither_fp_files/out6525.sol(737)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |
    |            Channels[_lcID].erc20Balances[0] += virtualChannels[_vcID].erc20Balances[1];
  > |            Channels[_lcID].erc20Balances[1] += virtualChannels[_vcID].erc20Balances[0];
    |        }
    |
  at /home/jiaming/slither_fp_files/out6525.sol(738)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |
    |        if(possibleTotalEthBeforeDeposit < totalEthDeposit) {
  > |            channel.ethBalances[0]+=channel.ethBalances[2];
    |            channel.ethBalances[1]+=channel.ethBalances[3];
    |        } else {
  at /home/jiaming/slither_fp_files/out6525.sol(763)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        if(possibleTotalEthBeforeDeposit < totalEthDeposit) {
    |            channel.ethBalances[0]+=channel.ethBalances[2];
  > |            channel.ethBalances[1]+=channel.ethBalances[3];
    |        } else {
    |            require(possibleTotalEthBeforeDeposit == totalEthDeposit);
  at /home/jiaming/slither_fp_files/out6525.sol(764)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |
    |        if(possibleTotalTokenBeforeDeposit < totalTokenDeposit) {
  > |            channel.erc20Balances[0]+=channel.erc20Balances[2];
    |            channel.erc20Balances[1]+=channel.erc20Balances[3];
    |        } else {
  at /home/jiaming/slither_fp_files/out6525.sol(770)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        if(possibleTotalTokenBeforeDeposit < totalTokenDeposit) {
    |            channel.erc20Balances[0]+=channel.erc20Balances[2];
  > |            channel.erc20Balances[1]+=channel.erc20Balances[3];
    |        } else {
    |            require(possibleTotalTokenBeforeDeposit == totalTokenDeposit);
  at /home/jiaming/slither_fp_files/out6525.sol(771)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        uint256 tokenbalanceI = channel.erc20Balances[1];
    |
  > |        channel.ethBalances[0] = 0;
    |        channel.ethBalances[1] = 0;
    |        channel.erc20Balances[0] = 0;
  at /home/jiaming/slither_fp_files/out6525.sol(782)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |
    |        channel.ethBalances[0] = 0;
  > |        channel.ethBalances[1] = 0;
    |        channel.erc20Balances[0] = 0;
    |        channel.erc20Balances[1] = 0;
  at /home/jiaming/slither_fp_files/out6525.sol(783)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        channel.ethBalances[0] = 0;
    |        channel.ethBalances[1] = 0;
  > |        channel.erc20Balances[0] = 0;
    |        channel.erc20Balances[1] = 0;
    |
  at /home/jiaming/slither_fp_files/out6525.sol(784)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        channel.ethBalances[1] = 0;
    |        channel.erc20Balances[0] = 0;
  > |        channel.erc20Balances[1] = 0;
    |
    |        if(ethbalanceA != 0 || ethbalanceI != 0) {
  at /home/jiaming/slither_fp_files/out6525.sol(785)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        }
    |
  > |        channel.isOpen = false;
    |        numChannels--;
    |
  at /home/jiaming/slither_fp_files/out6525.sol(803)

[31mViolation[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |
    |        channel.isOpen = false;
  > |        numChannels--;
    |
    |        emit DidLCClose(_lcID, channel.sequence, ethbalanceA, ethbalanceI, tokenbalanceA, tokenbalanceI);
  at /home/jiaming/slither_fp_files/out6525.sol(804)

[33mWarning[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |}
    |
  > |contract LedgerChannel {
    |
    |    string public constant NAME = "Ledger Channel";
  at /home/jiaming/slither_fp_files/out6525.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |
    |        // only safe to delete since no action was taken on this channel
  > |        delete Channels[_lcID];
    |    }
    |
  at /home/jiaming/slither_fp_files/out6525.sol(426)

[33mWarning[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        if(_balances[0] != 0) {
    |            require(msg.value == _balances[0], "state balance does not match sent value");
  > |            Channels[_lcID].ethBalances[1] = msg.value;
    |        } 
    |        if(_balances[1] != 0) {
  at /home/jiaming/slither_fp_files/out6525.sol(436)

[33mWarning[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        if(_balances[1] != 0) {
    |            require(Channels[_lcID].token.transferFrom(msg.sender, this, _balances[1]),"joinChannel: token transfer failure");
  > |            Channels[_lcID].erc20Balances[1] = _balances[1];          
    |        }
    |
  at /home/jiaming/slither_fp_files/out6525.sol(440)

[33mWarning[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        }
    |
  > |        Channels[_lcID].initialDeposit[0]+=_balances[0];
    |        Channels[_lcID].initialDeposit[1]+=_balances[1];
    |        // no longer allow joining functions to be called
  at /home/jiaming/slither_fp_files/out6525.sol(443)

[33mWarning[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |
    |        Channels[_lcID].initialDeposit[0]+=_balances[0];
  > |        Channels[_lcID].initialDeposit[1]+=_balances[1];
    |        // no longer allow joining functions to be called
    |        Channels[_lcID].isOpen = true;
  at /home/jiaming/slither_fp_files/out6525.sol(444)

[33mWarning[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        Channels[_lcID].initialDeposit[1]+=_balances[1];
    |        // no longer allow joining functions to be called
  > |        Channels[_lcID].isOpen = true;
    |        numChannels++;
    |
  at /home/jiaming/slither_fp_files/out6525.sol(446)

[33mWarning[0m for UnrestrictedWrite in contract 'LedgerChannel':
    |        // no longer allow joining functions to be called
    |        Channels[_lcID].isOpen = true;
  > |        numChannels++;
    |
    |        emit DidLCJoin(_lcID, _balances[0], _balances[1]);
  at /home/jiaming/slither_fp_files/out6525.sol(447)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |    }
    |}
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
  at /home/jiaming/slither_fp_files/out6525.sol(172)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/slither_fp_files/out6525.sol(174)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/slither_fp_files/out6525.sol(186)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/slither_fp_files/out6525.sol(197)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/slither_fp_files/out6525.sol(201)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/slither_fp_files/out6525.sol(207)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/slither_fp_files/out6525.sol(16)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out6525.sol(181)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/slither_fp_files/out6525.sol(190)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out6525.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out6525.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out6525.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out6525.sol(202)


