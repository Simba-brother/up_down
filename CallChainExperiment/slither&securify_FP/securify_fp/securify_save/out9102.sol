Processing contract: /home/jiaming/slither_fp_files/out9102.sol:HourglassInterface
Processing contract: /home/jiaming/slither_fp_files/out9102.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9102.sol:P3DRaffle
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9102.sol:SPASMInterface
Processing contract: /home/jiaming/slither_fp_files/out9102.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/slither_fp_files/out9102.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/slither_fp_files/out9102.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/slither_fp_files/out9102.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/slither_fp_files/out9102.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/slither_fp_files/out9102.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/slither_fp_files/out9102.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/slither_fp_files/out9102.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out9102.sol(66)

[31mViolation[0m for DAO in contract 'P3DRaffle':
    |function devfeetodev () public {
    |    
  > |    SPASM_.disburse.value(devfee)();
    |    devfee = 0;
    |}
  at /home/jiaming/slither_fp_files/out9102.sol(184)

[33mWarning[0m for DAO in contract 'P3DRaffle':
    |        }
    |    nextlotnr += i;
  > |    P3Dcontract_.buy.value(msg.value)(masternode);
    |}
    |function fetchdivstopot () public{
  at /home/jiaming/slither_fp_files/out9102.sol(169)

[31mViolation[0m for DAOConstantGas in contract 'P3DRaffle':
    |            Raffles[rafnr].rafflevanity = winner;
    |            if(jackpotdraw == 777){
  > |                winner.transfer(jackpot);
    |                jackpot = 0;
    |            }
  at /home/jiaming/slither_fp_files/out9102.sol(224)

[31mViolation[0m for DAOConstantGas in contract 'P3DRaffle':
    |                jackpot = 0;
    |            }
  > |            winner.transfer(100 finney);
    |            msg.sender.transfer(3 finney);
    |            rafflepot = rafflepot.sub(103 finney);
  at /home/jiaming/slither_fp_files/out9102.sol(227)

[31mViolation[0m for DAOConstantGas in contract 'P3DRaffle':
    |            }
    |            winner.transfer(100 finney);
  > |            msg.sender.transfer(3 finney);
    |            rafflepot = rafflepot.sub(103 finney);
    |        }
  at /home/jiaming/slither_fp_files/out9102.sol(228)

[33mWarning[0m for LockedEther in contract 'P3DRaffle':
    |    function stakingRequirement() external view returns(uint256);
    |}
  > |contract P3DRaffle is  Owned {
    |    using SafeMath for uint;
    |    HourglassInterface constant P3Dcontract_ = HourglassInterface(0xB3775fB83F7D12A36E0475aBdD1FCA35c091efBe); 
  at /home/jiaming/slither_fp_files/out9102.sol(85)

[31mViolation[0m for TODAmount in contract 'P3DRaffle':
    |function devfeetodev () public {
    |    
  > |    SPASM_.disburse.value(devfee)();
    |    devfee = 0;
    |}
  at /home/jiaming/slither_fp_files/out9102.sol(184)

[31mViolation[0m for TODAmount in contract 'P3DRaffle':
    |            Raffles[rafnr].rafflevanity = winner;
    |            if(jackpotdraw == 777){
  > |                winner.transfer(jackpot);
    |                jackpot = 0;
    |            }
  at /home/jiaming/slither_fp_files/out9102.sol(224)

[33mWarning[0m for TODAmount in contract 'P3DRaffle':
    |                jackpot = 0;
    |            }
  > |            winner.transfer(100 finney);
    |            msg.sender.transfer(3 finney);
    |            rafflepot = rafflepot.sub(103 finney);
  at /home/jiaming/slither_fp_files/out9102.sol(227)

[33mWarning[0m for TODAmount in contract 'P3DRaffle':
    |            }
    |            winner.transfer(100 finney);
  > |            msg.sender.transfer(3 finney);
    |            rafflepot = rafflepot.sub(103 finney);
    |        }
  at /home/jiaming/slither_fp_files/out9102.sol(228)

[33mWarning[0m for TODReceiver in contract 'P3DRaffle':
    |        }
    |    nextlotnr += i;
  > |    P3Dcontract_.buy.value(msg.value)(masternode);
    |}
    |function fetchdivstopot () public{
  at /home/jiaming/slither_fp_files/out9102.sol(169)

[33mWarning[0m for TODReceiver in contract 'P3DRaffle':
    |function devfeetodev () public {
    |    
  > |    SPASM_.disburse.value(devfee)();
    |    devfee = 0;
    |}
  at /home/jiaming/slither_fp_files/out9102.sol(184)

[33mWarning[0m for TODReceiver in contract 'P3DRaffle':
    |            }
    |            winner.transfer(100 finney);
  > |            msg.sender.transfer(3 finney);
    |            rafflepot = rafflepot.sub(103 finney);
    |        }
  at /home/jiaming/slither_fp_files/out9102.sol(228)

[33mWarning[0m for UnhandledException in contract 'P3DRaffle':
    |        returns(uint256)
    |    {
  > |        return ( P3Dcontract_.dividendsOf(address(this)))  ;
    |    }
    |    function raffleinfo(uint256 rafflenumber)
  at /home/jiaming/slither_fp_files/out9102.sol(93)

[33mWarning[0m for UnhandledException in contract 'P3DRaffle':
    |        }
    |    nextlotnr += i;
  > |    P3Dcontract_.buy.value(msg.value)(masternode);
    |}
    |function fetchdivstopot () public{
  at /home/jiaming/slither_fp_files/out9102.sol(169)

[33mWarning[0m for UnhandledException in contract 'P3DRaffle':
    |    devfee = devfee.add(base);//dev fee
    |   
  > |    P3Dcontract_.withdraw();
    |    
    |}
  at /home/jiaming/slither_fp_files/out9102.sol(179)

[33mWarning[0m for UnhandledException in contract 'P3DRaffle':
    |function devfeetodev () public {
    |    
  > |    SPASM_.disburse.value(devfee)();
    |    devfee = 0;
    |}
  at /home/jiaming/slither_fp_files/out9102.sol(184)

[33mWarning[0m for UnhandledException in contract 'P3DRaffle':
    |            Raffles[rafnr].rafflevanity = winner;
    |            if(jackpotdraw == 777){
  > |                winner.transfer(jackpot);
    |                jackpot = 0;
    |            }
  at /home/jiaming/slither_fp_files/out9102.sol(224)

[33mWarning[0m for UnhandledException in contract 'P3DRaffle':
    |                jackpot = 0;
    |            }
  > |            winner.transfer(100 finney);
    |            msg.sender.transfer(3 finney);
    |            rafflepot = rafflepot.sub(103 finney);
  at /home/jiaming/slither_fp_files/out9102.sol(227)

[33mWarning[0m for UnhandledException in contract 'P3DRaffle':
    |            }
    |            winner.transfer(100 finney);
  > |            msg.sender.transfer(3 finney);
    |            rafflepot = rafflepot.sub(103 finney);
    |        }
  at /home/jiaming/slither_fp_files/out9102.sol(228)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'P3DRaffle':
    |                jackpot = 0;
    |            }
  > |            winner.transfer(100 finney);
    |            msg.sender.transfer(3 finney);
    |            rafflepot = rafflepot.sub(103 finney);
  at /home/jiaming/slither_fp_files/out9102.sol(227)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'P3DRaffle':
    |            }
    |            winner.transfer(100 finney);
  > |            msg.sender.transfer(3 finney);
    |            rafflepot = rafflepot.sub(103 finney);
    |        }
  at /home/jiaming/slither_fp_files/out9102.sol(228)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'P3DRaffle':
    |        returns(uint256)
    |    {
  > |        return ( P3Dcontract_.dividendsOf(address(this)))  ;
    |    }
    |    function raffleinfo(uint256 rafflenumber)
  at /home/jiaming/slither_fp_files/out9102.sol(93)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'P3DRaffle':
    |    devfee = devfee.add(base);//dev fee
    |   
  > |    P3Dcontract_.withdraw();
    |    
    |}
  at /home/jiaming/slither_fp_files/out9102.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |        {
    |            counter = i + nextlotnr;
  > |            ticketsales[counter] = sender;
    |        }
    |    nextlotnr += i;
  at /home/jiaming/slither_fp_files/out9102.sol(166)

[31mViolation[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |            ticketsales[counter] = sender;
    |        }
  > |    nextlotnr += i;
    |    P3Dcontract_.buy.value(msg.value)(masternode);
    |}
  at /home/jiaming/slither_fp_files/out9102.sol(168)

[31mViolation[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |    uint256 base = divs.div(100);
    |    
  > |    rafflepot = rafflepot.add(base.mul(90));// allocation to raffle
    |    jackpot = jackpot.add(base.mul(9)); // allocation to jackpot
    |    devfee = devfee.add(base);//dev fee
  at /home/jiaming/slither_fp_files/out9102.sol(175)

[31mViolation[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |    
    |    rafflepot = rafflepot.add(base.mul(90));// allocation to raffle
  > |    jackpot = jackpot.add(base.mul(9)); // allocation to jackpot
    |    devfee = devfee.add(base);//dev fee
    |   
  at /home/jiaming/slither_fp_files/out9102.sol(176)

[31mViolation[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |    rafflepot = rafflepot.add(base.mul(90));// allocation to raffle
    |    jackpot = jackpot.add(base.mul(9)); // allocation to jackpot
  > |    devfee = devfee.add(base);//dev fee
    |   
    |    P3Dcontract_.withdraw();
  at /home/jiaming/slither_fp_files/out9102.sol(177)

[31mViolation[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |    
    |    SPASM_.disburse.value(devfee)();
  > |    devfee = 0;
    |}
    |function changevanity(string van) public payable{
  at /home/jiaming/slither_fp_files/out9102.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |    require(msg.value >= 100  finney);
    |    Vanity[msg.sender] = van;
  > |    rafflepot = rafflepot.add(msg.value);
    |}
    |function startraffle () public{
  at /home/jiaming/slither_fp_files/out9102.sol(190)

[31mViolation[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |    require(Raffles[nextrafflenr - 1].validation == true);
    |    require(rafflepot >= 103 finney);
  > |    Raffles[nextrafflenr].drawblock = block.number;
    |    
    |    Raffles[nextrafflenr].ticketssold = nextlotnr;
  at /home/jiaming/slither_fp_files/out9102.sol(195)

[31mViolation[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |    Raffles[nextrafflenr].drawblock = block.number;
    |    
  > |    Raffles[nextrafflenr].ticketssold = nextlotnr;
    |    nextrafflenr++;
    |}
  at /home/jiaming/slither_fp_files/out9102.sol(197)

[31mViolation[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |    
    |    Raffles[nextrafflenr].ticketssold = nextlotnr;
  > |    nextrafflenr++;
    |}
    |function validateraffle () public{
  at /home/jiaming/slither_fp_files/out9102.sol(198)

[31mViolation[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |        if(block.number - 256 > drawblock) {
    |            // can not be determined
  > |            Raffles[rafnr].validation = true;
    |            Raffles[rafnr].wasabletovalidate = false;
    |        }
  at /home/jiaming/slither_fp_files/out9102.sol(210)

[31mViolation[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |            // can not be determined
    |            Raffles[rafnr].validation = true;
  > |            Raffles[rafnr].wasabletovalidate = false;
    |        }
    |        if(block.number - 256 <= drawblock) {
  at /home/jiaming/slither_fp_files/out9102.sol(211)

[31mViolation[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |            uint256 jackpotdraw = uint256(blockhash(drawblock)) % 1000;
    |            address winner = ticketsales[winningticket];
  > |            Raffles[rafnr].validation = true;
    |            Raffles[rafnr].wasabletovalidate = true;
    |            Raffles[rafnr].result = winningticket;
  at /home/jiaming/slither_fp_files/out9102.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |            address winner = ticketsales[winningticket];
    |            Raffles[rafnr].validation = true;
  > |            Raffles[rafnr].wasabletovalidate = true;
    |            Raffles[rafnr].result = winningticket;
    |            Raffles[rafnr].resultjackpot = jackpotdraw;
  at /home/jiaming/slither_fp_files/out9102.sol(219)

[31mViolation[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |            Raffles[rafnr].validation = true;
    |            Raffles[rafnr].wasabletovalidate = true;
  > |            Raffles[rafnr].result = winningticket;
    |            Raffles[rafnr].resultjackpot = jackpotdraw;
    |            Raffles[rafnr].rafflevanity = winner;
  at /home/jiaming/slither_fp_files/out9102.sol(220)

[31mViolation[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |            Raffles[rafnr].wasabletovalidate = true;
    |            Raffles[rafnr].result = winningticket;
  > |            Raffles[rafnr].resultjackpot = jackpotdraw;
    |            Raffles[rafnr].rafflevanity = winner;
    |            if(jackpotdraw == 777){
  at /home/jiaming/slither_fp_files/out9102.sol(221)

[31mViolation[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |            Raffles[rafnr].result = winningticket;
    |            Raffles[rafnr].resultjackpot = jackpotdraw;
  > |            Raffles[rafnr].rafflevanity = winner;
    |            if(jackpotdraw == 777){
    |                winner.transfer(jackpot);
  at /home/jiaming/slither_fp_files/out9102.sol(222)

[31mViolation[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |            if(jackpotdraw == 777){
    |                winner.transfer(jackpot);
  > |                jackpot = 0;
    |            }
    |            winner.transfer(100 finney);
  at /home/jiaming/slither_fp_files/out9102.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |    function stakingRequirement() external view returns(uint256);
    |}
  > |contract P3DRaffle is  Owned {
    |    using SafeMath for uint;
    |    HourglassInterface constant P3Dcontract_ = HourglassInterface(0xB3775fB83F7D12A36E0475aBdD1FCA35c091efBe); 
  at /home/jiaming/slither_fp_files/out9102.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/slither_fp_files/out9102.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/slither_fp_files/out9102.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out9102.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |            winner.transfer(100 finney);
    |            msg.sender.transfer(3 finney);
  > |            rafflepot = rafflepot.sub(103 finney);
    |        }
    |    
  at /home/jiaming/slither_fp_files/out9102.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'P3DRaffle':
    |    if(address(this).balance.sub(rafflepot).sub(jackpot).sub(devfee) > 0)
    |    {
  > |        rafflepot = address(this).balance.sub(jackpot).sub(devfee);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out9102.sol(237)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/slither_fp_files/out9102.sol(22)


