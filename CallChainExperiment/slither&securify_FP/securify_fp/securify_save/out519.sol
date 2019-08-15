Processing contract: /home/jiaming/slither_fp_files/out519.sol:BMDatasets
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out519.sol:BMEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out519.sol:BMForwarderInterface
Processing contract: /home/jiaming/slither_fp_files/out519.sol:BMKeyCalc
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out519.sol:BMPlayerBookInterface
Processing contract: /home/jiaming/slither_fp_files/out519.sol:BMSport
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out519.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out519.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BMDatasets':
    |
    |// datasets
  > |library BMDatasets {
    |
    |    struct Game {
  at /home/jiaming/slither_fp_files/out519.sol(223)

[33mWarning[0m for LockedEther in contract 'BMEvents':
    |
    |/// @title Events used in FomoSport
  > |contract BMEvents {
    |
    |    event onGameCreated(
  at /home/jiaming/slither_fp_files/out519.sol(6)

[33mWarning[0m for LockedEther in contract 'BMKeyCalc':
    |
    |// key calculation
  > |library BMKeyCalc {
    |    using SafeMath for *;
    |    
  at /home/jiaming/slither_fp_files/out519.sol(169)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |    address public dev;
  at /home/jiaming/slither_fp_files/out519.sol(274)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |    address public dev;
    |
  at /home/jiaming/slither_fp_files/out519.sol(275)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    address public owner;
  > |    address public dev;
    |
    |    /**
  at /home/jiaming/slither_fp_files/out519.sol(276)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/slither_fp_files/out519.sol(315)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @param newDev The new dev address.
    |    */
  > |    function setDev(address newDev) onlyOwner public {
    |        if (newDev != address(0)) {
    |            dev = newDev;
  at /home/jiaming/slither_fp_files/out519.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out519.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function setDev(address newDev) onlyOwner public {
    |        if (newDev != address(0)) {
  > |            dev = newDev;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out519.sol(327)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |/// - changed asserts to requires with error log outputs
    |/// - removed div, its useless
  > |library SafeMath {
    |    
    |    /// @dev Multiplies two numbers, throws on overflow.
  at /home/jiaming/slither_fp_files/out519.sol(81)


