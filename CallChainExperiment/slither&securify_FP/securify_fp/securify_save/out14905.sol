Processing contract: /home/jiaming/slither_fp_files/out14905.sol:LOLKeysCalcLong
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14905.sol:LOLOfficalBankInterface
Processing contract: /home/jiaming/slither_fp_files/out14905.sol:LOLPlayerBookInterface
Processing contract: /home/jiaming/slither_fp_files/out14905.sol:LOLdatasets
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14905.sol:LOLevents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14905.sol:LOLlong
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14905.sol:NameFilter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14905.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14905.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out14905.sol:modularLong
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'LOLKeysCalcLong':
    |//  |<(/_\/  (_(_||(_  .
    |//=======/======================================================================
  > |library LOLKeysCalcLong {
    |    using SafeMath for *;
    |    /**
  at /home/jiaming/slither_fp_files/out14905.sol(1666)

[33mWarning[0m for LockedEther in contract 'LOLdatasets':
    |//  _\ | | |_|(_ | _\  .
    |//==============================================================================
  > |library LOLdatasets {
    |    //compressedData key
    |    // [76-33][32][31][30][29][28-18][17][16-6][5-3][2][1][0]
  at /home/jiaming/slither_fp_files/out14905.sol(1592)

[33mWarning[0m for LockedEther in contract 'LOLevents':
    | * 通知部分
    | */
  > |contract LOLevents {
    |    // fired whenever a player registers a name
    |    // 发送用户名事件
  at /home/jiaming/slither_fp_files/out14905.sol(37)

[33mWarning[0m for LockedEther in contract 'NameFilter':
    |
    |
  > |library NameFilter {
    |    /**
    |     * @dev filters name strings
  at /home/jiaming/slither_fp_files/out14905.sol(1744)

[33mWarning[0m for LockedEther in contract 'Owned':
    | * WARNING:  THIS PRODUCT IS HIGHLY ADDICTIVE.  IF YOU HAVE AN ADDICTIVE NATURE.  DO NOT PLAY.
    | */
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/slither_fp_files/out14905.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/slither_fp_files/out14905.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    | */
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/slither_fp_files/out14905.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    constructor()
  at /home/jiaming/slither_fp_files/out14905.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        owner = newOwner;
  at /home/jiaming/slither_fp_files/out14905.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/slither_fp_files/out14905.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/slither_fp_files/out14905.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out14905.sol(31)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * - removed div, its useless
    | */
  > |library SafeMath {
    |    
    |    /**
  at /home/jiaming/slither_fp_files/out14905.sol(1830)

[33mWarning[0m for LockedEther in contract 'modularLong':
    |//====================================|=========================================
    |
  > |contract modularLong is LOLevents {}
    |
    |contract LOLlong is modularLong,Owned {
  at /home/jiaming/slither_fp_files/out14905.sol(156)


