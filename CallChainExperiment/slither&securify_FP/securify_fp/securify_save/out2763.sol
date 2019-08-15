Processing contract: /home/jiaming/slither_fp_files/out2763.sol:Accessibility
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out2763.sol:Address
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out2763.sol:InvestorsStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out2763.sol:Math
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out2763.sol:Percent
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out2763.sol:PrivateEntrance
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out2763.sol:RapidGrowthProtection
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out2763.sol:Rev1Storage
Processing contract: /home/jiaming/slither_fp_files/out2763.sol:Rev2Storage
Processing contract: /home/jiaming/slither_fp_files/out2763.sol:Revolution2
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out2763.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out2763.sol:Zero
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
  at /home/jiaming/slither_fp_files/out2763.sol(192)

[33mWarning[0m for LockedEther in contract 'Address':
    |
    |
  > |library Address {
    |  function toAddress(bytes source) internal pure returns(address addr) {
    |    assembly { addr := mload(add(source,0x14)) }
  at /home/jiaming/slither_fp_files/out2763.sol(113)

[33mWarning[0m for LockedEther in contract 'InvestorsStorage':
    |
    |
  > |contract InvestorsStorage is Accessibility {
    |  struct Investor {
    |    uint investment;
  at /home/jiaming/slither_fp_files/out2763.sol(265)

[31mViolation[0m for MissingInputValidation in contract 'InvestorsStorage':
    |  mapping (address => Investor) private investors;
    |
  > |  function isInvestor(address addr) public view returns (bool) {
    |    return investors[addr].investment > 0;
    |  }
  at /home/jiaming/slither_fp_files/out2763.sol(274)

[31mViolation[0m for MissingInputValidation in contract 'InvestorsStorage':
    |  }
    |
  > |  function investorInfo(address addr) public view returns(uint investment, uint paymentTime) {
    |    investment = investors[addr].investment;
    |    paymentTime = investors[addr].paymentTime;
  at /home/jiaming/slither_fp_files/out2763.sol(278)

[31mViolation[0m for MissingInputValidation in contract 'InvestorsStorage':
    |  }
    |
  > |  function newInvestor(address addr, uint investment, uint paymentTime) public onlyOwner returns (bool) {
    |    Investor storage inv = investors[addr];
    |    if (inv.investment != 0 || investment == 0) {
  at /home/jiaming/slither_fp_files/out2763.sol(283)

[31mViolation[0m for MissingInputValidation in contract 'InvestorsStorage':
    |  }
    |
  > |  function addInvestment(address addr, uint investment) public onlyOwner returns (bool) {
    |    if (investors[addr].investment == 0) {
    |      return false;
  at /home/jiaming/slither_fp_files/out2763.sol(294)

[31mViolation[0m for MissingInputValidation in contract 'InvestorsStorage':
    |  }
    |
  > |  function setPaymentTime(address addr, uint paymentTime) public onlyOwner returns (bool) {
    |    if (investors[addr].investment == 0) {
    |      return false;
  at /home/jiaming/slither_fp_files/out2763.sol(302)

[33mWarning[0m for MissingInputValidation in contract 'InvestorsStorage':
    |    uint paymentTime;
    |  }
  > |  uint public size;
    |
    |  mapping (address => Investor) private investors;
  at /home/jiaming/slither_fp_files/out2763.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |      return false;
    |    }
  > |    inv.investment = investment;
    |    inv.paymentTime = paymentTime;
    |    size++;
  at /home/jiaming/slither_fp_files/out2763.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |    }
    |    inv.investment = investment;
  > |    inv.paymentTime = paymentTime;
    |    size++;
    |    return true;
  at /home/jiaming/slither_fp_files/out2763.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |    inv.investment = investment;
    |    inv.paymentTime = paymentTime;
  > |    size++;
    |    return true;
    |  }
  at /home/jiaming/slither_fp_files/out2763.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |      return false;
    |    }
  > |    investors[addr].investment += investment;
    |    return true;
    |  }
  at /home/jiaming/slither_fp_files/out2763.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |      return false;
    |    }
  > |    investors[addr].paymentTime = paymentTime;
    |    return true;
    |  }
  at /home/jiaming/slither_fp_files/out2763.sol(306)

[33mWarning[0m for LockedEther in contract 'Math':
    |
    |
  > |library Math {
    |  function min(uint a, uint b) internal pure returns(uint) {
    |    if (a > b) {
  at /home/jiaming/slither_fp_files/out2763.sol(15)

[33mWarning[0m for LockedEther in contract 'Percent':
    |
    |
  > |library Percent {
    |  // Solidity automatically throws when dividing by 0
    |  struct percent {
  at /home/jiaming/slither_fp_files/out2763.sol(52)

[33mWarning[0m for LockedEther in contract 'PrivateEntrance':
    |
    |
  > |library PrivateEntrance {
    |  using PrivateEntrance for privateEntrance;
    |  using Math for uint;
  at /home/jiaming/slither_fp_files/out2763.sol(219)

[33mWarning[0m for LockedEther in contract 'RapidGrowthProtection':
    |
    |
  > |library RapidGrowthProtection {
    |  using RapidGrowthProtection for rapidGrowthProtection;
    |
  at /home/jiaming/slither_fp_files/out2763.sol(312)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/slither_fp_files/out2763.sol(131)

[33mWarning[0m for LockedEther in contract 'Zero':
    |
    |
  > |library Zero {
    |  function requireNotZero(address addr) internal pure {
    |    require(addr != address(0), "require not zero address");
  at /home/jiaming/slither_fp_files/out2763.sol(25)


