Processing contract: /home/jiaming/slither_fp_files/out8742.sol:miner_winner
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8742.sol:miner_winner_basic
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out8742.sol:token
[33mWarning[0m for LockedEther in contract 'miner_winner':
    |}
    |
  > |contract miner_winner is miner_winner_basic {
    |
    |    constructor(address _token_reward_address) public {
  at /home/jiaming/slither_fp_files/out8742.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'miner_winner':
    |contract miner_winner_basic {  
    |
  > |    address public owner;
    |    address public reward_winaddr;
    |    uint256 public deadline;
  at /home/jiaming/slither_fp_files/out8742.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'miner_winner':
    |
    |    address public owner;
  > |    address public reward_winaddr;
    |    uint256 public deadline;
    |    uint256 public time;
  at /home/jiaming/slither_fp_files/out8742.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'miner_winner':
    |    address public owner;
    |    address public reward_winaddr;
  > |    uint256 public deadline;
    |    uint256 public time;
    |    uint256 public price;
  at /home/jiaming/slither_fp_files/out8742.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'miner_winner':
    |    address public reward_winaddr;
    |    uint256 public deadline;
  > |    uint256 public time;
    |    uint256 public price;
    |    uint256 public reward_value;
  at /home/jiaming/slither_fp_files/out8742.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'miner_winner':
    |    uint256 public deadline;
    |    uint256 public time;
  > |    uint256 public price;
    |    uint256 public reward_value;
    |    token public token_reward;
  at /home/jiaming/slither_fp_files/out8742.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'miner_winner':
    |    uint256 public time;
    |    uint256 public price;
  > |    uint256 public reward_value;
    |    token public token_reward;
    |    address[] public plyr;
  at /home/jiaming/slither_fp_files/out8742.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'miner_winner':
    |    uint256 public price;
    |    uint256 public reward_value;
  > |    token public token_reward;
    |    address[] public plyr;
    |    uint256 public next_count;
  at /home/jiaming/slither_fp_files/out8742.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'miner_winner':
    |    uint256 public reward_value;
    |    token public token_reward;
  > |    address[] public plyr;
    |    uint256 public next_count;
    |}
  at /home/jiaming/slither_fp_files/out8742.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'miner_winner':
    |    token public token_reward;
    |    address[] public plyr;
  > |    uint256 public next_count;
    |}
    |
  at /home/jiaming/slither_fp_files/out8742.sol(57)

[33mWarning[0m for LockedEther in contract 'miner_winner_basic':
    |//===========================================================================================>
    |
  > |contract miner_winner_basic {  
    |
    |    address public owner;
  at /home/jiaming/slither_fp_files/out8742.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'miner_winner_basic':
    |contract miner_winner_basic {  
    |
  > |    address public owner;
    |    address public reward_winaddr;
    |    uint256 public deadline;
  at /home/jiaming/slither_fp_files/out8742.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'miner_winner_basic':
    |
    |    address public owner;
  > |    address public reward_winaddr;
    |    uint256 public deadline;
    |    uint256 public time;
  at /home/jiaming/slither_fp_files/out8742.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'miner_winner_basic':
    |    address public owner;
    |    address public reward_winaddr;
  > |    uint256 public deadline;
    |    uint256 public time;
    |    uint256 public price;
  at /home/jiaming/slither_fp_files/out8742.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'miner_winner_basic':
    |    address public reward_winaddr;
    |    uint256 public deadline;
  > |    uint256 public time;
    |    uint256 public price;
    |    uint256 public reward_value;
  at /home/jiaming/slither_fp_files/out8742.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'miner_winner_basic':
    |    uint256 public deadline;
    |    uint256 public time;
  > |    uint256 public price;
    |    uint256 public reward_value;
    |    token public token_reward;
  at /home/jiaming/slither_fp_files/out8742.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'miner_winner_basic':
    |    uint256 public time;
    |    uint256 public price;
  > |    uint256 public reward_value;
    |    token public token_reward;
    |    address[] public plyr;
  at /home/jiaming/slither_fp_files/out8742.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'miner_winner_basic':
    |    uint256 public price;
    |    uint256 public reward_value;
  > |    token public token_reward;
    |    address[] public plyr;
    |    uint256 public next_count;
  at /home/jiaming/slither_fp_files/out8742.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'miner_winner_basic':
    |    uint256 public reward_value;
    |    token public token_reward;
  > |    address[] public plyr;
    |    uint256 public next_count;
    |}
  at /home/jiaming/slither_fp_files/out8742.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'miner_winner_basic':
    |    token public token_reward;
    |    address[] public plyr;
  > |    uint256 public next_count;
    |}
    |
  at /home/jiaming/slither_fp_files/out8742.sol(57)


