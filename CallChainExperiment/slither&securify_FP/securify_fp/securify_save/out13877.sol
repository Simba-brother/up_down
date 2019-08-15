Processing contract: /home/jiaming/slither_fp_files/out13877.sol:NameFilter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out13877.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out13877.sol:PlayerBookInterface
Processing contract: /home/jiaming/slither_fp_files/out13877.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out13877.sol:X3DKeysCalcLong
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out13877.sol:X3Ddatasets
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out13877.sol:X3Devents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out13877.sol:X3Dlong
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out13877.sol:modularLong
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
  at /home/jiaming/slither_fp_files/out13877.sol(1775)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/slither_fp_files/out13877.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out13877.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/slither_fp_files/out13877.sol(153)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out13877.sol(162)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out13877.sol(170)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out13877.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out13877.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out13877.sol(173)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * - removed div, its useless
    | */
  > |library SafeMath {
    |    
    |    /**
  at /home/jiaming/slither_fp_files/out13877.sol(1861)

[33mWarning[0m for LockedEther in contract 'X3DKeysCalcLong':
    |//  |<(/_\/  (_(_||(_  .
    |//=======/======================================================================
  > |library X3DKeysCalcLong {
    |    using SafeMath for *;
    |    /**
  at /home/jiaming/slither_fp_files/out13877.sol(1701)

[33mWarning[0m for LockedEther in contract 'X3Ddatasets':
    |//  _\ | | |_|(_ | _\  .
    |//==============================================================================
  > |library X3Ddatasets {
    |    //compressedData key
    |    // [76-33][32][31][30][29][28-18][17][16-6][5-3][2][1][0]
  at /home/jiaming/slither_fp_files/out13877.sol(1627)

[33mWarning[0m for LockedEther in contract 'X3Devents':
    |//    (/_\/(/_| | | _\  .
    |//==============================================================================
  > |contract X3Devents {
    |    // fired whenever a player registers a name
    |    event onNewName
  at /home/jiaming/slither_fp_files/out13877.sol(7)

[33mWarning[0m for LockedEther in contract 'modularLong':
    |//====================================|=========================================
    |
  > |contract modularLong is X3Devents {}
    |
    |contract X3Dlong is modularLong, Ownable {
  at /home/jiaming/slither_fp_files/out13877.sol(182)


