Processing contract: /home/jiaming/slither_fp_files/out5368.sol:CompanyShareInterface
Processing contract: /home/jiaming/slither_fp_files/out5368.sol:NameFilter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5368.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5368.sol:Star3DKeysCalcLong
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5368.sol:Star3Ddatasets
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5368.sol:Star3Devents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5368.sol:Star3Dlong
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Decompilation failed.
Processing contract: /home/jiaming/slither_fp_files/out5368.sol:modularLong
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'NameFilter':
    |
    |
  > |library NameFilter {
    |    /**
    |     * @dev filters name strings
  at /home/jiaming/slither_fp_files/out5368.sol(1584)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * - removed div, its useless
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/slither_fp_files/out5368.sol(1829)

[33mWarning[0m for LockedEther in contract 'Star3DKeysCalcLong':
    |//  |<(/_\/  (_(_||(_  .
    |//=======/======================================================================
  > |library Star3DKeysCalcLong {
    |    using SafeMath for *;
    |    /**
  at /home/jiaming/slither_fp_files/out5368.sol(1739)

[33mWarning[0m for MissingInputValidation in contract 'Star3DKeysCalcLong':
    |        return (((78125000).mul(_keys.sq()).add(((149999843750000).mul(_keys.mul(1000000000000000000))) / (2))) / ((1000000000000000000).sq())).mul(10);
    |    }
  > |    function getBuyPriceTimesByTime(uint256 _timeLeft)
    |        public
    |        pure
  at /home/jiaming/slither_fp_files/out5368.sol(1805)

[33mWarning[0m for LockedEther in contract 'Star3Ddatasets':
    |//  _\ | | |_|(_ | _\  .
    |//==============================================================================
  > |library Star3Ddatasets {
    |    //compressedData key
    |    // [76-33][32][31][30][29][28-18][17][16-6][5-3][2][1][0]
  at /home/jiaming/slither_fp_files/out5368.sol(1665)

[33mWarning[0m for LockedEther in contract 'Star3Devents':
    |pragma solidity ^0.4.24;
    | 
  > |contract Star3Devents {
    |    // fired whenever a player registers a name
    |    event onNewName
  at /home/jiaming/slither_fp_files/out5368.sol(3)

[33mWarning[0m for LockedEther in contract 'modularLong':
    |//====================================|=========================================
    |
  > |contract modularLong is Star3Devents { uint codeLength=0;}
    |
    |contract Star3Dlong is modularLong {
  at /home/jiaming/slither_fp_files/out5368.sol(120)


