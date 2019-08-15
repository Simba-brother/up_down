Processing contract: /home/jiaming/slither_fp_files/out9914.sol:ExternalSettingsInterface
Processing contract: /home/jiaming/slither_fp_files/out9914.sol:F3DKeysCalcLong
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9914.sol:F3Ddatasets
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9914.sol:F3Devents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9914.sol:Fomo3DAsia
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9914.sol:NameFilter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9914.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9914.sol:PartnershipInterface
Processing contract: /home/jiaming/slither_fp_files/out9914.sol:PlayerBookInterface
Processing contract: /home/jiaming/slither_fp_files/out9914.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'F3DKeysCalcLong':
    |}
    |
  > |library F3DKeysCalcLong {
    |    using SafeMath for *;
    |
  at /home/jiaming/slither_fp_files/out9914.sol(164)

[33mWarning[0m for LockedEther in contract 'F3Ddatasets':
    |}
    |
  > |library F3Ddatasets {
    |    // compressedData key
    |    // [76-33][32][31][30][29][28-18][17][16-6][5-3][2][1][0]
  at /home/jiaming/slither_fp_files/out9914.sol(100)

[33mWarning[0m for LockedEther in contract 'F3Devents':
    |}
    |
  > |contract F3Devents {
    |    event onNewName(
    |        uint256 indexed playerID,
  at /home/jiaming/slither_fp_files/out9914.sol(205)

[33mWarning[0m for LockedEther in contract 'NameFilter':
    |}
    |
  > |library NameFilter {
    |    function nameFilter(string _input) internal pure returns(bytes32) {
    |        bytes memory _temp = bytes(_input);
  at /home/jiaming/slither_fp_files/out9914.sol(56)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/slither_fp_files/out9914.sol(291)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/slither_fp_files/out9914.sol(292)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0), "Invalid address.");
    |
  at /home/jiaming/slither_fp_files/out9914.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwner != address(0), "Invalid address.");
    |
  > |        owner = _newOwner;
    |
    |        emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/slither_fp_files/out9914.sol(308)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.24;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
    |        if (a == 0) {
  at /home/jiaming/slither_fp_files/out9914.sol(3)


