Processing contract: /home/jiaming/slither_fp_files/out9694.sol:Datasets
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9694.sol:Events
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9694.sol:ExtSettingInterface
Processing contract: /home/jiaming/slither_fp_files/out9694.sol:FoMo3D
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9694.sol:FoundationInterface
Processing contract: /home/jiaming/slither_fp_files/out9694.sol:KeysCalcLong
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9694.sol:NameFilter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9694.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9694.sol:PlayerBookInterface
Processing contract: /home/jiaming/slither_fp_files/out9694.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Datasets':
    |}
    |
  > |library Datasets {
    |    struct EventData {
    |        uint256 compressedData;
  at /home/jiaming/slither_fp_files/out9694.sol(927)

[33mWarning[0m for LockedEther in contract 'Events':
    |}
    |
  > |contract Events {
    |    event onNewName(
    |        uint256 indexed playerID,
  at /home/jiaming/slither_fp_files/out9694.sol(24)

[33mWarning[0m for LockedEther in contract 'KeysCalcLong':
    |}
    |
  > |library KeysCalcLong {
    |    using SafeMath for *;
    |
  at /home/jiaming/slither_fp_files/out9694.sol(972)

[33mWarning[0m for LockedEther in contract 'NameFilter':
    |}
    |
  > |library NameFilter {
    |    function nameFilter(string _input) internal pure returns(bytes32) {
    |        bytes memory _temp = bytes(_input);
  at /home/jiaming/slither_fp_files/out9694.sol(992)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/slither_fp_files/out9694.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/slither_fp_files/out9694.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0), "Invalid address.");
    |
  at /home/jiaming/slither_fp_files/out9694.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwner != address(0), "Invalid address.");
    |
  > |        owner = _newOwner;
    |
    |        emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out9694.sol(127)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
    |        if (a == 0) {
  at /home/jiaming/slither_fp_files/out9694.sol(1037)


