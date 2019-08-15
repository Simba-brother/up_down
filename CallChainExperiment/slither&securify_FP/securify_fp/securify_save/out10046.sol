Processing contract: /home/jiaming/slither_fp_files/out10046.sol:Buffer
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10046.sol:CBOR
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10046.sol:Lottery
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10046.sol:OraclizeAddrResolverI
Processing contract: /home/jiaming/slither_fp_files/out10046.sol:OraclizeI
Processing contract: /home/jiaming/slither_fp_files/out10046.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10046.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out10046.sol:YHTInterface
Processing contract: /home/jiaming/slither_fp_files/out10046.sol:usingOraclize
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Buffer':
    | */
    |
  > |library Buffer {
    |    struct buffer {
    |        bytes buf;
  at /home/jiaming/slither_fp_files/out10046.sol(90)

[33mWarning[0m for LockedEther in contract 'CBOR':
    |}
    |
  > |library CBOR {
    |    using Buffer for Buffer.buffer;
    |
  at /home/jiaming/slither_fp_files/out10046.sol(222)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/slither_fp_files/out10046.sol(1300)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipRenounced(address indexed previousOwner);
  at /home/jiaming/slither_fp_files/out10046.sol(1301)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/slither_fp_files/out10046.sol(1332)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/slither_fp_files/out10046.sol(1341)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out10046.sol(1349)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out10046.sol(1352)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/slither_fp_files/out10046.sol(1334)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/slither_fp_files/out10046.sol(1352)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/slither_fp_files/out10046.sol(1249)

[33mWarning[0m for LockedEther in contract 'usingOraclize':
    | */
    |
  > |contract usingOraclize {
    |    uint constant day = 60*60*24;
    |    uint constant week = 60*60*24*7;
  at /home/jiaming/slither_fp_files/out10046.sol(294)


