Processing contract: /home/jiaming/slither_fp_files/out10264.sol:DiviesInterface
Processing contract: /home/jiaming/slither_fp_files/out10264.sol:F3DKeysCalcLong
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10264.sol:F3Ddatasets
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10264.sol:F3Devents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10264.sol:F3DexternalSettingsInterface
Processing contract: /home/jiaming/slither_fp_files/out10264.sol:FoMo3Dlong
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Decompilation failed.
Processing contract: /home/jiaming/slither_fp_files/out10264.sol:JIincForwarderInterface
Processing contract: /home/jiaming/slither_fp_files/out10264.sol:NameFilter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10264.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10264.sol:PlayerBookInterface
Processing contract: /home/jiaming/slither_fp_files/out10264.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10264.sol:modularLong
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10264.sol:otherFoMo3D
[33mWarning[0m for LockedEther in contract 'F3DKeysCalcLong':
    |//  |<(/_\/  (_(_||(_  .
    |//=======/======================================================================
  > |library F3DKeysCalcLong {
    |    using SafeMath for *;
    |    uint256 constant private keyPriceStart_ = 15000000000000000;
  at /home/jiaming/slither_fp_files/out10264.sol(1851)

[33mWarning[0m for LockedEther in contract 'F3Ddatasets':
    |//  _\ | | |_|(_ | _\  .
    |//==============================================================================
  > |library F3Ddatasets {
    |    //compressedData key
    |    // [76-33][32][31][30][29][28-18][17][16-6][5-3][2][1][0]
  at /home/jiaming/slither_fp_files/out10264.sol(1775)

[33mWarning[0m for LockedEther in contract 'F3Devents':
    |//    (/_\/(/_| | | _\  .
    |//==============================================================================
  > |contract F3Devents {
    |    // fired whenever a player registers a name
    |    event onNewName
  at /home/jiaming/slither_fp_files/out10264.sol(99)

[33mWarning[0m for LockedEther in contract 'NameFilter':
    |*/
    |
  > |library NameFilter {
    |    /**
    |     * @dev filters name strings
  at /home/jiaming/slither_fp_files/out10264.sol(1983)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/slither_fp_files/out10264.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out10264.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/slither_fp_files/out10264.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out10264.sol(90)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * - removed div, its useless
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/slither_fp_files/out10264.sol(2069)

[33mWarning[0m for LockedEther in contract 'modularLong':
    |//====================================|=========================================
    |
  > |contract modularLong is F3Devents, Ownable {}
    |
    |contract FoMo3Dlong is modularLong {
  at /home/jiaming/slither_fp_files/out10264.sol(217)

[33mWarning[0m for MissingInputValidation in contract 'modularLong':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/slither_fp_files/out10264.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'modularLong':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/slither_fp_files/out10264.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'modularLong':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out10264.sol(90)


