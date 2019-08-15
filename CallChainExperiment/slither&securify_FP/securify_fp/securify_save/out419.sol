Processing contract: /home/jiaming/slither_fp_files/out419.sol:Accessibility
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out419.sol:Address
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out419.sol:InvestorsStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out419.sol:Math
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out419.sol:Percent
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out419.sol:PrivateEntrance
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out419.sol:RapidGrowthProtection
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out419.sol:Rev1Storage
Processing contract: /home/jiaming/slither_fp_files/out419.sol:Rev2Storage
Processing contract: /home/jiaming/slither_fp_files/out419.sol:Revolution3
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out419.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out419.sol:Zero
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Accessibility':
    |
    |
  > |contract Accessibility {
    |  address private owner;
    |  modifier onlyOwner() {
  at /home/jiaming/slither_fp_files/out419.sol(244)

[33mWarning[0m for LockedEther in contract 'Address':
    |
    |
  > |library Address {
    |  function toAddress(bytes source) internal pure returns(address addr) {
    |    assembly { addr := mload(add(source,0x14)) }
  at /home/jiaming/slither_fp_files/out419.sol(165)

[33mWarning[0m for LockedEther in contract 'InvestorsStorage':
    |
    |
  > |contract InvestorsStorage is Accessibility {
    |  struct Investor {
    |    uint investment;
  at /home/jiaming/slither_fp_files/out419.sol(317)

[31mViolation[0m for MissingInputValidation in contract 'InvestorsStorage':
    |  mapping (address => Investor) private investors;
    |
  > |  function isInvestor(address addr) public view returns (bool) {
    |    return investors[addr].investment > 0;
    |  }
  at /home/jiaming/slither_fp_files/out419.sol(326)

[31mViolation[0m for MissingInputValidation in contract 'InvestorsStorage':
    |  }
    |
  > |  function investorInfo(address addr) public view returns(uint investment, uint paymentTime) {
    |    investment = investors[addr].investment;
    |    paymentTime = investors[addr].paymentTime;
  at /home/jiaming/slither_fp_files/out419.sol(330)

[31mViolation[0m for MissingInputValidation in contract 'InvestorsStorage':
    |  }
    |
  > |  function newInvestor(address addr, uint investment, uint paymentTime) public onlyOwner returns (bool) {
    |    Investor storage inv = investors[addr];
    |    if (inv.investment != 0 || investment == 0) {
  at /home/jiaming/slither_fp_files/out419.sol(335)

[31mViolation[0m for MissingInputValidation in contract 'InvestorsStorage':
    |  }
    |
  > |  function addInvestment(address addr, uint investment) public onlyOwner returns (bool) {
    |    if (investors[addr].investment == 0) {
    |      return false;
  at /home/jiaming/slither_fp_files/out419.sol(346)

[31mViolation[0m for MissingInputValidation in contract 'InvestorsStorage':
    |  }
    |
  > |  function setPaymentTime(address addr, uint paymentTime) public onlyOwner returns (bool) {
    |    if (investors[addr].investment == 0) {
    |      return false;
  at /home/jiaming/slither_fp_files/out419.sol(354)

[33mWarning[0m for MissingInputValidation in contract 'InvestorsStorage':
    |    uint paymentTime;
    |  }
  > |  uint public size;
    |
    |  mapping (address => Investor) private investors;
  at /home/jiaming/slither_fp_files/out419.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |      return false;
    |    }
  > |    inv.investment = investment;
    |    inv.paymentTime = paymentTime;
    |    size++;
  at /home/jiaming/slither_fp_files/out419.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |    }
    |    inv.investment = investment;
  > |    inv.paymentTime = paymentTime;
    |    size++;
    |    return true;
  at /home/jiaming/slither_fp_files/out419.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |    inv.investment = investment;
    |    inv.paymentTime = paymentTime;
  > |    size++;
    |    return true;
    |  }
  at /home/jiaming/slither_fp_files/out419.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |      return false;
    |    }
  > |    investors[addr].investment += investment;
    |    return true;
    |  }
  at /home/jiaming/slither_fp_files/out419.sol(350)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |      return false;
    |    }
  > |    investors[addr].paymentTime = paymentTime;
    |    return true;
    |  }
  at /home/jiaming/slither_fp_files/out419.sol(358)

[33mWarning[0m for LockedEther in contract 'Math':
    |
    |
  > |library Math {
    |  function min(uint a, uint b) internal pure returns(uint) {
    |    if (a > b) {
  at /home/jiaming/slither_fp_files/out419.sol(67)

[33mWarning[0m for LockedEther in contract 'Percent':
    |
    |
  > |library Percent {
    |  // Solidity automatically throws when dividing by 0
    |  struct percent {
  at /home/jiaming/slither_fp_files/out419.sol(104)

[33mWarning[0m for LockedEther in contract 'PrivateEntrance':
    |
    |
  > |library PrivateEntrance {
    |  using PrivateEntrance for privateEntrance;
    |  using Math for uint;
  at /home/jiaming/slither_fp_files/out419.sol(271)

[33mWarning[0m for LockedEther in contract 'RapidGrowthProtection':
    |
    |
  > |library RapidGrowthProtection {
    |  using RapidGrowthProtection for rapidGrowthProtection;
    |  
  at /home/jiaming/slither_fp_files/out419.sol(364)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/slither_fp_files/out419.sol(183)

[33mWarning[0m for LockedEther in contract 'Zero':
    |
    |
  > |library Zero {
    |  function requireNotZero(address addr) internal pure {
    |    require(addr != address(0), "require not zero address");
  at /home/jiaming/slither_fp_files/out419.sol(77)


