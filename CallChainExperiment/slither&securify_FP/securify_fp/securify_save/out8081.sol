Processing contract: /home/jiaming/slither_fp_files/out8081.sol:AtomaxKyc
Processing contract: /home/jiaming/slither_fp_files/out8081.sol:AtomaxKycInterface
Processing contract: /home/jiaming/slither_fp_files/out8081.sol:MilestoneSystem
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8081.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8081.sol:RC_KYC_ADV
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8081.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8081.sol:TokedoDaico
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8081.sol:tokenInterface
[33mWarning[0m for DAOConstantGas in contract 'MilestoneSystem':
    |		    money = address(this).balance;
    |		}
  > |        msg.sender.transfer(money);
    |        
    |        emit Refund(msg.sender, money);
  at /home/jiaming/slither_fp_files/out8081.sol(481)

[33mWarning[0m for DAOConstantGas in contract 'MilestoneSystem':
    |		}
    |		
  > |        msg.sender.transfer(value);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out8081.sol(503)

[33mWarning[0m for LockedEther in contract 'MilestoneSystem':
    |}
    |
  > |contract MilestoneSystem {
    |    using SafeMath for uint256;
    |    
  at /home/jiaming/slither_fp_files/out8081.sol(344)

[31mViolation[0m for TODReceiver in contract 'MilestoneSystem':
    |        if( etherReceived < funds[0]  ) {
    |            require( wallet != address(0), "wallet != address(0)" );
  > |            wallet.transfer(msg.value);
    |        }
    |        
  at /home/jiaming/slither_fp_files/out8081.sol(522)

[33mWarning[0m for TODReceiver in contract 'MilestoneSystem':
    |		    money = address(this).balance;
    |		}
  > |        msg.sender.transfer(money);
    |        
    |        emit Refund(msg.sender, money);
  at /home/jiaming/slither_fp_files/out8081.sol(481)

[33mWarning[0m for TODReceiver in contract 'MilestoneSystem':
    |		}
    |		
  > |        msg.sender.transfer(value);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out8081.sol(503)

[33mWarning[0m for UnhandledException in contract 'MilestoneSystem':
    |    
    |    modifier onlyTokenSaleOwner() {
  > |        require(msg.sender == tokenSaleContract.owner(), "msg.sender == tokenSaleContract.owner()" );
    |        _;
    |    }
  at /home/jiaming/slither_fp_files/out8081.sol(389)

[33mWarning[0m for UnhandledException in contract 'MilestoneSystem':
    |	function receiveApproval( address _from, uint _value, bytes _data) public {
    |	    require(msg.sender == address(tokenContract), "msg.sender == address(tokenContract)");
  > |		require(msg.sender.call(bytes4(keccak256("transferFrom(address,address,uint256)")), _from, this, _value));
    |        distrust( _from, _value, _data);
    |    }
  at /home/jiaming/slither_fp_files/out8081.sol(433)

[33mWarning[0m for UnhandledException in contract 'MilestoneSystem':
    |        
    |        tokenDistrusted[_step] = tokenDistrusted[_step].sub(amount);
  > |        tokenContract.transfer(msg.sender, amount);
    |        
    |        emit Trust(msg.sender, amount);
  at /home/jiaming/slither_fp_files/out8081.sol(447)

[33mWarning[0m for UnhandledException in contract 'MilestoneSystem':
    |        balance[msg.sender][step] = 0;
    |        
  > |        tokenContract.burn(tknAmount);
    |        
    |        uint256 tknTot = tokenDistrusted[step];
  at /home/jiaming/slither_fp_files/out8081.sol(472)

[33mWarning[0m for UnhandledException in contract 'MilestoneSystem':
    |		    money = address(this).balance;
    |		}
  > |        msg.sender.transfer(money);
    |        
    |        emit Refund(msg.sender, money);
  at /home/jiaming/slither_fp_files/out8081.sol(481)

[33mWarning[0m for UnhandledException in contract 'MilestoneSystem':
    |		}
    |		
  > |        msg.sender.transfer(value);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out8081.sol(503)

[33mWarning[0m for UnhandledException in contract 'MilestoneSystem':
    |    function ownerWithdrawTokens(address _tokenContract, address to, uint256 value) public onlyTokenSaleOwner returns (bool) { //for airdrop reason to distribute to Tokedo Token Holder
    |        require( _tokenContract != address(tokenContract), "_tokenContract != address(tokenContract)"); // the owner can withdraw tokens except Tokedo Tokens
  > |        return tokenInterface(_tokenContract).transfer(to, value);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out8081.sol(508)

[33mWarning[0m for UnhandledException in contract 'MilestoneSystem':
    |        if( etherReceived < funds[0]  ) {
    |            require( wallet != address(0), "wallet != address(0)" );
  > |            wallet.transfer(msg.value);
    |        }
    |        
  at /home/jiaming/slither_fp_files/out8081.sol(522)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MilestoneSystem':
    |    
    |    modifier onlyTokenSaleOwner() {
  > |        require(msg.sender == tokenSaleContract.owner(), "msg.sender == tokenSaleContract.owner()" );
    |        _;
    |    }
  at /home/jiaming/slither_fp_files/out8081.sol(389)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MilestoneSystem':
    |	function receiveApproval( address _from, uint _value, bytes _data) public {
    |	    require(msg.sender == address(tokenContract), "msg.sender == address(tokenContract)");
  > |		require(msg.sender.call(bytes4(keccak256("transferFrom(address,address,uint256)")), _from, this, _value));
    |        distrust( _from, _value, _data);
    |    }
  at /home/jiaming/slither_fp_files/out8081.sol(433)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MilestoneSystem':
    |        
    |        tokenDistrusted[_step] = tokenDistrusted[_step].sub(amount);
  > |        tokenContract.transfer(msg.sender, amount);
    |        
    |        emit Trust(msg.sender, amount);
  at /home/jiaming/slither_fp_files/out8081.sol(447)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MilestoneSystem':
    |        balance[msg.sender][step] = 0;
    |        
  > |        tokenContract.burn(tknAmount);
    |        
    |        uint256 tknTot = tokenDistrusted[step];
  at /home/jiaming/slither_fp_files/out8081.sol(472)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MilestoneSystem':
    |		}
    |		
  > |        msg.sender.transfer(value);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out8081.sol(503)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MilestoneSystem':
    |    function ownerWithdrawTokens(address _tokenContract, address to, uint256 value) public onlyTokenSaleOwner returns (bool) { //for airdrop reason to distribute to Tokedo Token Holder
    |        require( _tokenContract != address(tokenContract), "_tokenContract != address(tokenContract)"); // the owner can withdraw tokens except Tokedo Tokens
  > |        return tokenInterface(_tokenContract).transfer(to, value);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out8081.sol(508)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MilestoneSystem':
    |        if( etherReceived < funds[0]  ) {
    |            require( wallet != address(0), "wallet != address(0)" );
  > |            wallet.transfer(msg.value);
    |        }
    |        
  at /home/jiaming/slither_fp_files/out8081.sol(522)

[33mWarning[0m for UnrestrictedWrite in contract 'MilestoneSystem':
    |        }
    |        
  > |        balance[_from][step] = balance[_from][step].add(_value);
    |        tokenDistrusted[step] = tokenDistrusted[step].add(_value);
    |        
  at /home/jiaming/slither_fp_files/out8081.sol(415)

[33mWarning[0m for UnrestrictedWrite in contract 'MilestoneSystem':
    |        
    |        balance[_from][step] = balance[_from][step].add(_value);
  > |        tokenDistrusted[step] = tokenDistrusted[step].add(_value);
    |        
    |        emit Distrust(msg.sender, _value);
  at /home/jiaming/slither_fp_files/out8081.sol(416)

[33mWarning[0m for UnrestrictedWrite in contract 'MilestoneSystem':
    |        
    |        if( tokenDistrusted[step] > activeSupply && !locked ) {
  > |            locked = true;
    |            endTimeToReturnTokens = now.add(timeframeDeath);
    |            emit Locked();
  at /home/jiaming/slither_fp_files/out8081.sol(421)

[33mWarning[0m for UnrestrictedWrite in contract 'MilestoneSystem':
    |        if( tokenDistrusted[step] > activeSupply && !locked ) {
    |            locked = true;
  > |            endTimeToReturnTokens = now.add(timeframeDeath);
    |            emit Locked();
    |        }
  at /home/jiaming/slither_fp_files/out8081.sol(422)

[33mWarning[0m for UnrestrictedWrite in contract 'MilestoneSystem':
    |        
    |        uint256 amount = balance[msg.sender][_step];
  > |        balance[msg.sender][_step] = 0;
    |        
    |        tokenDistrusted[_step] = tokenDistrusted[_step].sub(amount);
  at /home/jiaming/slither_fp_files/out8081.sol(444)

[33mWarning[0m for UnrestrictedWrite in contract 'MilestoneSystem':
    |        balance[msg.sender][_step] = 0;
    |        
  > |        tokenDistrusted[_step] = tokenDistrusted[_step].sub(amount);
    |        tokenContract.transfer(msg.sender, amount);
    |        
  at /home/jiaming/slither_fp_files/out8081.sol(446)

[33mWarning[0m for UnrestrictedWrite in contract 'MilestoneSystem':
    |        
    |        if( tokenDistrusted[step] <= activeSupply && locked ) {
  > |            locked = false;
    |            endTimeToReturnTokens = 0;
    |            emit Unlocked();
  at /home/jiaming/slither_fp_files/out8081.sol(452)

[33mWarning[0m for UnrestrictedWrite in contract 'MilestoneSystem':
    |        if( tokenDistrusted[step] <= activeSupply && locked ) {
    |            locked = false;
  > |            endTimeToReturnTokens = 0;
    |            emit Unlocked();
    |        }
  at /home/jiaming/slither_fp_files/out8081.sol(453)

[33mWarning[0m for UnrestrictedWrite in contract 'MilestoneSystem':
    |        require( tknAmount > 0 , "tknAmount > 0");
    |        
  > |        balance[msg.sender][step] = 0;
    |        
    |        tokenContract.burn(tknAmount);
  at /home/jiaming/slither_fp_files/out8081.sol(470)

[33mWarning[0m for UnrestrictedWrite in contract 'MilestoneSystem':
    |        }
    |        
  > |        etherReceived = etherReceived.add(msg.value);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out8081.sol(525)

[33mWarning[0m for UnrestrictedWrite in contract 'MilestoneSystem':
    |        
    |        uint256 amountApplied = funds[step];
  > |        funds[step] = 0;
    |		step = step+1;
    |		
  at /home/jiaming/slither_fp_files/out8081.sol(493)

[33mWarning[0m for UnrestrictedWrite in contract 'MilestoneSystem':
    |        uint256 amountApplied = funds[step];
    |        funds[step] = 0;
  > |		step = step+1;
    |		
    |		uint256 value;
  at /home/jiaming/slither_fp_files/out8081.sol(494)

[33mWarning[0m for UnrestrictedWrite in contract 'MilestoneSystem':
    |    function setWallet(address _wallet) public onlyTokenSaleOwner returns(bool) {
    |        require( _wallet != address(0), "_wallet != address(0)" );
  > |        wallet = _wallet;
    |		return true;
    |    }
  at /home/jiaming/slither_fp_files/out8081.sol(513)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |	address public owner;
    |	address public newOwner;
  at /home/jiaming/slither_fp_files/out8081.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |	address public owner;
    |	address public newOwner;
    |
  at /home/jiaming/slither_fp_files/out8081.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |	address public owner;
  > |	address public newOwner;
    |
    |	event OwnershipTransferred(address indexed oldOwner, address indexed newOwner);
  at /home/jiaming/slither_fp_files/out8081.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |	}
    |
  > |	function transferOwnership(address _newOwner) public onlyOwner {
    |		require(address(0) != _newOwner, "address(0) != _newOwner");
    |		newOwner = _newOwner;
  at /home/jiaming/slither_fp_files/out8081.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |	}
    |
  > |	function acceptOwnership() public {
    |		require(msg.sender == newOwner, "msg.sender == newOwner");
    |		emit OwnershipTransferred(owner, msg.sender);
  at /home/jiaming/slither_fp_files/out8081.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |	function transferOwnership(address _newOwner) public onlyOwner {
    |		require(address(0) != _newOwner, "address(0) != _newOwner");
  > |		newOwner = _newOwner;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8081.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |		require(msg.sender == newOwner, "msg.sender == newOwner");
    |		emit OwnershipTransferred(owner, msg.sender);
  > |		owner = msg.sender;
    |		newOwner = address(0);
    |	}
  at /home/jiaming/slither_fp_files/out8081.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |		emit OwnershipTransferred(owner, msg.sender);
    |		owner = msg.sender;
  > |		newOwner = address(0);
    |	}
    |}
  at /home/jiaming/slither_fp_files/out8081.sol(54)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.24;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
    |    if (a == 0) {
  at /home/jiaming/slither_fp_files/out8081.sol(3)

[33mWarning[0m for DAO in contract 'TokedoDaico':
    |    
    |    function forwardEther() onlyRC payable public returns(bool) {
  > |        require(milestoneSystem.call.value(msg.value)(), "wallet.call.value(msg.value)()");
    |        return true;
    |    }
  at /home/jiaming/slither_fp_files/out8081.sol(320)

[33mWarning[0m for LockedEther in contract 'TokedoDaico':
    |}
    |
  > |contract TokedoDaico is Ownable {
    |    using SafeMath for uint256;
    |    
  at /home/jiaming/slither_fp_files/out8081.sol(296)

[31mViolation[0m for MissingInputValidation in contract 'TokedoDaico':
    |    uint256 public tokenPrice;
    |
  > |    mapping(address => bool) public rc;
    |
    |    constructor(address _wallet, address _tokenAddress, uint256[] _time, uint256[] _funds, uint256 _tokenPrice, uint256 _activeSupply) public {
  at /home/jiaming/slither_fp_files/out8081.sol(305)

[31mViolation[0m for MissingInputValidation in contract 'TokedoDaico':
    |    }
    |    
  > |	function sendTokens(address _buyer, uint256 _amount) onlyRC public returns(bool) {
    |        return tokenContract.transfer(_buyer, _amount);
    |    }
  at /home/jiaming/slither_fp_files/out8081.sol(324)

[31mViolation[0m for MissingInputValidation in contract 'TokedoDaico':
    |    event NewRC(address contr);
    |    
  > |    function addRC(address _rc) onlyOwner public {
    |        rc[ _rc ]  = true;
    |        emit NewRC(_rc);
  at /home/jiaming/slither_fp_files/out8081.sol(330)

[31mViolation[0m for MissingInputValidation in contract 'TokedoDaico':
    |    }
    |    
  > |    function withdrawTokens(address to, uint256 value) public onlyOwner returns (bool) {
    |        return tokenContract.transfer(to, value);
    |    }
  at /home/jiaming/slither_fp_files/out8081.sol(335)

[31mViolation[0m for MissingInputValidation in contract 'TokedoDaico':
    |    }
    |    
  > |    function setTokenContract(address _tokenContract) public onlyOwner {
    |        tokenContract = tokenInterface(_tokenContract);
    |    }
  at /home/jiaming/slither_fp_files/out8081.sol(339)

[33mWarning[0m for MissingInputValidation in contract 'TokedoDaico':
    |
    |contract Ownable {
  > |	address public owner;
    |	address public newOwner;
    |
  at /home/jiaming/slither_fp_files/out8081.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'TokedoDaico':
    |contract Ownable {
    |	address public owner;
  > |	address public newOwner;
    |
    |	event OwnershipTransferred(address indexed oldOwner, address indexed newOwner);
  at /home/jiaming/slither_fp_files/out8081.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'TokedoDaico':
    |	}
    |
  > |	function transferOwnership(address _newOwner) public onlyOwner {
    |		require(address(0) != _newOwner, "address(0) != _newOwner");
    |		newOwner = _newOwner;
  at /home/jiaming/slither_fp_files/out8081.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'TokedoDaico':
    |	}
    |
  > |	function acceptOwnership() public {
    |		require(msg.sender == newOwner, "msg.sender == newOwner");
    |		emit OwnershipTransferred(owner, msg.sender);
  at /home/jiaming/slither_fp_files/out8081.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'TokedoDaico':
    |    using SafeMath for uint256;
    |    
  > |    tokenInterface public tokenContract;
    |    
    |    address public milestoneSystem;
  at /home/jiaming/slither_fp_files/out8081.sol(299)

[33mWarning[0m for MissingInputValidation in contract 'TokedoDaico':
    |    tokenInterface public tokenContract;
    |    
  > |    address public milestoneSystem;
    |	uint256 public decimals;
    |    uint256 public tokenPrice;
  at /home/jiaming/slither_fp_files/out8081.sol(301)

[33mWarning[0m for MissingInputValidation in contract 'TokedoDaico':
    |    
    |    address public milestoneSystem;
  > |	uint256 public decimals;
    |    uint256 public tokenPrice;
    |
  at /home/jiaming/slither_fp_files/out8081.sol(302)

[33mWarning[0m for MissingInputValidation in contract 'TokedoDaico':
    |    address public milestoneSystem;
    |	uint256 public decimals;
  > |    uint256 public tokenPrice;
    |
    |    mapping(address => bool) public rc;
  at /home/jiaming/slither_fp_files/out8081.sol(303)

[33mWarning[0m for MissingInputValidation in contract 'TokedoDaico':
    |    }
    |    
  > |    function forwardEther() onlyRC payable public returns(bool) {
    |        require(milestoneSystem.call.value(msg.value)(), "wallet.call.value(msg.value)()");
    |        return true;
  at /home/jiaming/slither_fp_files/out8081.sol(319)

[33mWarning[0m for TODReceiver in contract 'TokedoDaico':
    |    
    |    function forwardEther() onlyRC payable public returns(bool) {
  > |        require(milestoneSystem.call.value(msg.value)(), "wallet.call.value(msg.value)()");
    |        return true;
    |    }
  at /home/jiaming/slither_fp_files/out8081.sol(320)

[33mWarning[0m for UnhandledException in contract 'TokedoDaico':
    |    
    |    function forwardEther() onlyRC payable public returns(bool) {
  > |        require(milestoneSystem.call.value(msg.value)(), "wallet.call.value(msg.value)()");
    |        return true;
    |    }
  at /home/jiaming/slither_fp_files/out8081.sol(320)

[33mWarning[0m for UnhandledException in contract 'TokedoDaico':
    |    
    |	function sendTokens(address _buyer, uint256 _amount) onlyRC public returns(bool) {
  > |        return tokenContract.transfer(_buyer, _amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out8081.sol(325)

[33mWarning[0m for UnhandledException in contract 'TokedoDaico':
    |    
    |    function withdrawTokens(address to, uint256 value) public onlyOwner returns (bool) {
  > |        return tokenContract.transfer(to, value);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out8081.sol(336)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokedoDaico':
    |    
    |	function sendTokens(address _buyer, uint256 _amount) onlyRC public returns(bool) {
  > |        return tokenContract.transfer(_buyer, _amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out8081.sol(325)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokedoDaico':
    |    
    |    function withdrawTokens(address to, uint256 value) public onlyOwner returns (bool) {
  > |        return tokenContract.transfer(to, value);
    |    }
    |    
  at /home/jiaming/slither_fp_files/out8081.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'TokedoDaico':
    |	function transferOwnership(address _newOwner) public onlyOwner {
    |		require(address(0) != _newOwner, "address(0) != _newOwner");
  > |		newOwner = _newOwner;
    |	}
    |
  at /home/jiaming/slither_fp_files/out8081.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'TokedoDaico':
    |		require(msg.sender == newOwner, "msg.sender == newOwner");
    |		emit OwnershipTransferred(owner, msg.sender);
  > |		owner = msg.sender;
    |		newOwner = address(0);
    |	}
  at /home/jiaming/slither_fp_files/out8081.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'TokedoDaico':
    |		emit OwnershipTransferred(owner, msg.sender);
    |		owner = msg.sender;
  > |		newOwner = address(0);
    |	}
    |}
  at /home/jiaming/slither_fp_files/out8081.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'TokedoDaico':
    |    
    |    function addRC(address _rc) onlyOwner public {
  > |        rc[ _rc ]  = true;
    |        emit NewRC(_rc);
    |    }
  at /home/jiaming/slither_fp_files/out8081.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'TokedoDaico':
    |    
    |    function setTokenContract(address _tokenContract) public onlyOwner {
  > |        tokenContract = tokenInterface(_tokenContract);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out8081.sol(340)


