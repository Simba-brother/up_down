Processing contract: /home/jiaming/slither_fp_files/out15960.sol:AKC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15960.sol:AKCCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15960.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/slither_fp_files/out15960.sol:Controlled
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15960.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15960.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15960.sol:DSAuthority
Processing contract: /home/jiaming/slither_fp_files/out15960.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15960.sol:DSNote
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15960.sol:DSStop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15960.sol:DSToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15960.sol:DSTokenBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15960.sol:ERC20
Processing contract: /home/jiaming/slither_fp_files/out15960.sol:ERC20Events
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15960.sol:ERC223
Processing contract: /home/jiaming/slither_fp_files/out15960.sol:ERC223ReceivingContract
Processing contract: /home/jiaming/slither_fp_files/out15960.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15960.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15960.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15960.sol:TokenController
Processing contract: /home/jiaming/slither_fp_files/out15960.sol:Withdrawable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'AKC':
    |    function ()  payable {
    |        if (isContract(controller)) {
  > |            if (! TokenController(controller).proxyPayment.value(msg.value)(msg.sender))
    |                revert();
    |        } else {
  at /home/jiaming/slither_fp_files/out15960.sol(580)

[33mWarning[0m for DAOConstantGas in contract 'AKC':
    |    function claimTokens(address _token) onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/slither_fp_files/out15960.sol(597)

[33mWarning[0m for LockedEther in contract 'AKC':
    |}
    |
  > |contract AKC is DSToken("AKC"), ERC223, Controlled {
    |
    |    constructor() {
  at /home/jiaming/slither_fp_files/out15960.sol(387)

[31mViolation[0m for TODAmount in contract 'AKC':
    |    function claimTokens(address _token) onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/slither_fp_files/out15960.sol(597)

[31mViolation[0m for TODReceiver in contract 'AKC':
    |    function ()  payable {
    |        if (isContract(controller)) {
  > |            if (! TokenController(controller).proxyPayment.value(msg.value)(msg.sender))
    |                revert();
    |        } else {
  at /home/jiaming/slither_fp_files/out15960.sol(580)

[31mViolation[0m for TODReceiver in contract 'AKC':
    |    function claimTokens(address _token) onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/slither_fp_files/out15960.sol(597)

[31mViolation[0m for UnhandledException in contract 'AKC':
    |            if(_to == address(this)) revert();
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.call.value(0)(bytes4(keccak256(_custom_fallback)), _from, _amount, _data);
    |        }
    |
  at /home/jiaming/slither_fp_files/out15960.sol(492)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(138)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |        // Alerts the token controller of the transfer
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onTransfer(_from, _to, _amount))
    |               revert();
    |        }
  at /home/jiaming/slither_fp_files/out15960.sol(403)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |        {
    |            // ERC20 backward compatiability
  > |            if(!_to.call(bytes4(keccak256("tokenFallback(address,uint256)")), _from, _amount)) {
    |                // do nothing when error in call in case that the _to contract is not inherited from ERC223ReceivingContract
    |                // revert();
  at /home/jiaming/slither_fp_files/out15960.sol(412)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |        // Alerts the token controller of the transfer
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onTransfer(_from, _to, _amount))
    |               revert();
    |        }
  at /home/jiaming/slither_fp_files/out15960.sol(434)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |        if (isContract(_to)) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(_from, _amount, _data);
    |        }
    |
  at /home/jiaming/slither_fp_files/out15960.sol(442)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |        // Alerts the token controller of the transfer
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onTransfer(_from, _to, _amount))
    |               revert();
    |        }
  at /home/jiaming/slither_fp_files/out15960.sol(483)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onApprove(msg.sender, _spender, _amount))
    |                revert();
    |        }
  at /home/jiaming/slither_fp_files/out15960.sol(524)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |        if (!approve(_spender, _amount)) revert();
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/slither_fp_files/out15960.sol(553)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |    function ()  payable {
    |        if (isContract(controller)) {
  > |            if (! TokenController(controller).proxyPayment.value(msg.value)(msg.sender))
    |                revert();
    |        } else {
  at /home/jiaming/slither_fp_files/out15960.sol(580)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |    function claimTokens(address _token) onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/slither_fp_files/out15960.sol(597)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |
    |        ERC20 token = ERC20(_token);
  > |        uint balance = token.balanceOf(this);
    |        token.transfer(controller, balance);
    |        emit ClaimedTokens(_token, controller, balance);
  at /home/jiaming/slither_fp_files/out15960.sol(602)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |        ERC20 token = ERC20(_token);
    |        uint balance = token.balanceOf(this);
  > |        token.transfer(controller, balance);
    |        emit ClaimedTokens(_token, controller, balance);
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(603)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(138)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |        // Alerts the token controller of the transfer
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onTransfer(_from, _to, _amount))
    |               revert();
    |        }
  at /home/jiaming/slither_fp_files/out15960.sol(403)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |        {
    |            // ERC20 backward compatiability
  > |            if(!_to.call(bytes4(keccak256("tokenFallback(address,uint256)")), _from, _amount)) {
    |                // do nothing when error in call in case that the _to contract is not inherited from ERC223ReceivingContract
    |                // revert();
  at /home/jiaming/slither_fp_files/out15960.sol(412)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |        // Alerts the token controller of the transfer
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onTransfer(_from, _to, _amount))
    |               revert();
    |        }
  at /home/jiaming/slither_fp_files/out15960.sol(434)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |        if (isContract(_to)) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(_from, _amount, _data);
    |        }
    |
  at /home/jiaming/slither_fp_files/out15960.sol(442)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |        // Alerts the token controller of the transfer
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onTransfer(_from, _to, _amount))
    |               revert();
    |        }
  at /home/jiaming/slither_fp_files/out15960.sol(483)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |            if(_to == address(this)) revert();
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.call.value(0)(bytes4(keccak256(_custom_fallback)), _from, _amount, _data);
    |        }
    |
  at /home/jiaming/slither_fp_files/out15960.sol(492)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onApprove(msg.sender, _spender, _amount))
    |                revert();
    |        }
  at /home/jiaming/slither_fp_files/out15960.sol(524)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |        if (!approve(_spender, _amount)) revert();
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/slither_fp_files/out15960.sol(553)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |    function ()  payable {
    |        if (isContract(controller)) {
  > |            if (! TokenController(controller).proxyPayment.value(msg.value)(msg.sender))
    |                revert();
    |        } else {
  at /home/jiaming/slither_fp_files/out15960.sol(580)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |    function claimTokens(address _token) onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/slither_fp_files/out15960.sol(597)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |
    |        ERC20 token = ERC20(_token);
  > |        uint balance = token.balanceOf(this);
    |        token.transfer(controller, balance);
    |        emit ClaimedTokens(_token, controller, balance);
  at /home/jiaming/slither_fp_files/out15960.sol(602)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |        ERC20 token = ERC20(_token);
    |        uint balance = token.balanceOf(this);
  > |        token.transfer(controller, balance);
    |        emit ClaimedTokens(_token, controller, balance);
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(603)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |        auth
    |    {
  > |        owner = owner_;
    |        emit LogSetOwner(owner);
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |        auth
    |    {
  > |        authority = authority_;
    |        emit LogSetAuthority(authority);
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/slither_fp_files/out15960.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/slither_fp_files/out15960.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        emit Approval(msg.sender, guy, wad);
  at /home/jiaming/slither_fp_files/out15960.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |    {
    |        if (src != msg.sender && _approvals[src][msg.sender] != uint(-1)) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/slither_fp_files/out15960.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/slither_fp_files/out15960.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |
    |        _balances[src] = sub(_balances[src], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |
    |        emit Transfer(src, dst, wad);
  at /home/jiaming/slither_fp_files/out15960.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |    }
    |    function mint(address guy, uint wad) public auth stoppable {
  > |        _balances[guy] = add(_balances[guy], wad);
    |        _supply = add(_supply, wad);
    |        emit Mint(guy, wad);
  at /home/jiaming/slither_fp_files/out15960.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |    function mint(address guy, uint wad) public auth stoppable {
    |        _balances[guy] = add(_balances[guy], wad);
  > |        _supply = add(_supply, wad);
    |        emit Mint(guy, wad);
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |    function burn(address guy, uint wad) public auth stoppable {
    |        if (guy != msg.sender && _approvals[guy][msg.sender] != uint(-1)) {
  > |            _approvals[guy][msg.sender] = sub(_approvals[guy][msg.sender], wad);
    |        }
    |
  at /home/jiaming/slither_fp_files/out15960.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |        }
    |
  > |        _balances[guy] = sub(_balances[guy], wad);
    |        _supply = sub(_supply, wad);
    |        emit Burn(guy, wad);
  at /home/jiaming/slither_fp_files/out15960.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |
    |        _balances[guy] = sub(_balances[guy], wad);
  > |        _supply = sub(_supply, wad);
    |        emit Burn(guy, wad);
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |
    |    function setName(bytes32 name_) public auth {
  > |        name = name_;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out15960.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out15960.sol(365)

[31mViolation[0m for DAOConstantGas in contract 'AKCCrowdsale':
    |      require(!crowdsaleClosed);
    |      /* Transfer the Ether from the contract to the beneficiary's address.*/
  > |      beneficiary.transfer(address(this).balance);
    |      /* Transfer the AKC from the contract to the beneficiary's address.*/
    |      token.transfer(beneficiary, token.balanceOf(address(this)));
  at /home/jiaming/slither_fp_files/out15960.sol(879)

[33mWarning[0m for DAOConstantGas in contract 'AKCCrowdsale':
    |        require(address(this).balance >= _value);
    |
  > |        _to.transfer(_value);
    |
    |        return true;
  at /home/jiaming/slither_fp_files/out15960.sol(737)

[33mWarning[0m for DAOConstantGas in contract 'AKCCrowdsale':
    |      /* Return the excess Ether */
    |      if(retSum > 0) {
  > |          sender.transfer(retSum);
    |      }
    |
  at /home/jiaming/slither_fp_files/out15960.sol(866)

[33mWarning[0m for DAOConstantGas in contract 'AKCCrowdsale':
    |      }
    |
  > |      beneficiary.transfer(address(this).balance);
    |      emit Purchase(sender, amount, sum);
    |  }
  at /home/jiaming/slither_fp_files/out15960.sol(869)

[33mWarning[0m for LockedEther in contract 'AKCCrowdsale':
    | * @dev AKC token sale contract.
    | */
  > |contract AKCCrowdsale is Pausable, Withdrawable {
    |  using SafeMath for uint;
    |
  at /home/jiaming/slither_fp_files/out15960.sol(759)

[31mViolation[0m for TODAmount in contract 'AKCCrowdsale':
    |      }
    |
  > |      beneficiary.transfer(address(this).balance);
    |      emit Purchase(sender, amount, sum);
    |  }
  at /home/jiaming/slither_fp_files/out15960.sol(869)

[31mViolation[0m for TODAmount in contract 'AKCCrowdsale':
    |      require(!crowdsaleClosed);
    |      /* Transfer the Ether from the contract to the beneficiary's address.*/
  > |      beneficiary.transfer(address(this).balance);
    |      /* Transfer the AKC from the contract to the beneficiary's address.*/
    |      token.transfer(beneficiary, token.balanceOf(address(this)));
  at /home/jiaming/slither_fp_files/out15960.sol(879)

[33mWarning[0m for TODAmount in contract 'AKCCrowdsale':
    |        require(address(this).balance >= _value);
    |
  > |        _to.transfer(_value);
    |
    |        return true;
  at /home/jiaming/slither_fp_files/out15960.sol(737)

[33mWarning[0m for TODAmount in contract 'AKCCrowdsale':
    |      /* Return the excess Ether */
    |      if(retSum > 0) {
  > |          sender.transfer(retSum);
    |      }
    |
  at /home/jiaming/slither_fp_files/out15960.sol(866)

[33mWarning[0m for TODReceiver in contract 'AKCCrowdsale':
    |        require(address(this).balance >= _value);
    |
  > |        _to.transfer(_value);
    |
    |        return true;
  at /home/jiaming/slither_fp_files/out15960.sol(737)

[33mWarning[0m for TODReceiver in contract 'AKCCrowdsale':
    |      require(!crowdsaleClosed);
    |      /* Transfer the Ether from the contract to the beneficiary's address.*/
  > |      beneficiary.transfer(address(this).balance);
    |      /* Transfer the AKC from the contract to the beneficiary's address.*/
    |      token.transfer(beneficiary, token.balanceOf(address(this)));
  at /home/jiaming/slither_fp_files/out15960.sol(879)

[33mWarning[0m for TODReceiver in contract 'AKCCrowdsale':
    |      /* Return the excess Ether */
    |      if(retSum > 0) {
  > |          sender.transfer(retSum);
    |      }
    |
  at /home/jiaming/slither_fp_files/out15960.sol(866)

[33mWarning[0m for UnhandledException in contract 'AKCCrowdsale':
    |        require(address(this).balance >= _value);
    |
  > |        _to.transfer(_value);
    |
    |        return true;
  at /home/jiaming/slither_fp_files/out15960.sol(737)

[33mWarning[0m for UnhandledException in contract 'AKCCrowdsale':
    |        require(_to != address(0));
    |
  > |        return _token.transfer(_to, _value);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out15960.sol(751)

[33mWarning[0m for UnhandledException in contract 'AKCCrowdsale':
    |      /* Mint and Send AKC */
    |      /* token.mint(sender, amount); */
  > |      token.transfer(sender, amount);
    |
    |      /* Return the excess Ether */
  at /home/jiaming/slither_fp_files/out15960.sol(862)

[33mWarning[0m for UnhandledException in contract 'AKCCrowdsale':
    |      /* Return the excess Ether */
    |      if(retSum > 0) {
  > |          sender.transfer(retSum);
    |      }
    |
  at /home/jiaming/slither_fp_files/out15960.sol(866)

[33mWarning[0m for UnhandledException in contract 'AKCCrowdsale':
    |      }
    |
  > |      beneficiary.transfer(address(this).balance);
    |      emit Purchase(sender, amount, sum);
    |  }
  at /home/jiaming/slither_fp_files/out15960.sol(869)

[33mWarning[0m for UnhandledException in contract 'AKCCrowdsale':
    |      require(!crowdsaleClosed);
    |      /* Transfer the Ether from the contract to the beneficiary's address.*/
  > |      beneficiary.transfer(address(this).balance);
    |      /* Transfer the AKC from the contract to the beneficiary's address.*/
    |      token.transfer(beneficiary, token.balanceOf(address(this)));
  at /home/jiaming/slither_fp_files/out15960.sol(879)

[33mWarning[0m for UnhandledException in contract 'AKCCrowdsale':
    |      beneficiary.transfer(address(this).balance);
    |      /* Transfer the AKC from the contract to the beneficiary's address.*/
  > |      token.transfer(beneficiary, token.balanceOf(address(this)));
    |      crowdsaleClosed = true;
    |      emit CrowdsaleClose();
  at /home/jiaming/slither_fp_files/out15960.sol(881)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKCCrowdsale':
    |        require(_to != address(0));
    |
  > |        return _token.transfer(_to, _value);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out15960.sol(751)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKCCrowdsale':
    |      /* Mint and Send AKC */
    |      /* token.mint(sender, amount); */
  > |      token.transfer(sender, amount);
    |
    |      /* Return the excess Ether */
  at /home/jiaming/slither_fp_files/out15960.sol(862)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKCCrowdsale':
    |      /* Return the excess Ether */
    |      if(retSum > 0) {
  > |          sender.transfer(retSum);
    |      }
    |
  at /home/jiaming/slither_fp_files/out15960.sol(866)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKCCrowdsale':
    |      }
    |
  > |      beneficiary.transfer(address(this).balance);
    |      emit Purchase(sender, amount, sum);
    |  }
  at /home/jiaming/slither_fp_files/out15960.sol(869)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKCCrowdsale':
    |      require(!crowdsaleClosed);
    |      /* Transfer the Ether from the contract to the beneficiary's address.*/
  > |      beneficiary.transfer(address(this).balance);
    |      /* Transfer the AKC from the contract to the beneficiary's address.*/
    |      token.transfer(beneficiary, token.balanceOf(address(this)));
  at /home/jiaming/slither_fp_files/out15960.sol(879)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKCCrowdsale':
    |      beneficiary.transfer(address(this).balance);
    |      /* Transfer the AKC from the contract to the beneficiary's address.*/
  > |      token.transfer(beneficiary, token.balanceOf(address(this)));
    |      crowdsaleClosed = true;
    |      emit CrowdsaleClose();
  at /home/jiaming/slither_fp_files/out15960.sol(881)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKCCrowdsale':
    |        require(address(this).balance >= _value);
    |
  > |        _to.transfer(_value);
    |
    |        return true;
  at /home/jiaming/slither_fp_files/out15960.sol(737)

[31mViolation[0m for UnrestrictedWrite in contract 'AKCCrowdsale':
    |      /* Update the step based on the current time. */
    |      if (now > steps[1].timestamp && currentStep < 1){
  > |        currentStep = 1;
    |        emit NextStep(currentStep);
    |      }
  at /home/jiaming/slither_fp_files/out15960.sol(826)

[31mViolation[0m for UnrestrictedWrite in contract 'AKCCrowdsale':
    |      }
    |      if (now > steps[2].timestamp && currentStep < 2){
  > |        currentStep = 2;
    |        emit NextStep(currentStep);
    |      }
  at /home/jiaming/slither_fp_files/out15960.sol(830)

[31mViolation[0m for UnrestrictedWrite in contract 'AKCCrowdsale':
    |      }
    |      if (now > steps[3].timestamp && currentStep < 3){
  > |        currentStep = 3;
    |        emit NextStep(currentStep);
    |      }
  at /home/jiaming/slither_fp_files/out15960.sol(834)

[33mWarning[0m for UnrestrictedWrite in contract 'AKCCrowdsale':
    |
    |      /* Record purchase info */
  > |      totalTokensSold = totalTokensSold.add(amount);
    |      totalCollectedWei = totalCollectedWei.add(sum);
    |      steps[currentStep].tokensSold = steps[currentStep].tokensSold.add(amount);
  at /home/jiaming/slither_fp_files/out15960.sol(855)

[33mWarning[0m for UnrestrictedWrite in contract 'AKCCrowdsale':
    |      /* Record purchase info */
    |      totalTokensSold = totalTokensSold.add(amount);
  > |      totalCollectedWei = totalCollectedWei.add(sum);
    |      steps[currentStep].tokensSold = steps[currentStep].tokensSold.add(amount);
    |      steps[currentStep].collectedWei = steps[currentStep].collectedWei.add(sum);
  at /home/jiaming/slither_fp_files/out15960.sol(856)

[33mWarning[0m for UnrestrictedWrite in contract 'AKCCrowdsale':
    |      totalTokensSold = totalTokensSold.add(amount);
    |      totalCollectedWei = totalCollectedWei.add(sum);
  > |      steps[currentStep].tokensSold = steps[currentStep].tokensSold.add(amount);
    |      steps[currentStep].collectedWei = steps[currentStep].collectedWei.add(sum);
    |
  at /home/jiaming/slither_fp_files/out15960.sol(857)

[33mWarning[0m for UnrestrictedWrite in contract 'AKCCrowdsale':
    |      totalCollectedWei = totalCollectedWei.add(sum);
    |      steps[currentStep].tokensSold = steps[currentStep].tokensSold.add(amount);
  > |      steps[currentStep].collectedWei = steps[currentStep].collectedWei.add(sum);
    |
    |      /* Mint and Send AKC */
  at /home/jiaming/slither_fp_files/out15960.sol(858)

[33mWarning[0m for UnrestrictedWrite in contract 'AKCCrowdsale':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |    emit OwnershipTransferred(owner, newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out15960.sol(678)

[33mWarning[0m for UnrestrictedWrite in contract 'AKCCrowdsale':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        emit Pause();
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(709)

[33mWarning[0m for UnrestrictedWrite in contract 'AKCCrowdsale':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        emit Unpause();
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(717)

[33mWarning[0m for UnrestrictedWrite in contract 'AKCCrowdsale':
    |      /* Transfer the AKC from the contract to the beneficiary's address.*/
    |      token.transfer(beneficiary, token.balanceOf(address(this)));
  > |      crowdsaleClosed = true;
    |      emit CrowdsaleClose();
    |  }
  at /home/jiaming/slither_fp_files/out15960.sol(882)

[33mWarning[0m for LockedEther in contract 'Controlled':
    |
    |
  > |contract Controlled {
    |    /// @notice The address of the controller is the only address that can call
    |    ///  a function with this modifier
  at /home/jiaming/slither_fp_files/out15960.sol(353)

[31mViolation[0m for MissingInputValidation in contract 'Controlled':
    |    /// @notice Changes the controller of the contract
    |    /// @param _newController The new controller of the contract
  > |    function changeController(address _newController) onlyController {
    |        controller = _newController;
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(364)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    |    modifier onlyController { if (msg.sender != controller) revert(); _; }
    |
  > |    address public controller;
    |
    |    constructor() { controller = msg.sender;}
  at /home/jiaming/slither_fp_files/out15960.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out15960.sol(365)

[33mWarning[0m for DAO in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(138)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |}
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/slither_fp_files/out15960.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/slither_fp_files/out15960.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    constructor() public {
  at /home/jiaming/slither_fp_files/out15960.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/slither_fp_files/out15960.sol(130)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        owner = owner_;
    |        emit LogSetOwner(owner);
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        authority = authority_;
    |        emit LogSetAuthority(authority);
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(121)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |}
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/slither_fp_files/out15960.sol(95)

[33mWarning[0m for LockedEther in contract 'DSMath':
    |pragma solidity ^0.4.19;
    |
  > |contract DSMath {
    |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
  at /home/jiaming/slither_fp_files/out15960.sol(3)

[33mWarning[0m for LockedEther in contract 'DSNote':
    |
    |
  > |contract DSNote {
    |    event LogNote(
    |        bytes4   indexed  sig,
  at /home/jiaming/slither_fp_files/out15960.sol(144)

[33mWarning[0m for DAO in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(138)

[33mWarning[0m for LockedEther in contract 'DSStop':
    |
    |
  > |contract DSStop is DSNote, DSAuth {
    |
    |    bool public stopped;
  at /home/jiaming/slither_fp_files/out15960.sol(170)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/slither_fp_files/out15960.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    constructor() public {
  at /home/jiaming/slither_fp_files/out15960.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/slither_fp_files/out15960.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSStop is DSNote, DSAuth {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/slither_fp_files/out15960.sol(172)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        _;
    |    }
  > |    function stop() public auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        stopped = true;
    |    }
  > |    function start() public auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(181)

[33mWarning[0m for UnhandledException in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |        auth
    |    {
  > |        owner = owner_;
    |        emit LogSetOwner(owner);
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |        auth
    |    {
  > |        authority = authority_;
    |        emit LogSetAuthority(authority);
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/slither_fp_files/out15960.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/slither_fp_files/out15960.sol(182)

[33mWarning[0m for DAO in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(138)

[33mWarning[0m for LockedEther in contract 'DSToken':
    |}
    |
  > |contract DSToken is DSTokenBase(0), DSStop {
    |
    |    bytes32  public  symbol;
  at /home/jiaming/slither_fp_files/out15960.sol(236)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) public view returns (uint) {
    |        return _balances[src];
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(200)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) public view returns (uint) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(203)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function transfer(address dst, uint wad) public returns (bool) {
    |        return transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(207)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    event Burn(address indexed guy, uint wad);
    |
  > |    function approve(address guy) public stoppable returns (bool) {
    |        return super.approve(guy, uint(-1));
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(248)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function approve(address guy, uint wad) public stoppable returns (bool) {
    |        return super.approve(guy, wad);
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(252)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function transferFrom(address src, address dst, uint wad)
    |        public
    |        stoppable
  at /home/jiaming/slither_fp_files/out15960.sol(256)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function push(address dst, uint wad) public {
    |        transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(273)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        transferFrom(src, msg.sender, wad);
    |    }
  > |    function move(address src, address dst, uint wad) public {
    |        transferFrom(src, dst, wad);
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(279)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/slither_fp_files/out15960.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    constructor() public {
  at /home/jiaming/slither_fp_files/out15960.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/slither_fp_files/out15960.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSStop is DSNote, DSAuth {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/slither_fp_files/out15960.sol(172)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        _;
    |    }
  > |    function stop() public auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        stopped = true;
    |    }
  > |    function start() public auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(181)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return _supply;
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(197)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function approve(address guy, uint wad) public returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/slither_fp_files/out15960.sol(227)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSToken is DSTokenBase(0), DSStop {
    |
  > |    bytes32  public  symbol;
    |    uint256  public  decimals = 18; // standard token precision. override to customize
    |
  at /home/jiaming/slither_fp_files/out15960.sol(238)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |    bytes32  public  symbol;
  > |    uint256  public  decimals = 18; // standard token precision. override to customize
    |
    |    constructor(bytes32 symbol_) public {
  at /home/jiaming/slither_fp_files/out15960.sol(239)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |    // Optional token name
  > |    bytes32   public  name = "";
    |
    |    function setName(bytes32 name_) public auth {
  at /home/jiaming/slither_fp_files/out15960.sol(305)

[33mWarning[0m for UnhandledException in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        auth
    |    {
  > |        owner = owner_;
    |        emit LogSetOwner(owner);
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        auth
    |    {
  > |        authority = authority_;
    |        emit LogSetAuthority(authority);
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/slither_fp_files/out15960.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/slither_fp_files/out15960.sol(182)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        emit Approval(msg.sender, guy, wad);
  at /home/jiaming/slither_fp_files/out15960.sol(228)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function mint(address guy, uint wad) public auth stoppable {
  > |        _balances[guy] = add(_balances[guy], wad);
    |        _supply = add(_supply, wad);
    |        emit Mint(guy, wad);
  at /home/jiaming/slither_fp_files/out15960.sol(290)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    function mint(address guy, uint wad) public auth stoppable {
    |        _balances[guy] = add(_balances[guy], wad);
  > |        _supply = add(_supply, wad);
    |        emit Mint(guy, wad);
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(291)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function setName(bytes32 name_) public auth {
  > |        name = name_;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out15960.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        emit Approval(msg.sender, guy, wad);
  at /home/jiaming/slither_fp_files/out15960.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |    {
    |        if (src != msg.sender && _approvals[src][msg.sender] != uint(-1)) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/slither_fp_files/out15960.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/slither_fp_files/out15960.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |        _balances[src] = sub(_balances[src], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |
    |        emit Transfer(src, dst, wad);
  at /home/jiaming/slither_fp_files/out15960.sol(266)

[33mWarning[0m for LockedEther in contract 'DSTokenBase':
    |}
    |
  > |contract DSTokenBase is ERC20, DSMath {
    |    uint256                                            _supply;
    |    mapping (address => uint256)                       _balances;
  at /home/jiaming/slither_fp_files/out15960.sol(187)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) public view returns (uint) {
    |        return _balances[src];
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(200)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) public view returns (uint) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(203)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function transfer(address dst, uint wad) public returns (bool) {
    |        return transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(207)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function approve(address guy, uint wad) public returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/slither_fp_files/out15960.sol(227)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return _supply;
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(197)

[31mViolation[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/slither_fp_files/out15960.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |    {
    |        if (src != msg.sender) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/slither_fp_files/out15960.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/slither_fp_files/out15960.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        emit Approval(msg.sender, guy, wad);
  at /home/jiaming/slither_fp_files/out15960.sol(228)

[33mWarning[0m for LockedEther in contract 'ERC20Events':
    |}
    |
  > |contract ERC20Events {
    |    event Approval(address indexed src, address indexed guy, uint wad);
    |    event Transfer(address indexed src, address indexed dst, uint wad);
  at /home/jiaming/slither_fp_files/out15960.sol(71)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/slither_fp_files/out15960.sol(651)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/slither_fp_files/out15960.sol(652)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address that transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/slither_fp_files/out15960.sol(676)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |    emit OwnershipTransferred(owner, newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out15960.sol(678)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | *
    | */
  > |contract Pausable is Ownable {
    |    bool public paused = false;
    |
  at /home/jiaming/slither_fp_files/out15960.sol(689)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/slither_fp_files/out15960.sol(652)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address that transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/slither_fp_files/out15960.sol(676)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Pausable is Ownable {
  > |    bool public paused = false;
    |
    |    event Pause();
  at /home/jiaming/slither_fp_files/out15960.sol(690)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev Set paused to true.
    |     */
  > |    function pause() onlyOwner whenNotPaused public {
    |        paused = true;
    |        emit Pause();
  at /home/jiaming/slither_fp_files/out15960.sol(708)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev Set paused to false.
    |     */
  > |    function unpause() onlyOwner whenPaused public {
    |        paused = false;
    |        emit Unpause();
  at /home/jiaming/slither_fp_files/out15960.sol(716)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |    emit OwnershipTransferred(owner, newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out15960.sol(678)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        emit Pause();
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(709)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        emit Unpause();
    |    }
  at /home/jiaming/slither_fp_files/out15960.sol(717)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error.
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/slither_fp_files/out15960.sol(619)

[33mWarning[0m for DAOConstantGas in contract 'Withdrawable':
    |        require(address(this).balance >= _value);
    |
  > |        _to.transfer(_value);
    |
    |        return true;
  at /home/jiaming/slither_fp_files/out15960.sol(737)

[33mWarning[0m for LockedEther in contract 'Withdrawable':
    | *
    | */
  > |contract Withdrawable is Ownable {
    |    /**
    |    * @dev withdraw Ether from contract
  at /home/jiaming/slither_fp_files/out15960.sol(727)

[31mViolation[0m for MissingInputValidation in contract 'Withdrawable':
    |    * @param _value The amount to be transferred.
    |    */
  > |    function withdrawTokens(ERC20 _token, address _to, uint _value) onlyOwner public returns(bool) {
    |        require(_to != address(0));
    |
  at /home/jiaming/slither_fp_files/out15960.sol(748)

[33mWarning[0m for MissingInputValidation in contract 'Withdrawable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/slither_fp_files/out15960.sol(652)

[33mWarning[0m for MissingInputValidation in contract 'Withdrawable':
    |   * @param newOwner The address that transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/slither_fp_files/out15960.sol(676)

[33mWarning[0m for MissingInputValidation in contract 'Withdrawable':
    |    * @param _value The amount to be transferred.
    |    */
  > |    function withdrawEther(address _to, uint _value) onlyOwner public returns(bool) {
    |        require(_to != address(0));
    |        require(address(this).balance >= _value);
  at /home/jiaming/slither_fp_files/out15960.sol(733)

[33mWarning[0m for TODAmount in contract 'Withdrawable':
    |        require(address(this).balance >= _value);
    |
  > |        _to.transfer(_value);
    |
    |        return true;
  at /home/jiaming/slither_fp_files/out15960.sol(737)

[33mWarning[0m for TODReceiver in contract 'Withdrawable':
    |        require(address(this).balance >= _value);
    |
  > |        _to.transfer(_value);
    |
    |        return true;
  at /home/jiaming/slither_fp_files/out15960.sol(737)

[33mWarning[0m for UnhandledException in contract 'Withdrawable':
    |        require(address(this).balance >= _value);
    |
  > |        _to.transfer(_value);
    |
    |        return true;
  at /home/jiaming/slither_fp_files/out15960.sol(737)

[33mWarning[0m for UnhandledException in contract 'Withdrawable':
    |        require(_to != address(0));
    |
  > |        return _token.transfer(_to, _value);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out15960.sol(751)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Withdrawable':
    |        require(_to != address(0));
    |
  > |        return _token.transfer(_to, _value);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out15960.sol(751)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Withdrawable':
    |        require(address(this).balance >= _value);
    |
  > |        _to.transfer(_value);
    |
    |        return true;
  at /home/jiaming/slither_fp_files/out15960.sol(737)

[33mWarning[0m for UnrestrictedWrite in contract 'Withdrawable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |    emit OwnershipTransferred(owner, newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out15960.sol(678)


