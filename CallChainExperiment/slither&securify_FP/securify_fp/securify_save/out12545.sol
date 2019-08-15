Processing contract: /home/jiaming/slither_fp_files/out12545.sol:Donations
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out12545.sol:ERC20Interface
[31mViolation[0m for DAOConstantGas in contract 'Donations':
    |            _distributeHorse();
    |        if(_balances[msg.sender] > 0) {
  > |            msg.sender.transfer(_balances[msg.sender]);
    |            _balances[msg.sender] = 0;
    |        }
  at /home/jiaming/slither_fp_files/out12545.sol(97)

[33mWarning[0m for LockedEther in contract 'Donations':
    |}
    |
  > |contract Donations {
    |    struct Project
    |    {
  at /home/jiaming/slither_fp_files/out12545.sol(8)

[31mViolation[0m for MissingInputValidation in contract 'Donations':
    |        uint256 Current;
    |    }
  > |    mapping(uint16 => Project) public projects;
    |    address owner;
    |    uint8 public projectsCount;
  at /home/jiaming/slither_fp_files/out12545.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'Donations':
    |    }
    |*/    
  > |    function addProject(uint256 target) external
    |    onlyOwner()
    |    returns (uint16) {
  at /home/jiaming/slither_fp_files/out12545.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'Donations':
    |    mapping(uint16 => Project) public projects;
    |    address owner;
  > |    uint8 public projectsCount;
    |    
    |    address queen;
  at /home/jiaming/slither_fp_files/out12545.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Donations':
    |    }
    |    
  > |    function donateToProject(uint16 id) external payable {
    |        require(id < projectsCount,"project doesnt exist");
    |        require(msg.value > 0,"non null donations only");
  at /home/jiaming/slither_fp_files/out12545.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Donations':
    |    }
    |    
  > |    function withdraw() external {
    |        //check for pure transfer ETH and HORSe donations
    |        _distributeRest();
  at /home/jiaming/slither_fp_files/out12545.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'Donations':
    |    }
    |    
  > |    function checkBalance() external view
    |    onlyCeo() returns (uint256,uint256) {
    |        return (_balances[msg.sender],_balancesHorse[msg.sender]);
  at /home/jiaming/slither_fp_files/out12545.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'Donations':
    |    }
    |
  > |    function _distributeRest() internal {
    |        int rest = int(address(this).balance)
    |        - int(_balances[joker]) 
  at /home/jiaming/slither_fp_files/out12545.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'Donations':
    |    }
    |    
  > |    function _distribute() private {
    |        uint256 parts = toDistribute / 100;
    |        uint256 jokerDue = parts * 50;
  at /home/jiaming/slither_fp_files/out12545.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'Donations':
    |    }
    |
  > |    function _distributeHorse() private {
    |        uint256 parts = toDistributeHorse / 100;
    |        uint256 jokerDue = parts * 50;
  at /home/jiaming/slither_fp_files/out12545.sol(152)

[33mWarning[0m for MissingInputValidation in contract 'Donations':
    |    }
    | */   
  > |    function _isCeo(address addr) internal view returns (bool) {
    |        return ((addr == queen) || (addr == joker) || (addr == knight) || (addr == paladin));
    |    }
  at /home/jiaming/slither_fp_files/out12545.sol(178)

[33mWarning[0m for TODReceiver in contract 'Donations':
    |            _distributeHorse();
    |        if(_balances[msg.sender] > 0) {
  > |            msg.sender.transfer(_balances[msg.sender]);
    |            _balances[msg.sender] = 0;
    |        }
  at /home/jiaming/slither_fp_files/out12545.sol(97)

[33mWarning[0m for UnhandledException in contract 'Donations':
    |            _distributeHorse();
    |        if(_balances[msg.sender] > 0) {
  > |            msg.sender.transfer(_balances[msg.sender]);
    |            _balances[msg.sender] = 0;
    |        }
  at /home/jiaming/slither_fp_files/out12545.sol(97)

[33mWarning[0m for UnhandledException in contract 'Donations':
    |
    |        if(_balancesHorse[msg.sender] > 0) {
  > |            horseToken.transfer(msg.sender,_balancesHorse[msg.sender]);
    |            _balancesHorse[msg.sender] = 0;
    |        }
  at /home/jiaming/slither_fp_files/out12545.sol(102)

[33mWarning[0m for UnhandledException in contract 'Donations':
    |        }
    |
  > |        uint256 ownedHorse = horseToken.balanceOf(address(this));
    |        if(ownedHorse > 0) {
    |            int restHorse = int(ownedHorse)
  at /home/jiaming/slither_fp_files/out12545.sol(123)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Donations':
    |
    |        if(_balancesHorse[msg.sender] > 0) {
  > |            horseToken.transfer(msg.sender,_balancesHorse[msg.sender]);
    |            _balancesHorse[msg.sender] = 0;
    |        }
  at /home/jiaming/slither_fp_files/out12545.sol(102)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Donations':
    |        }
    |
  > |        uint256 ownedHorse = horseToken.balanceOf(address(this));
    |        if(ownedHorse > 0) {
    |            int restHorse = int(ownedHorse)
  at /home/jiaming/slither_fp_files/out12545.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'Donations':
    |        require(id < projectsCount,"project doesnt exist");
    |        require(msg.value > 0,"non null donations only");
  > |        projects[id].Current = projects[id].Current + msg.value;
    |        toDistribute = toDistribute + msg.value;
    |    }
  at /home/jiaming/slither_fp_files/out12545.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'Donations':
    |        require(msg.value > 0,"non null donations only");
    |        projects[id].Current = projects[id].Current + msg.value;
  > |        toDistribute = toDistribute + msg.value;
    |    }
    |    
  at /home/jiaming/slither_fp_files/out12545.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'Donations':
    |        - int(toDistribute);
    |        if(rest > 0) {
  > |            toDistribute = toDistribute + uint256(rest);
    |        }
    |
  at /home/jiaming/slither_fp_files/out12545.sol(120)

[31mViolation[0m for UnrestrictedWrite in contract 'Donations':
    |
    |            if(restHorse > 0) {
  > |                toDistributeHorse = toDistributeHorse + uint256(restHorse);
    |            }
    |        }
  at /home/jiaming/slither_fp_files/out12545.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'Donations':
    |        uint256 paladinDue = parts * 10;
    |
  > |        _balances[joker] = _balances[joker] + jokerDue;
    |        _balances[knight] = _balances[knight] + knightDue;
    |        _balances[paladin] = _balances[paladin] + paladinDue;
  at /home/jiaming/slither_fp_files/out12545.sol(144)

[31mViolation[0m for UnrestrictedWrite in contract 'Donations':
    |
    |        _balances[joker] = _balances[joker] + jokerDue;
  > |        _balances[knight] = _balances[knight] + knightDue;
    |        _balances[paladin] = _balances[paladin] + paladinDue;
    |        _balances[queen] = _balances[queen] + (toDistribute - jokerDue - knightDue - paladinDue);
  at /home/jiaming/slither_fp_files/out12545.sol(145)

[31mViolation[0m for UnrestrictedWrite in contract 'Donations':
    |        _balances[joker] = _balances[joker] + jokerDue;
    |        _balances[knight] = _balances[knight] + knightDue;
  > |        _balances[paladin] = _balances[paladin] + paladinDue;
    |        _balances[queen] = _balances[queen] + (toDistribute - jokerDue - knightDue - paladinDue);
    |        
  at /home/jiaming/slither_fp_files/out12545.sol(146)

[31mViolation[0m for UnrestrictedWrite in contract 'Donations':
    |        _balances[knight] = _balances[knight] + knightDue;
    |        _balances[paladin] = _balances[paladin] + paladinDue;
  > |        _balances[queen] = _balances[queen] + (toDistribute - jokerDue - knightDue - paladinDue);
    |        
    |        toDistribute = 0;
  at /home/jiaming/slither_fp_files/out12545.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'Donations':
    |        _balances[queen] = _balances[queen] + (toDistribute - jokerDue - knightDue - paladinDue);
    |        
  > |        toDistribute = 0;
    |    }
    |
  at /home/jiaming/slither_fp_files/out12545.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'Donations':
    |        uint256 paladinDue = parts * 10;
    |
  > |        _balancesHorse[joker] = _balancesHorse[joker] + jokerDue;
    |        _balancesHorse[knight] = _balancesHorse[knight] + knightDue;
    |        _balancesHorse[paladin] = _balancesHorse[paladin] + paladinDue;
  at /home/jiaming/slither_fp_files/out12545.sol(158)

[31mViolation[0m for UnrestrictedWrite in contract 'Donations':
    |
    |        _balancesHorse[joker] = _balancesHorse[joker] + jokerDue;
  > |        _balancesHorse[knight] = _balancesHorse[knight] + knightDue;
    |        _balancesHorse[paladin] = _balancesHorse[paladin] + paladinDue;
    |        _balancesHorse[queen] = _balancesHorse[queen] + (toDistributeHorse - jokerDue - knightDue - paladinDue);
  at /home/jiaming/slither_fp_files/out12545.sol(159)

[31mViolation[0m for UnrestrictedWrite in contract 'Donations':
    |        _balancesHorse[joker] = _balancesHorse[joker] + jokerDue;
    |        _balancesHorse[knight] = _balancesHorse[knight] + knightDue;
  > |        _balancesHorse[paladin] = _balancesHorse[paladin] + paladinDue;
    |        _balancesHorse[queen] = _balancesHorse[queen] + (toDistributeHorse - jokerDue - knightDue - paladinDue);
    |
  at /home/jiaming/slither_fp_files/out12545.sol(160)

[31mViolation[0m for UnrestrictedWrite in contract 'Donations':
    |        _balancesHorse[knight] = _balancesHorse[knight] + knightDue;
    |        _balancesHorse[paladin] = _balancesHorse[paladin] + paladinDue;
  > |        _balancesHorse[queen] = _balancesHorse[queen] + (toDistributeHorse - jokerDue - knightDue - paladinDue);
    |
    |        toDistributeHorse = 0;
  at /home/jiaming/slither_fp_files/out12545.sol(161)

[31mViolation[0m for UnrestrictedWrite in contract 'Donations':
    |        _balancesHorse[queen] = _balancesHorse[queen] + (toDistributeHorse - jokerDue - knightDue - paladinDue);
    |
  > |        toDistributeHorse = 0;
    |    }
    | /*   
  at /home/jiaming/slither_fp_files/out12545.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'Donations':
    |        if(_balances[msg.sender] > 0) {
    |            msg.sender.transfer(_balances[msg.sender]);
  > |            _balances[msg.sender] = 0;
    |        }
    |
  at /home/jiaming/slither_fp_files/out12545.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'Donations':
    |        if(_balancesHorse[msg.sender] > 0) {
    |            horseToken.transfer(msg.sender,_balancesHorse[msg.sender]);
  > |            _balancesHorse[msg.sender] = 0;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out12545.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'Donations':
    |    returns (uint16) {
    |        uint16 newid = uint16(projectsCount);
  > |        projectsCount = projectsCount + 1;
    |        Project storage proj = projects[newid];
    |        proj.Id = newid;
  at /home/jiaming/slither_fp_files/out12545.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Donations':
    |        projectsCount = projectsCount + 1;
    |        Project storage proj = projects[newid];
  > |        proj.Id = newid;
    |        proj.Target = target;
    |        return newid;
  at /home/jiaming/slither_fp_files/out12545.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Donations':
    |        Project storage proj = projects[newid];
    |        proj.Id = newid;
  > |        proj.Target = target;
    |        return newid;
    |    }
  at /home/jiaming/slither_fp_files/out12545.sol(74)


