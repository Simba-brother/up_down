Processing contract: /home/jiaming/slither_fp_files/out14429.sol:LastUnicorn
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14429.sol:NameFilter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14429.sol:RSEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14429.sol:RSKeysCalc
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14429.sol:RSdatasets
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14429.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14429.sol:UnicornBookInterface
Processing contract: /home/jiaming/slither_fp_files/out14429.sol:UnicornInterfaceForForwarder
Processing contract: /home/jiaming/slither_fp_files/out14429.sol:modularLastUnicorn
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'NameFilter':
    |}
    |
  > |library NameFilter {
    |    /**
    |     * @dev filters name strings
  at /home/jiaming/slither_fp_files/out14429.sol(1526)

[33mWarning[0m for LockedEther in contract 'RSEvents':
    |pragma solidity ^0.4.24;
    |
  > |contract RSEvents {
    |
    |    // fired whenever a player registers a name
  at /home/jiaming/slither_fp_files/out14429.sol(3)

[33mWarning[0m for LockedEther in contract 'RSKeysCalc':
    |//  |<(/_\/  (_(_||(_  .
    |//=======/======================================================================
  > |library RSKeysCalc {
    |    using SafeMath for *;
    |    /**
  at /home/jiaming/slither_fp_files/out14429.sol(1454)

[33mWarning[0m for LockedEther in contract 'RSdatasets':
    |//  _\ | | |_|(_ | _\  .
    |//==============================================================================
  > |library RSdatasets {
    |    //compressedData key
    |    // [76-33][32][31][30][29][28-18][17][16-6][5-3][2][1][0]
  at /home/jiaming/slither_fp_files/out14429.sol(1395)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * - removed div, its useless
    | */
  > |library SafeMath {
    |    
    |    /**
  at /home/jiaming/slither_fp_files/out14429.sol(1611)

[33mWarning[0m for LockedEther in contract 'modularLastUnicorn':
    |}
    |
  > |contract modularLastUnicorn is RSEvents {}
    |
    |contract LastUnicorn is modularLastUnicorn {
  at /home/jiaming/slither_fp_files/out14429.sol(105)


