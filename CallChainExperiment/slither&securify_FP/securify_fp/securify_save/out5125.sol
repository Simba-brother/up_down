Processing contract: /home/jiaming/slither_fp_files/out5125.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5125.sol:Q3DMatchDataInterface
Processing contract: /home/jiaming/slither_fp_files/out5125.sol:QIU3D
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5125.sol:QIU3Ddatasets
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5125.sol:QIU3Devents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5125.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |*/
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/slither_fp_files/out5125.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipRenounced(address indexed previousOwner);
  at /home/jiaming/slither_fp_files/out5125.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * modifier anymore.
    |    */
  > |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
    |        owner = address(0);
  at /home/jiaming/slither_fp_files/out5125.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @param _newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        _transferOwnership(_newOwner);
    |    }
  at /home/jiaming/slither_fp_files/out5125.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @param _newOwner The address to transfer ownership to.
    |    */
  > |    function _transferOwnership(address _newOwner) internal {
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out5125.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5125.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |
  at /home/jiaming/slither_fp_files/out5125.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5125.sol(61)

[33mWarning[0m for LockedEther in contract 'QIU3Ddatasets':
    |//==================================================
    |
  > |library QIU3Ddatasets{
    |
    |    struct Match{
  at /home/jiaming/slither_fp_files/out5125.sol(1298)

[33mWarning[0m for LockedEther in contract 'QIU3Devents':
    |// QIU3D Events
    |//==================================================
  > |contract QIU3Devents {
    |    //fired whenever buy ticket
    |    event onNewTicket(
  at /home/jiaming/slither_fp_files/out5125.sol(119)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |*/
    |
  > |library SafeMath {
    |    /**
    |    * @dev Multiplies two numbers, throws on overflow.
  at /home/jiaming/slither_fp_files/out5125.sol(71)


