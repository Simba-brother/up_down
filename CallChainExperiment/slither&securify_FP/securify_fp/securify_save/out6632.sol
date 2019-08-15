Processing contract: /home/jiaming/slither_fp_files/out6632.sol:ChickenMarket
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6632.sol:ERC20Interface
Processing contract: /home/jiaming/slither_fp_files/out6632.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out6632.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Owned':
    |
    |
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/slither_fp_files/out6632.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |        _;
    |    }
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/slither_fp_files/out6632.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/slither_fp_files/out6632.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
    |    constructor() public {
  at /home/jiaming/slither_fp_files/out6632.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/slither_fp_files/out6632.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    }
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/slither_fp_files/out6632.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/slither_fp_files/out6632.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out6632.sol(22)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |    
    |    /**
  at /home/jiaming/slither_fp_files/out6632.sol(26)


