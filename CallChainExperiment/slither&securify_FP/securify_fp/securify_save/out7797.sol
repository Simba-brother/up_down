Processing contract: /home/jiaming/slither_fp_files/out7797.sol:Approvable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out7797.sol:DIDToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out7797.sol:Distense
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out7797.sol:PullRequests
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out7797.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out7797.sol:Tasks
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Approvable':
    |pragma solidity ^0.4.24;
    |
  > |contract Approvable {
    |
    |    mapping(address => bool) public approved;
  at /home/jiaming/slither_fp_files/out7797.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Approvable':
    |contract Approvable {
    |
  > |    mapping(address => bool) public approved;
    |
    |    constructor () public {
  at /home/jiaming/slither_fp_files/out7797.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Approvable':
    |    }
    |
  > |    function approve(address _address) public onlyApproved {
    |        require(_address != address(0));
    |        approved[_address] = true;
  at /home/jiaming/slither_fp_files/out7797.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Approvable':
    |    }
    |
  > |    function revokeApproval(address _address) public onlyApproved {
    |        require(_address != address(0));
    |        approved[_address] = false;
  at /home/jiaming/slither_fp_files/out7797.sol(16)

[31mViolation[0m for UnrestrictedWrite in contract 'Approvable':
    |    function approve(address _address) public onlyApproved {
    |        require(_address != address(0));
  > |        approved[_address] = true;
    |    }
    |
  at /home/jiaming/slither_fp_files/out7797.sol(13)

[31mViolation[0m for UnrestrictedWrite in contract 'Approvable':
    |    function revokeApproval(address _address) public onlyApproved {
    |        require(_address != address(0));
  > |        approved[_address] = false;
    |    }
    |
  at /home/jiaming/slither_fp_files/out7797.sol(18)

[31mViolation[0m for DAOConstantGas in contract 'DIDToken':
    |        totalSupply = SafeMath.sub(totalSupply, numDIDToExchange);
    |
  > |        msg.sender.transfer(numWeiToIssue);
    |
    |        if (DIDHolders[msg.sender].balance == 0) {
  at /home/jiaming/slither_fp_files/out7797.sol(131)

[33mWarning[0m for LockedEther in contract 'DIDToken':
    |}
    |
  > |contract DIDToken is Approvable {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/slither_fp_files/out7797.sol(27)

[33mWarning[0m for TODAmount in contract 'DIDToken':
    |        totalSupply = SafeMath.sub(totalSupply, numDIDToExchange);
    |
  > |        msg.sender.transfer(numWeiToIssue);
    |
    |        if (DIDHolders[msg.sender].balance == 0) {
  at /home/jiaming/slither_fp_files/out7797.sol(131)

[33mWarning[0m for TODReceiver in contract 'DIDToken':
    |        totalSupply = SafeMath.sub(totalSupply, numDIDToExchange);
    |
  > |        msg.sender.transfer(numWeiToIssue);
    |
    |        if (DIDHolders[msg.sender].balance == 0) {
  at /home/jiaming/slither_fp_files/out7797.sol(131)

[33mWarning[0m for UnhandledException in contract 'DIDToken':
    |
    |        Distense distense = Distense(DistenseAddress);
  > |        uint256 DIDPerEther = distense.getParameterValueByTitle(distense.didPerEtherParameterTitle());
    |
    |        require(numDIDToExchange < totalSupply);
  at /home/jiaming/slither_fp_files/out7797.sol(118)

[33mWarning[0m for UnhandledException in contract 'DIDToken':
    |        totalSupply = SafeMath.sub(totalSupply, numDIDToExchange);
    |
  > |        msg.sender.transfer(numWeiToIssue);
    |
    |        if (DIDHolders[msg.sender].balance == 0) {
  at /home/jiaming/slither_fp_files/out7797.sol(131)

[33mWarning[0m for UnhandledException in contract 'DIDToken':
    |
    |        Distense distense = Distense(DistenseAddress);
  > |        uint256 DIDPerEther = SafeMath.div(distense.getParameterValueByTitle(distense.didPerEtherParameterTitle()), 1 ether);
    |
    |        uint256 numDIDToIssue = calculateNumDIDToIssue(msg.value, DIDPerEther);
  at /home/jiaming/slither_fp_files/out7797.sol(146)

[33mWarning[0m for UnhandledException in contract 'DIDToken':
    |
    |        Distense distense = Distense(DistenseAddress);
  > |        uint256 DIDPerEther = distense.getParameterValueByTitle(distense.didPerEtherParameterTitle());
    |
    |        return (DIDFromContributions * 1 ether) / DIDPerEther;
  at /home/jiaming/slither_fp_files/out7797.sol(185)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DIDToken':
    |
    |        Distense distense = Distense(DistenseAddress);
  > |        uint256 DIDPerEther = distense.getParameterValueByTitle(distense.didPerEtherParameterTitle());
    |
    |        require(numDIDToExchange < totalSupply);
  at /home/jiaming/slither_fp_files/out7797.sol(118)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DIDToken':
    |        totalSupply = SafeMath.sub(totalSupply, numDIDToExchange);
    |
  > |        msg.sender.transfer(numWeiToIssue);
    |
    |        if (DIDHolders[msg.sender].balance == 0) {
  at /home/jiaming/slither_fp_files/out7797.sol(131)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DIDToken':
    |
    |        Distense distense = Distense(DistenseAddress);
  > |        uint256 DIDPerEther = SafeMath.div(distense.getParameterValueByTitle(distense.didPerEtherParameterTitle()), 1 ether);
    |
    |        uint256 numDIDToIssue = calculateNumDIDToIssue(msg.value, DIDPerEther);
  at /home/jiaming/slither_fp_files/out7797.sol(146)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DIDToken':
    |
    |        Distense distense = Distense(DistenseAddress);
  > |        uint256 DIDPerEther = distense.getParameterValueByTitle(distense.didPerEtherParameterTitle());
    |
    |        return (DIDFromContributions * 1 ether) / DIDPerEther;
  at /home/jiaming/slither_fp_files/out7797.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'DIDToken':
    |pragma solidity ^0.4.24;
    |
  > |contract Approvable {
    |
    |    mapping(address => bool) public approved;
  at /home/jiaming/slither_fp_files/out7797.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'DIDToken':
    |}
    |
  > |contract DIDToken is Approvable {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/slither_fp_files/out7797.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'DIDToken':
    |
    |        _numDID = _numDID * 1 ether;
  > |        totalSupply = SafeMath.add(totalSupply, _numDID);
    |        
    |        uint256 balance = DIDHolders[_recipient].balance;
  at /home/jiaming/slither_fp_files/out7797.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'DIDToken':
    |        
    |        uint256 balance = DIDHolders[_recipient].balance;
  > |        DIDHolders[_recipient].balance = SafeMath.add(balance, _numDID);
    |
    |        //  If is a new DIDHolder, set their position in DIDHoldersArray
  at /home/jiaming/slither_fp_files/out7797.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'DIDToken':
    |        //  If is a new DIDHolder, set their position in DIDHoldersArray
    |        if (DIDHolders[_recipient].DIDHoldersIndex == 0) {
  > |            uint256 index = DIDHoldersArray.push(_recipient) - 1;
    |            DIDHolders[_recipient].DIDHoldersIndex = index;
    |        }
  at /home/jiaming/slither_fp_files/out7797.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'DIDToken':
    |        if (DIDHolders[_recipient].DIDHoldersIndex == 0) {
    |            uint256 index = DIDHoldersArray.push(_recipient) - 1;
  > |            DIDHolders[_recipient].DIDHoldersIndex = index;
    |        }
    |
  at /home/jiaming/slither_fp_files/out7797.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'DIDToken':
    |        require(SafeMath.sub(totalSupply, numDID ) >= 0);
    |
  > |        totalSupply = SafeMath.sub(totalSupply, numDID);
    |        DIDHolders[_address].balance = SafeMath.sub(DIDHolders[_address].balance, numDID);
    |
  at /home/jiaming/slither_fp_files/out7797.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'DIDToken':
    |
    |        totalSupply = SafeMath.sub(totalSupply, numDID);
  > |        DIDHolders[_address].balance = SafeMath.sub(DIDHolders[_address].balance, numDID);
    |
    |        //  If DIDHolder has exchanged all of their DID remove from DIDHoldersArray
  at /home/jiaming/slither_fp_files/out7797.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'DIDToken':
    |
    |        //  Adjust number of DID owned first
  > |        DIDHolders[msg.sender].balance = SafeMath.sub(DIDHolders[msg.sender].balance, numDIDToExchange);
    |        DIDHolders[msg.sender].netContributionsDID = SafeMath.sub(DIDHolders[msg.sender].netContributionsDID, numDIDToExchange);
    |        totalSupply = SafeMath.sub(totalSupply, numDIDToExchange);
  at /home/jiaming/slither_fp_files/out7797.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'DIDToken':
    |        //  Adjust number of DID owned first
    |        DIDHolders[msg.sender].balance = SafeMath.sub(DIDHolders[msg.sender].balance, numDIDToExchange);
  > |        DIDHolders[msg.sender].netContributionsDID = SafeMath.sub(DIDHolders[msg.sender].netContributionsDID, numDIDToExchange);
    |        totalSupply = SafeMath.sub(totalSupply, numDIDToExchange);
    |
  at /home/jiaming/slither_fp_files/out7797.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'DIDToken':
    |        DIDHolders[msg.sender].balance = SafeMath.sub(DIDHolders[msg.sender].balance, numDIDToExchange);
    |        DIDHolders[msg.sender].netContributionsDID = SafeMath.sub(DIDHolders[msg.sender].netContributionsDID, numDIDToExchange);
  > |        totalSupply = SafeMath.sub(totalSupply, numDIDToExchange);
    |
    |        msg.sender.transfer(numWeiToIssue);
  at /home/jiaming/slither_fp_files/out7797.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'DIDToken':
    |        uint256 numDIDToIssue = calculateNumDIDToIssue(msg.value, DIDPerEther);
    |        require(DIDHolders[msg.sender].netContributionsDID >= numDIDToIssue);
  > |        totalSupply = SafeMath.add(totalSupply, numDIDToIssue);
    |        DIDHolders[msg.sender].balance = SafeMath.add(DIDHolders[msg.sender].balance, numDIDToIssue);
    |        DIDHolders[msg.sender].netContributionsDID = SafeMath.sub(DIDHolders[msg.sender].netContributionsDID, numDIDToIssue);
  at /home/jiaming/slither_fp_files/out7797.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'DIDToken':
    |        require(DIDHolders[msg.sender].netContributionsDID >= numDIDToIssue);
    |        totalSupply = SafeMath.add(totalSupply, numDIDToIssue);
  > |        DIDHolders[msg.sender].balance = SafeMath.add(DIDHolders[msg.sender].balance, numDIDToIssue);
    |        DIDHolders[msg.sender].netContributionsDID = SafeMath.sub(DIDHolders[msg.sender].netContributionsDID, numDIDToIssue);
    |
  at /home/jiaming/slither_fp_files/out7797.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'DIDToken':
    |        totalSupply = SafeMath.add(totalSupply, numDIDToIssue);
    |        DIDHolders[msg.sender].balance = SafeMath.add(DIDHolders[msg.sender].balance, numDIDToIssue);
  > |        DIDHolders[msg.sender].netContributionsDID = SafeMath.sub(DIDHolders[msg.sender].netContributionsDID, numDIDToIssue);
    |
    |        DIDHolders[msg.sender].weiInvested += msg.value;
  at /home/jiaming/slither_fp_files/out7797.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'DIDToken':
    |        DIDHolders[msg.sender].netContributionsDID = SafeMath.sub(DIDHolders[msg.sender].netContributionsDID, numDIDToIssue);
    |
  > |        DIDHolders[msg.sender].weiInvested += msg.value;
    |        investedAggregate = investedAggregate + msg.value;
    |
  at /home/jiaming/slither_fp_files/out7797.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'DIDToken':
    |
    |        DIDHolders[msg.sender].weiInvested += msg.value;
  > |        investedAggregate = investedAggregate + msg.value;
    |
    |        emit LogIssueDID(msg.sender, numDIDToIssue);
  at /home/jiaming/slither_fp_files/out7797.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'DIDToken':
    |    function incrementDIDFromContributions(address _contributor, uint256 _reward) onlyApproved public {
    |        uint256 weiReward = _reward * 1 ether;
  > |        DIDHolders[_contributor].netContributionsDID = SafeMath.add(DIDHolders[_contributor].netContributionsDID, weiReward);
    |    }
    |
  at /home/jiaming/slither_fp_files/out7797.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'DIDToken':
    |
    |    function incrementTasksCompleted(address _contributor) onlyApproved public returns (bool) {
  > |        DIDHolders[_contributor].tasksCompleted++;
    |        return true;
    |    }
  at /home/jiaming/slither_fp_files/out7797.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'DIDToken':
    |        if (DIDHoldersArray.length > 1) {
    |            address lastElement = DIDHoldersArray[DIDHoldersArray.length - 1];
  > |            DIDHoldersArray[DIDHolders[holder].DIDHoldersIndex] = lastElement;
    |            DIDHoldersArray.length--;
    |            delete DIDHolders[holder];
  at /home/jiaming/slither_fp_files/out7797.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'DIDToken':
    |            DIDHoldersArray[DIDHolders[holder].DIDHoldersIndex] = lastElement;
    |            DIDHoldersArray.length--;
  > |            delete DIDHolders[holder];
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out7797.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'DIDToken':
    |            DIDHoldersArray[DIDHolders[holder].DIDHoldersIndex] = lastElement;
    |            DIDHoldersArray.length--;
  > |            delete DIDHolders[holder];
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out7797.sol(240)

[33mWarning[0m for LockedEther in contract 'Distense':
    |}
    |
  > |contract Distense is Approvable {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/slither_fp_files/out7797.sol(250)

[31mViolation[0m for MissingInputValidation in contract 'Distense':
    |contract Approvable {
    |
  > |    mapping(address => bool) public approved;
    |
    |    constructor () public {
  at /home/jiaming/slither_fp_files/out7797.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'Distense':
    |    }
    |
  > |    mapping(bytes32 => Parameter) public parameters;
    |
    |    Parameter public votingIntervalParameter;
  at /home/jiaming/slither_fp_files/out7797.sol(276)

[31mViolation[0m for MissingInputValidation in contract 'Distense':
    |    }
    |
  > |    function getParameterValueByTitle(bytes32 _title) public view returns (uint256) {
    |        return parameters[_title].value;
    |    }
  at /home/jiaming/slither_fp_files/out7797.sol(426)

[31mViolation[0m for MissingInputValidation in contract 'Distense':
    |          If they voted a value that would affect the parameter's value by more than their percentage DID ownership we affect the value by their percentage DID ownership.
    |    */
  > |    function voteOnParameter(bytes32 _title, int256 _voteValue)
    |        public
    |        votingIntervalReached(msg.sender, _title)
  at /home/jiaming/slither_fp_files/out7797.sol(444)

[31mViolation[0m for MissingInputValidation in contract 'Distense':
    |    }
    |
  > |    function getParameterByTitle(bytes32 _title) public view returns (bytes32, uint256) {
    |        Parameter memory param = parameters[_title];
    |        return (param.title, param.value);
  at /home/jiaming/slither_fp_files/out7797.sol(489)

[31mViolation[0m for MissingInputValidation in contract 'Distense':
    |    }
    |
  > |    function setDIDTokenAddress(address _didTokenAddress) public onlyApproved {
    |        DIDTokenAddress = _didTokenAddress;
    |    }
  at /home/jiaming/slither_fp_files/out7797.sol(509)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |    }
    |
  > |    function approve(address _address) public onlyApproved {
    |        require(_address != address(0));
    |        approved[_address] = true;
  at /home/jiaming/slither_fp_files/out7797.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |    }
    |
  > |    function revokeApproval(address _address) public onlyApproved {
    |        require(_address != address(0));
    |        approved[_address] = false;
  at /home/jiaming/slither_fp_files/out7797.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |}
    |
  > |contract Distense is Approvable {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/slither_fp_files/out7797.sol(250)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |    using SafeMath for uint256;
    |
  > |    address public DIDTokenAddress;
    |
    |    /*
  at /home/jiaming/slither_fp_files/out7797.sol(254)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |
    |    //  Titles are what uniquely identify parameters, so query by titles when iterating with clients
  > |    bytes32[] public parameterTitles;
    |
    |    struct Parameter {
  at /home/jiaming/slither_fp_files/out7797.sol(263)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |    mapping(bytes32 => Parameter) public parameters;
    |
  > |    Parameter public votingIntervalParameter;
    |    bytes32 public votingIntervalParameterTitle = 'votingInterval';
    |
  at /home/jiaming/slither_fp_files/out7797.sol(278)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |
    |    Parameter public votingIntervalParameter;
  > |    bytes32 public votingIntervalParameterTitle = 'votingInterval';
    |
    |    Parameter public pctDIDToDetermineTaskRewardParameter;
  at /home/jiaming/slither_fp_files/out7797.sol(279)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |    bytes32 public votingIntervalParameterTitle = 'votingInterval';
    |
  > |    Parameter public pctDIDToDetermineTaskRewardParameter;
    |    bytes32 public pctDIDToDetermineTaskRewardParameterTitle = 'pctDIDToDetermineTaskReward';
    |
  at /home/jiaming/slither_fp_files/out7797.sol(281)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |
    |    Parameter public pctDIDToDetermineTaskRewardParameter;
  > |    bytes32 public pctDIDToDetermineTaskRewardParameterTitle = 'pctDIDToDetermineTaskReward';
    |
    |    Parameter public pctDIDRequiredToMergePullRequest;
  at /home/jiaming/slither_fp_files/out7797.sol(282)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |    bytes32 public pctDIDToDetermineTaskRewardParameterTitle = 'pctDIDToDetermineTaskReward';
    |
  > |    Parameter public pctDIDRequiredToMergePullRequest;
    |    bytes32 public pctDIDRequiredToMergePullRequestTitle = 'pctDIDRequiredToMergePullRequest';
    |
  at /home/jiaming/slither_fp_files/out7797.sol(284)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |
    |    Parameter public pctDIDRequiredToMergePullRequest;
  > |    bytes32 public pctDIDRequiredToMergePullRequestTitle = 'pctDIDRequiredToMergePullRequest';
    |
    |    Parameter public maxRewardParameter;
  at /home/jiaming/slither_fp_files/out7797.sol(285)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |    bytes32 public pctDIDRequiredToMergePullRequestTitle = 'pctDIDRequiredToMergePullRequest';
    |
  > |    Parameter public maxRewardParameter;
    |    bytes32 public maxRewardParameterTitle = 'maxReward';
    |
  at /home/jiaming/slither_fp_files/out7797.sol(287)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |
    |    Parameter public maxRewardParameter;
  > |    bytes32 public maxRewardParameterTitle = 'maxReward';
    |
    |    Parameter public numDIDRequiredToApproveVotePullRequestParameter;
  at /home/jiaming/slither_fp_files/out7797.sol(288)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |    bytes32 public maxRewardParameterTitle = 'maxReward';
    |
  > |    Parameter public numDIDRequiredToApproveVotePullRequestParameter;
    |    bytes32 public numDIDRequiredToApproveVotePullRequestParameterTitle = 'numDIDReqApproveVotePullRequest';
    |
  at /home/jiaming/slither_fp_files/out7797.sol(290)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |
    |    Parameter public numDIDRequiredToApproveVotePullRequestParameter;
  > |    bytes32 public numDIDRequiredToApproveVotePullRequestParameterTitle = 'numDIDReqApproveVotePullRequest';
    |
    |    Parameter public numDIDRequiredToTaskRewardVoteParameter;
  at /home/jiaming/slither_fp_files/out7797.sol(291)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |    bytes32 public numDIDRequiredToApproveVotePullRequestParameterTitle = 'numDIDReqApproveVotePullRequest';
    |
  > |    Parameter public numDIDRequiredToTaskRewardVoteParameter;
    |    bytes32 public numDIDRequiredToTaskRewardVoteParameterTitle = 'numDIDRequiredToTaskRewardVote';
    |
  at /home/jiaming/slither_fp_files/out7797.sol(293)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |
    |    Parameter public numDIDRequiredToTaskRewardVoteParameter;
  > |    bytes32 public numDIDRequiredToTaskRewardVoteParameterTitle = 'numDIDRequiredToTaskRewardVote';
    |
    |    Parameter public minNumberOfTaskRewardVotersParameter;
  at /home/jiaming/slither_fp_files/out7797.sol(294)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |    bytes32 public numDIDRequiredToTaskRewardVoteParameterTitle = 'numDIDRequiredToTaskRewardVote';
    |
  > |    Parameter public minNumberOfTaskRewardVotersParameter;
    |    bytes32 public minNumberOfTaskRewardVotersParameterTitle = 'minNumberOfTaskRewardVoters';
    |
  at /home/jiaming/slither_fp_files/out7797.sol(296)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |
    |    Parameter public minNumberOfTaskRewardVotersParameter;
  > |    bytes32 public minNumberOfTaskRewardVotersParameterTitle = 'minNumberOfTaskRewardVoters';
    |
    |    Parameter public numDIDRequiredToAddTaskParameter;
  at /home/jiaming/slither_fp_files/out7797.sol(297)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |    bytes32 public minNumberOfTaskRewardVotersParameterTitle = 'minNumberOfTaskRewardVoters';
    |
  > |    Parameter public numDIDRequiredToAddTaskParameter;
    |    bytes32 public numDIDRequiredToAddTaskParameterTitle = 'numDIDRequiredToAddTask';
    |
  at /home/jiaming/slither_fp_files/out7797.sol(299)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |
    |    Parameter public numDIDRequiredToAddTaskParameter;
  > |    bytes32 public numDIDRequiredToAddTaskParameterTitle = 'numDIDRequiredToAddTask';
    |
    |    Parameter public defaultRewardParameter;
  at /home/jiaming/slither_fp_files/out7797.sol(300)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |    bytes32 public numDIDRequiredToAddTaskParameterTitle = 'numDIDRequiredToAddTask';
    |
  > |    Parameter public defaultRewardParameter;
    |    bytes32 public defaultRewardParameterTitle = 'defaultReward';
    |
  at /home/jiaming/slither_fp_files/out7797.sol(302)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |
    |    Parameter public defaultRewardParameter;
  > |    bytes32 public defaultRewardParameterTitle = 'defaultReward';
    |
    |    Parameter public didPerEtherParameter;
  at /home/jiaming/slither_fp_files/out7797.sol(303)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |    bytes32 public defaultRewardParameterTitle = 'defaultReward';
    |
  > |    Parameter public didPerEtherParameter;
    |    bytes32 public didPerEtherParameterTitle = 'didPerEther';
    |
  at /home/jiaming/slither_fp_files/out7797.sol(305)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |
    |    Parameter public didPerEtherParameter;
  > |    bytes32 public didPerEtherParameterTitle = 'didPerEther';
    |
    |    Parameter public votingPowerLimitParameter;
  at /home/jiaming/slither_fp_files/out7797.sol(306)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |    bytes32 public didPerEtherParameterTitle = 'didPerEther';
    |
  > |    Parameter public votingPowerLimitParameter;
    |    bytes32 public votingPowerLimitParameterTitle = 'votingPowerLimit';
    |
  at /home/jiaming/slither_fp_files/out7797.sol(308)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |
    |    Parameter public votingPowerLimitParameter;
  > |    bytes32 public votingPowerLimitParameterTitle = 'votingPowerLimit';
    |
    |    event LogParameterValueUpdate(bytes32 title, uint256 value);
  at /home/jiaming/slither_fp_files/out7797.sol(309)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |    }
    |
  > |    function getNumParameters() public view returns (uint256) {
    |        return parameterTitles.length;
    |    }
  at /home/jiaming/slither_fp_files/out7797.sol(494)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |    }
    |
  > |    function updateParameterValue(bytes32 _title, uint256 _newValue) internal returns (uint256) {
    |        Parameter storage parameter = parameters[_title];
    |        parameter.value = _newValue;
  at /home/jiaming/slither_fp_files/out7797.sol(498)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |    }
    |
  > |    function updateLastVotedOnParameter(bytes32 _title, address voter) internal returns (bool) {
    |        Parameter storage parameter = parameters[_title];
    |        parameter.votes[voter].lastVoted = now;
  at /home/jiaming/slither_fp_files/out7797.sol(504)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |  }
    |
  > |  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    |    // assert(b > 0); // Solidity automatically throws when dividing by 0
    |    uint256 c = a / b;
  at /home/jiaming/slither_fp_files/out7797.sol(872)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |  }
    |
  > |  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/slither_fp_files/out7797.sol(879)

[33mWarning[0m for MissingInputValidation in contract 'Distense':
    |  }
    |
  > |  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a + b;
    |    assert(c >= a);
  at /home/jiaming/slither_fp_files/out7797.sol(884)

[33mWarning[0m for UnhandledException in contract 'Distense':
    |
    |        DIDToken didToken = DIDToken(DIDTokenAddress);
  > |        uint256 votersDIDPercent = didToken.pctDIDOwned(msg.sender);
    |        require(votersDIDPercent > 0);
    |
  at /home/jiaming/slither_fp_files/out7797.sol(451)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Distense':
    |
    |        DIDToken didToken = DIDToken(DIDTokenAddress);
  > |        uint256 votersDIDPercent = didToken.pctDIDOwned(msg.sender);
    |        require(votersDIDPercent > 0);
    |
  at /home/jiaming/slither_fp_files/out7797.sol(451)

[31mViolation[0m for UnrestrictedWrite in contract 'Distense':
    |    function approve(address _address) public onlyApproved {
    |        require(_address != address(0));
  > |        approved[_address] = true;
    |    }
    |
  at /home/jiaming/slither_fp_files/out7797.sol(13)

[31mViolation[0m for UnrestrictedWrite in contract 'Distense':
    |    function revokeApproval(address _address) public onlyApproved {
    |        require(_address != address(0));
  > |        approved[_address] = false;
    |    }
    |
  at /home/jiaming/slither_fp_files/out7797.sol(18)

[31mViolation[0m for UnrestrictedWrite in contract 'Distense':
    |    function updateParameterValue(bytes32 _title, uint256 _newValue) internal returns (uint256) {
    |        Parameter storage parameter = parameters[_title];
  > |        parameter.value = _newValue;
    |        return parameter.value;
    |    }
  at /home/jiaming/slither_fp_files/out7797.sol(500)

[31mViolation[0m for UnrestrictedWrite in contract 'Distense':
    |    function updateLastVotedOnParameter(bytes32 _title, address voter) internal returns (bool) {
    |        Parameter storage parameter = parameters[_title];
  > |        parameter.votes[voter].lastVoted = now;
    |    }
    |
  at /home/jiaming/slither_fp_files/out7797.sol(506)

[31mViolation[0m for UnrestrictedWrite in contract 'Distense':
    |
    |    function setDIDTokenAddress(address _didTokenAddress) public onlyApproved {
  > |        DIDTokenAddress = _didTokenAddress;
    |    }
    |
  at /home/jiaming/slither_fp_files/out7797.sol(510)

[33mWarning[0m for UnrestrictedWrite in contract 'Distense':
    |    function updateLastVotedOnParameter(bytes32 _title, address voter) internal returns (bool) {
    |        Parameter storage parameter = parameters[_title];
  > |        parameter.votes[voter].lastVoted = now;
    |    }
    |
  at /home/jiaming/slither_fp_files/out7797.sol(506)

[33mWarning[0m for LockedEther in contract 'PullRequests':
    |}
    |
  > |contract PullRequests is Approvable {
    |
    |    address public DIDTokenAddress;
  at /home/jiaming/slither_fp_files/out7797.sol(521)

[31mViolation[0m for MissingInputValidation in contract 'PullRequests':
    |contract Approvable {
    |
  > |    mapping(address => bool) public approved;
    |
    |    constructor () public {
  at /home/jiaming/slither_fp_files/out7797.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'PullRequests':
    |    }
    |
  > |    function addPullRequest(bytes32 _prId, bytes32 _taskId, uint128 _prNum) external returns (bool) {
    |        pullRequests[_prId].contributor = msg.sender;
    |        pullRequests[_prId].taskId = _taskId;
  at /home/jiaming/slither_fp_files/out7797.sol(553)

[31mViolation[0m for MissingInputValidation in contract 'PullRequests':
    |    }
    |
  > |    function getPullRequestById(bytes32 _prId) external view returns (address, bytes32, uint128, uint256) {
    |        PullRequest memory pr = pullRequests[_prId];
    |        return (pr.contributor, pr.taskId, pr.prNum, pr.pctDIDApproved);
  at /home/jiaming/slither_fp_files/out7797.sol(564)

[31mViolation[0m for MissingInputValidation in contract 'PullRequests':
    |    }
    |
  > |    function approvePullRequest(bytes32 _prId)
    |        hasEnoughDIDToApprovePR
    |        external
  at /home/jiaming/slither_fp_files/out7797.sol(573)

[31mViolation[0m for MissingInputValidation in contract 'PullRequests':
    |    }
    |
  > |    function setDIDTokenAddress(address _DIDTokenAddress) public onlyApproved {
    |        DIDTokenAddress = _DIDTokenAddress;
    |    }
  at /home/jiaming/slither_fp_files/out7797.sol(634)

[31mViolation[0m for MissingInputValidation in contract 'PullRequests':
    |    }
    |
  > |    function setDistenseAddress(address _DistenseAddress) public onlyApproved {
    |        DistenseAddress = _DistenseAddress;
    |    }
  at /home/jiaming/slither_fp_files/out7797.sol(638)

[31mViolation[0m for MissingInputValidation in contract 'PullRequests':
    |    }
    |
  > |    function setTasksAddress(address _TasksAddress) public onlyApproved {
    |        TasksAddress = _TasksAddress;
    |    }
  at /home/jiaming/slither_fp_files/out7797.sol(642)

[33mWarning[0m for MissingInputValidation in contract 'PullRequests':
    |    }
    |
  > |    function approve(address _address) public onlyApproved {
    |        require(_address != address(0));
    |        approved[_address] = true;
  at /home/jiaming/slither_fp_files/out7797.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'PullRequests':
    |    }
    |
  > |    function revokeApproval(address _address) public onlyApproved {
    |        require(_address != address(0));
    |        approved[_address] = false;
  at /home/jiaming/slither_fp_files/out7797.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'PullRequests':
    |}
    |
  > |contract PullRequests is Approvable {
    |
    |    address public DIDTokenAddress;
  at /home/jiaming/slither_fp_files/out7797.sol(521)

[33mWarning[0m for MissingInputValidation in contract 'PullRequests':
    |contract PullRequests is Approvable {
    |
  > |    address public DIDTokenAddress;
    |    address public DistenseAddress;
    |    address public TasksAddress;
  at /home/jiaming/slither_fp_files/out7797.sol(523)

[33mWarning[0m for MissingInputValidation in contract 'PullRequests':
    |
    |    address public DIDTokenAddress;
  > |    address public DistenseAddress;
    |    address public TasksAddress;
    |
  at /home/jiaming/slither_fp_files/out7797.sol(524)

[33mWarning[0m for MissingInputValidation in contract 'PullRequests':
    |    address public DIDTokenAddress;
    |    address public DistenseAddress;
  > |    address public TasksAddress;
    |
    |    struct PullRequest {
  at /home/jiaming/slither_fp_files/out7797.sol(525)

[33mWarning[0m for MissingInputValidation in contract 'PullRequests':
    |    }
    |
  > |    bytes32[] public pullRequestIds;
    |
    |    mapping(bytes32 => PullRequest) pullRequests;
  at /home/jiaming/slither_fp_files/out7797.sol(535)

[33mWarning[0m for MissingInputValidation in contract 'PullRequests':
    |    }
    |
  > |    function getNumPullRequests() external view returns (uint256) {
    |        return pullRequestIds.length;
    |    }
  at /home/jiaming/slither_fp_files/out7797.sol(569)

[33mWarning[0m for UnhandledException in contract 'PullRequests':
    |        //  This is not very gas efficient at all but the stack was too deep.  Need to refactor/research ways to improve
    |        //  Increment _pr.pctDIDApproved by the lower of the votingPowerLimitParameter or the voters pctDIDOwned
  > |        _pr.pctDIDApproved += didToken.pctDIDOwned(msg.sender) > distense.getParameterValueByTitle(
    |            distense.votingPowerLimitParameterTitle()
    |        ) ? distense.getParameterValueByTitle(
  at /home/jiaming/slither_fp_files/out7797.sol(590)

[33mWarning[0m for UnhandledException in contract 'PullRequests':
    |        //  Increment _pr.pctDIDApproved by the lower of the votingPowerLimitParameter or the voters pctDIDOwned
    |        _pr.pctDIDApproved += didToken.pctDIDOwned(msg.sender) > distense.getParameterValueByTitle(
  > |            distense.votingPowerLimitParameterTitle()
    |        ) ? distense.getParameterValueByTitle(
    |            distense.votingPowerLimitParameterTitle()
  at /home/jiaming/slither_fp_files/out7797.sol(591)

[33mWarning[0m for UnhandledException in contract 'PullRequests':
    |        _pr.pctDIDApproved += didToken.pctDIDOwned(msg.sender) > distense.getParameterValueByTitle(
    |            distense.votingPowerLimitParameterTitle()
  > |        ) ? distense.getParameterValueByTitle(
    |            distense.votingPowerLimitParameterTitle()
    |        ) : didToken.pctDIDOwned(msg.sender);
  at /home/jiaming/slither_fp_files/out7797.sol(592)

[33mWarning[0m for UnhandledException in contract 'PullRequests':
    |            distense.votingPowerLimitParameterTitle()
    |        ) ? distense.getParameterValueByTitle(
  > |            distense.votingPowerLimitParameterTitle()
    |        ) : didToken.pctDIDOwned(msg.sender);
    |
  at /home/jiaming/slither_fp_files/out7797.sol(593)

[33mWarning[0m for UnhandledException in contract 'PullRequests':
    |        ) ? distense.getParameterValueByTitle(
    |            distense.votingPowerLimitParameterTitle()
  > |        ) : didToken.pctDIDOwned(msg.sender);
    |
    |        if (
  at /home/jiaming/slither_fp_files/out7797.sol(594)

[33mWarning[0m for UnhandledException in contract 'PullRequests':
    |
    |        if (
  > |            _pr.pctDIDApproved > distense.getParameterValueByTitle(
    |                distense.pctDIDRequiredToMergePullRequestTitle()
    |            )
  at /home/jiaming/slither_fp_files/out7797.sol(597)

[33mWarning[0m for UnhandledException in contract 'PullRequests':
    |        if (
    |            _pr.pctDIDApproved > distense.getParameterValueByTitle(
  > |                distense.pctDIDRequiredToMergePullRequestTitle()
    |            )
    |        ) {
  at /home/jiaming/slither_fp_files/out7797.sol(598)

[33mWarning[0m for UnhandledException in contract 'PullRequests':
    |            uint256 reward;
    |            Tasks.RewardStatus rewardStatus;
  > |            (reward, rewardStatus) = tasks.getTaskRewardAndStatus(_pr.taskId);
    |
    |            require(rewardStatus != Tasks.RewardStatus.PAID);
  at /home/jiaming/slither_fp_files/out7797.sol(605)

[33mWarning[0m for UnhandledException in contract 'PullRequests':
    |
    |            require(rewardStatus != Tasks.RewardStatus.PAID);
  > |            Tasks.RewardStatus updatedRewardStatus = tasks.setTaskRewardPaid(_pr.taskId);
    |
    |            //  Only issueDID after we confirm taskRewardPaid
  at /home/jiaming/slither_fp_files/out7797.sol(608)

[33mWarning[0m for UnhandledException in contract 'PullRequests':
    |            //  Only issueDID after we confirm taskRewardPaid
    |            require(updatedRewardStatus == Tasks.RewardStatus.PAID);
  > |            didToken.rewardContributor(_pr.contributor, reward);
    |
    |            emit LogRewardPullRequest(_prId, _pr.taskId, _pr.prNum);
  at /home/jiaming/slither_fp_files/out7797.sol(612)

[33mWarning[0m for UnhandledException in contract 'PullRequests':
    |
    |        Distense distense = Distense(DistenseAddress);
  > |        uint256 threshold = distense.getParameterValueByTitle(
    |            distense.numDIDRequiredToApproveVotePullRequestParameterTitle()
    |        );
  at /home/jiaming/slither_fp_files/out7797.sol(624)

[33mWarning[0m for UnhandledException in contract 'PullRequests':
    |        Distense distense = Distense(DistenseAddress);
    |        uint256 threshold = distense.getParameterValueByTitle(
  > |            distense.numDIDRequiredToApproveVotePullRequestParameterTitle()
    |        );
    |
  at /home/jiaming/slither_fp_files/out7797.sol(625)

[33mWarning[0m for UnhandledException in contract 'PullRequests':
    |        DIDToken didToken = DIDToken(DIDTokenAddress);
    |
  > |        require(didToken.getNumContributionsDID(msg.sender) > threshold);
    |        _;
    |    }
  at /home/jiaming/slither_fp_files/out7797.sol(630)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PullRequests':
    |        //  This is not very gas efficient at all but the stack was too deep.  Need to refactor/research ways to improve
    |        //  Increment _pr.pctDIDApproved by the lower of the votingPowerLimitParameter or the voters pctDIDOwned
  > |        _pr.pctDIDApproved += didToken.pctDIDOwned(msg.sender) > distense.getParameterValueByTitle(
    |            distense.votingPowerLimitParameterTitle()
    |        ) ? distense.getParameterValueByTitle(
  at /home/jiaming/slither_fp_files/out7797.sol(590)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PullRequests':
    |        //  Increment _pr.pctDIDApproved by the lower of the votingPowerLimitParameter or the voters pctDIDOwned
    |        _pr.pctDIDApproved += didToken.pctDIDOwned(msg.sender) > distense.getParameterValueByTitle(
  > |            distense.votingPowerLimitParameterTitle()
    |        ) ? distense.getParameterValueByTitle(
    |            distense.votingPowerLimitParameterTitle()
  at /home/jiaming/slither_fp_files/out7797.sol(591)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PullRequests':
    |        _pr.pctDIDApproved += didToken.pctDIDOwned(msg.sender) > distense.getParameterValueByTitle(
    |            distense.votingPowerLimitParameterTitle()
  > |        ) ? distense.getParameterValueByTitle(
    |            distense.votingPowerLimitParameterTitle()
    |        ) : didToken.pctDIDOwned(msg.sender);
  at /home/jiaming/slither_fp_files/out7797.sol(592)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PullRequests':
    |            distense.votingPowerLimitParameterTitle()
    |        ) ? distense.getParameterValueByTitle(
  > |            distense.votingPowerLimitParameterTitle()
    |        ) : didToken.pctDIDOwned(msg.sender);
    |
  at /home/jiaming/slither_fp_files/out7797.sol(593)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PullRequests':
    |        ) ? distense.getParameterValueByTitle(
    |            distense.votingPowerLimitParameterTitle()
  > |        ) : didToken.pctDIDOwned(msg.sender);
    |
    |        if (
  at /home/jiaming/slither_fp_files/out7797.sol(594)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PullRequests':
    |
    |        if (
  > |            _pr.pctDIDApproved > distense.getParameterValueByTitle(
    |                distense.pctDIDRequiredToMergePullRequestTitle()
    |            )
  at /home/jiaming/slither_fp_files/out7797.sol(597)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PullRequests':
    |        if (
    |            _pr.pctDIDApproved > distense.getParameterValueByTitle(
  > |                distense.pctDIDRequiredToMergePullRequestTitle()
    |            )
    |        ) {
  at /home/jiaming/slither_fp_files/out7797.sol(598)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PullRequests':
    |            uint256 reward;
    |            Tasks.RewardStatus rewardStatus;
  > |            (reward, rewardStatus) = tasks.getTaskRewardAndStatus(_pr.taskId);
    |
    |            require(rewardStatus != Tasks.RewardStatus.PAID);
  at /home/jiaming/slither_fp_files/out7797.sol(605)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PullRequests':
    |
    |            require(rewardStatus != Tasks.RewardStatus.PAID);
  > |            Tasks.RewardStatus updatedRewardStatus = tasks.setTaskRewardPaid(_pr.taskId);
    |
    |            //  Only issueDID after we confirm taskRewardPaid
  at /home/jiaming/slither_fp_files/out7797.sol(608)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PullRequests':
    |            //  Only issueDID after we confirm taskRewardPaid
    |            require(updatedRewardStatus == Tasks.RewardStatus.PAID);
  > |            didToken.rewardContributor(_pr.contributor, reward);
    |
    |            emit LogRewardPullRequest(_prId, _pr.taskId, _pr.prNum);
  at /home/jiaming/slither_fp_files/out7797.sol(612)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PullRequests':
    |
    |        Distense distense = Distense(DistenseAddress);
  > |        uint256 threshold = distense.getParameterValueByTitle(
    |            distense.numDIDRequiredToApproveVotePullRequestParameterTitle()
    |        );
  at /home/jiaming/slither_fp_files/out7797.sol(624)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PullRequests':
    |        Distense distense = Distense(DistenseAddress);
    |        uint256 threshold = distense.getParameterValueByTitle(
  > |            distense.numDIDRequiredToApproveVotePullRequestParameterTitle()
    |        );
    |
  at /home/jiaming/slither_fp_files/out7797.sol(625)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PullRequests':
    |        DIDToken didToken = DIDToken(DIDTokenAddress);
    |
  > |        require(didToken.getNumContributionsDID(msg.sender) > threshold);
    |        _;
    |    }
  at /home/jiaming/slither_fp_files/out7797.sol(630)

[31mViolation[0m for UnrestrictedWrite in contract 'PullRequests':
    |pragma solidity ^0.4.24;
    |
  > |contract Approvable {
    |
    |    mapping(address => bool) public approved;
  at /home/jiaming/slither_fp_files/out7797.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'PullRequests':
    |    function approve(address _address) public onlyApproved {
    |        require(_address != address(0));
  > |        approved[_address] = true;
    |    }
    |
  at /home/jiaming/slither_fp_files/out7797.sol(13)

[31mViolation[0m for UnrestrictedWrite in contract 'PullRequests':
    |    function revokeApproval(address _address) public onlyApproved {
    |        require(_address != address(0));
  > |        approved[_address] = false;
    |    }
    |
  at /home/jiaming/slither_fp_files/out7797.sol(18)

[31mViolation[0m for UnrestrictedWrite in contract 'PullRequests':
    |
    |    function addPullRequest(bytes32 _prId, bytes32 _taskId, uint128 _prNum) external returns (bool) {
  > |        pullRequests[_prId].contributor = msg.sender;
    |        pullRequests[_prId].taskId = _taskId;
    |        pullRequests[_prId].prNum = _prNum;
  at /home/jiaming/slither_fp_files/out7797.sol(554)

[31mViolation[0m for UnrestrictedWrite in contract 'PullRequests':
    |    function addPullRequest(bytes32 _prId, bytes32 _taskId, uint128 _prNum) external returns (bool) {
    |        pullRequests[_prId].contributor = msg.sender;
  > |        pullRequests[_prId].taskId = _taskId;
    |        pullRequests[_prId].prNum = _prNum;
    |        pullRequestIds.push(_prId);
  at /home/jiaming/slither_fp_files/out7797.sol(555)

[31mViolation[0m for UnrestrictedWrite in contract 'PullRequests':
    |        pullRequests[_prId].contributor = msg.sender;
    |        pullRequests[_prId].taskId = _taskId;
  > |        pullRequests[_prId].prNum = _prNum;
    |        pullRequestIds.push(_prId);
    |
  at /home/jiaming/slither_fp_files/out7797.sol(556)

[31mViolation[0m for UnrestrictedWrite in contract 'PullRequests':
    |        pullRequests[_prId].taskId = _taskId;
    |        pullRequests[_prId].prNum = _prNum;
  > |        pullRequestIds.push(_prId);
    |
    |        emit LogAddPullRequest(_prId, _taskId, _prNum);
  at /home/jiaming/slither_fp_files/out7797.sol(557)

[31mViolation[0m for UnrestrictedWrite in contract 'PullRequests':
    |
    |    function setDIDTokenAddress(address _DIDTokenAddress) public onlyApproved {
  > |        DIDTokenAddress = _DIDTokenAddress;
    |    }
    |
  at /home/jiaming/slither_fp_files/out7797.sol(635)

[31mViolation[0m for UnrestrictedWrite in contract 'PullRequests':
    |
    |    function setDistenseAddress(address _DistenseAddress) public onlyApproved {
  > |        DistenseAddress = _DistenseAddress;
    |    }
    |
  at /home/jiaming/slither_fp_files/out7797.sol(639)

[31mViolation[0m for UnrestrictedWrite in contract 'PullRequests':
    |
    |    function setTasksAddress(address _TasksAddress) public onlyApproved {
  > |        TasksAddress = _TasksAddress;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out7797.sol(643)

[33mWarning[0m for UnrestrictedWrite in contract 'PullRequests':
    |
    |        //  Record approval vote to prevent multiple voting
  > |        _pr.voted[msg.sender] = true;
    |
    |        //  This is not very gas efficient at all but the stack was too deep.  Need to refactor/research ways to improve
  at /home/jiaming/slither_fp_files/out7797.sol(586)

[33mWarning[0m for UnrestrictedWrite in contract 'PullRequests':
    |        //  This is not very gas efficient at all but the stack was too deep.  Need to refactor/research ways to improve
    |        //  Increment _pr.pctDIDApproved by the lower of the votingPowerLimitParameter or the voters pctDIDOwned
  > |        _pr.pctDIDApproved += didToken.pctDIDOwned(msg.sender) > distense.getParameterValueByTitle(
    |            distense.votingPowerLimitParameterTitle()
    |        ) ? distense.getParameterValueByTitle(
  at /home/jiaming/slither_fp_files/out7797.sol(590)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/slither_fp_files/out7797.sol(862)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |
    |
  > |  function percent(uint numerator, uint denominator, uint precision) public pure
    |  returns(uint quotient) {
    |
  at /home/jiaming/slither_fp_files/out7797.sol(891)

[33mWarning[0m for LockedEther in contract 'Tasks':
    |}
    |
  > |contract Tasks is Approvable {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/slither_fp_files/out7797.sol(647)

[33mWarning[0m for UnhandledException in contract 'Tasks':
    |        tasks[_taskId].createdBy = msg.sender;
    |        tasks[_taskId].title = _title;
  > |        tasks[_taskId].reward = distense.getParameterValueByTitle(distense.defaultRewardParameterTitle());
    |        tasks[_taskId].rewardStatus = RewardStatus.TENTATIVE;
    |
  at /home/jiaming/slither_fp_files/out7797.sol(691)

[33mWarning[0m for UnhandledException in contract 'Tasks':
    |
    |        DIDToken didToken = DIDToken(DIDTokenAddress);
  > |        uint256 balance = didToken.getAddressBalance(msg.sender);
    |        Distense distense = Distense(DistenseAddress);
    |
  at /home/jiaming/slither_fp_files/out7797.sol(734)

[33mWarning[0m for UnhandledException in contract 'Tasks':
    |        //  Does the voter own at least as many DID as the reward their voting for?
    |        //  This ensures new contributors don't have too much sway over the issuance of new DID.
  > |        require(balance > distense.getParameterValueByTitle(distense.numDIDRequiredToTaskRewardVoteParameterTitle()));
    |
    |        //  Require the reward to be less than or equal to the maximum reward parameter,
  at /home/jiaming/slither_fp_files/out7797.sol(752)

[33mWarning[0m for UnhandledException in contract 'Tasks':
    |        //  Require the reward to be less than or equal to the maximum reward parameter,
    |        //  which basically is a hard, floating limit on the number of DID that can be issued for any single task
  > |        require((_reward * 1 ether) <= distense.getParameterValueByTitle(distense.maxRewardParameterTitle()));
    |
    |        task.rewardVotes[msg.sender] = true;
  at /home/jiaming/slither_fp_files/out7797.sol(756)

[33mWarning[0m for UnhandledException in contract 'Tasks':
    |        task.rewardVotes[msg.sender] = true;
    |
  > |        uint256 pctDIDOwned = didToken.pctDIDOwned(msg.sender);
    |        task.pctDIDVoted = task.pctDIDVoted + pctDIDOwned;
    |
  at /home/jiaming/slither_fp_files/out7797.sol(760)

[33mWarning[0m for UnhandledException in contract 'Tasks':
    |
    |        //  Get the current votingPowerLimit
  > |        uint256 votingPowerLimit = distense.getParameterValueByTitle(distense.votingPowerLimitParameterTitle());
    |        //  For voting purposes, limit the pctDIDOwned
    |        uint256 limitedVotingPower = pctDIDOwned > votingPowerLimit ? votingPowerLimit : pctDIDOwned;
  at /home/jiaming/slither_fp_files/out7797.sol(764)

[33mWarning[0m for UnhandledException in contract 'Tasks':
    |        task.numVotes++;
    |
  > |        uint256 pctDIDVotedThreshold = distense.getParameterValueByTitle(
    |            distense.pctDIDToDetermineTaskRewardParameterTitle()
    |        );
  at /home/jiaming/slither_fp_files/out7797.sol(783)

[33mWarning[0m for UnhandledException in contract 'Tasks':
    |
    |        uint256 pctDIDVotedThreshold = distense.getParameterValueByTitle(
  > |            distense.pctDIDToDetermineTaskRewardParameterTitle()
    |        );
    |
  at /home/jiaming/slither_fp_files/out7797.sol(784)

[33mWarning[0m for UnhandledException in contract 'Tasks':
    |        );
    |
  > |        uint256 minNumVoters = distense.getParameterValueByTitle(
    |            distense.minNumberOfTaskRewardVotersParameterTitle()
    |        );
  at /home/jiaming/slither_fp_files/out7797.sol(787)

[33mWarning[0m for UnhandledException in contract 'Tasks':
    |
    |        uint256 minNumVoters = distense.getParameterValueByTitle(
  > |            distense.minNumberOfTaskRewardVotersParameterTitle()
    |        );
    |
  at /home/jiaming/slither_fp_files/out7797.sol(788)

[33mWarning[0m for UnhandledException in contract 'Tasks':
    |    modifier hasEnoughDIDToAddTask() {
    |        DIDToken didToken = DIDToken(DIDTokenAddress);
  > |        uint256 balance = didToken.getAddressBalance(msg.sender);
    |
    |        Distense distense = Distense(DistenseAddress);
  at /home/jiaming/slither_fp_files/out7797.sol(842)

[33mWarning[0m for UnhandledException in contract 'Tasks':
    |
    |        Distense distense = Distense(DistenseAddress);
  > |        uint256 numDIDRequiredToAddTask = distense.getParameterValueByTitle(
    |            distense.numDIDRequiredToAddTaskParameterTitle()
    |        );
  at /home/jiaming/slither_fp_files/out7797.sol(845)

[33mWarning[0m for UnhandledException in contract 'Tasks':
    |        Distense distense = Distense(DistenseAddress);
    |        uint256 numDIDRequiredToAddTask = distense.getParameterValueByTitle(
  > |            distense.numDIDRequiredToAddTaskParameterTitle()
    |        );
    |        require(balance >= numDIDRequiredToAddTask);
  at /home/jiaming/slither_fp_files/out7797.sol(846)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Tasks':
    |        tasks[_taskId].createdBy = msg.sender;
    |        tasks[_taskId].title = _title;
  > |        tasks[_taskId].reward = distense.getParameterValueByTitle(distense.defaultRewardParameterTitle());
    |        tasks[_taskId].rewardStatus = RewardStatus.TENTATIVE;
    |
  at /home/jiaming/slither_fp_files/out7797.sol(691)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Tasks':
    |
    |        DIDToken didToken = DIDToken(DIDTokenAddress);
  > |        uint256 balance = didToken.getAddressBalance(msg.sender);
    |        Distense distense = Distense(DistenseAddress);
    |
  at /home/jiaming/slither_fp_files/out7797.sol(734)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Tasks':
    |        //  Does the voter own at least as many DID as the reward their voting for?
    |        //  This ensures new contributors don't have too much sway over the issuance of new DID.
  > |        require(balance > distense.getParameterValueByTitle(distense.numDIDRequiredToTaskRewardVoteParameterTitle()));
    |
    |        //  Require the reward to be less than or equal to the maximum reward parameter,
  at /home/jiaming/slither_fp_files/out7797.sol(752)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Tasks':
    |        //  Require the reward to be less than or equal to the maximum reward parameter,
    |        //  which basically is a hard, floating limit on the number of DID that can be issued for any single task
  > |        require((_reward * 1 ether) <= distense.getParameterValueByTitle(distense.maxRewardParameterTitle()));
    |
    |        task.rewardVotes[msg.sender] = true;
  at /home/jiaming/slither_fp_files/out7797.sol(756)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Tasks':
    |        task.rewardVotes[msg.sender] = true;
    |
  > |        uint256 pctDIDOwned = didToken.pctDIDOwned(msg.sender);
    |        task.pctDIDVoted = task.pctDIDVoted + pctDIDOwned;
    |
  at /home/jiaming/slither_fp_files/out7797.sol(760)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Tasks':
    |
    |        //  Get the current votingPowerLimit
  > |        uint256 votingPowerLimit = distense.getParameterValueByTitle(distense.votingPowerLimitParameterTitle());
    |        //  For voting purposes, limit the pctDIDOwned
    |        uint256 limitedVotingPower = pctDIDOwned > votingPowerLimit ? votingPowerLimit : pctDIDOwned;
  at /home/jiaming/slither_fp_files/out7797.sol(764)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Tasks':
    |        task.numVotes++;
    |
  > |        uint256 pctDIDVotedThreshold = distense.getParameterValueByTitle(
    |            distense.pctDIDToDetermineTaskRewardParameterTitle()
    |        );
  at /home/jiaming/slither_fp_files/out7797.sol(783)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Tasks':
    |
    |        uint256 pctDIDVotedThreshold = distense.getParameterValueByTitle(
  > |            distense.pctDIDToDetermineTaskRewardParameterTitle()
    |        );
    |
  at /home/jiaming/slither_fp_files/out7797.sol(784)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Tasks':
    |        );
    |
  > |        uint256 minNumVoters = distense.getParameterValueByTitle(
    |            distense.minNumberOfTaskRewardVotersParameterTitle()
    |        );
  at /home/jiaming/slither_fp_files/out7797.sol(787)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Tasks':
    |
    |        uint256 minNumVoters = distense.getParameterValueByTitle(
  > |            distense.minNumberOfTaskRewardVotersParameterTitle()
    |        );
    |
  at /home/jiaming/slither_fp_files/out7797.sol(788)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Tasks':
    |    modifier hasEnoughDIDToAddTask() {
    |        DIDToken didToken = DIDToken(DIDTokenAddress);
  > |        uint256 balance = didToken.getAddressBalance(msg.sender);
    |
    |        Distense distense = Distense(DistenseAddress);
  at /home/jiaming/slither_fp_files/out7797.sol(842)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Tasks':
    |
    |        Distense distense = Distense(DistenseAddress);
  > |        uint256 numDIDRequiredToAddTask = distense.getParameterValueByTitle(
    |            distense.numDIDRequiredToAddTaskParameterTitle()
    |        );
  at /home/jiaming/slither_fp_files/out7797.sol(845)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Tasks':
    |        Distense distense = Distense(DistenseAddress);
    |        uint256 numDIDRequiredToAddTask = distense.getParameterValueByTitle(
  > |            distense.numDIDRequiredToAddTaskParameterTitle()
    |        );
    |        require(balance >= numDIDRequiredToAddTask);
  at /home/jiaming/slither_fp_files/out7797.sol(846)

[31mViolation[0m for UnrestrictedWrite in contract 'Tasks':
    |pragma solidity ^0.4.24;
    |
  > |contract Approvable {
    |
    |    mapping(address => bool) public approved;
  at /home/jiaming/slither_fp_files/out7797.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'Tasks':
    |    function approve(address _address) public onlyApproved {
    |        require(_address != address(0));
  > |        approved[_address] = true;
    |    }
    |
  at /home/jiaming/slither_fp_files/out7797.sol(13)

[31mViolation[0m for UnrestrictedWrite in contract 'Tasks':
    |    function revokeApproval(address _address) public onlyApproved {
    |        require(_address != address(0));
  > |        approved[_address] = false;
    |    }
    |
  at /home/jiaming/slither_fp_files/out7797.sol(18)

[31mViolation[0m for UnrestrictedWrite in contract 'Tasks':
    |}
    |
  > |contract Tasks is Approvable {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/slither_fp_files/out7797.sol(647)

[31mViolation[0m for UnrestrictedWrite in contract 'Tasks':
    |        Distense distense = Distense(DistenseAddress);
    |
  > |        tasks[_taskId].createdBy = msg.sender;
    |        tasks[_taskId].title = _title;
    |        tasks[_taskId].reward = distense.getParameterValueByTitle(distense.defaultRewardParameterTitle());
  at /home/jiaming/slither_fp_files/out7797.sol(689)

[31mViolation[0m for UnrestrictedWrite in contract 'Tasks':
    |        tasks[_taskId].createdBy = msg.sender;
    |        tasks[_taskId].title = _title;
  > |        tasks[_taskId].reward = distense.getParameterValueByTitle(distense.defaultRewardParameterTitle());
    |        tasks[_taskId].rewardStatus = RewardStatus.TENTATIVE;
    |
  at /home/jiaming/slither_fp_files/out7797.sol(691)

[31mViolation[0m for UnrestrictedWrite in contract 'Tasks':
    |        tasks[_taskId].title = _title;
    |        tasks[_taskId].reward = distense.getParameterValueByTitle(distense.defaultRewardParameterTitle());
  > |        tasks[_taskId].rewardStatus = RewardStatus.TENTATIVE;
    |
    |        taskIds.push(_taskId);
  at /home/jiaming/slither_fp_files/out7797.sol(692)

[31mViolation[0m for UnrestrictedWrite in contract 'Tasks':
    |        tasks[_taskId].rewardStatus = RewardStatus.TENTATIVE;
    |
  > |        taskIds.push(_taskId);
    |        tasksTitles[titleBytes32] = true;
    |        tasks[_taskId].taskIdsIndex = taskIds.length - 1;
  at /home/jiaming/slither_fp_files/out7797.sol(694)

[31mViolation[0m for UnrestrictedWrite in contract 'Tasks':
    |
    |        taskIds.push(_taskId);
  > |        tasksTitles[titleBytes32] = true;
    |        tasks[_taskId].taskIdsIndex = taskIds.length - 1;
    |        emit LogAddTask(_taskId, _title);
  at /home/jiaming/slither_fp_files/out7797.sol(695)

[31mViolation[0m for UnrestrictedWrite in contract 'Tasks':
    |        taskIds.push(_taskId);
    |        tasksTitles[titleBytes32] = true;
  > |        tasks[_taskId].taskIdsIndex = taskIds.length - 1;
    |        emit LogAddTask(_taskId, _title);
    |
  at /home/jiaming/slither_fp_files/out7797.sol(696)

[31mViolation[0m for UnrestrictedWrite in contract 'Tasks':
    |
    |        uint256 pctDIDOwned = didToken.pctDIDOwned(msg.sender);
  > |        task.pctDIDVoted = task.pctDIDVoted + pctDIDOwned;
    |
    |        //  Get the current votingPowerLimit
  at /home/jiaming/slither_fp_files/out7797.sol(761)

[31mViolation[0m for UnrestrictedWrite in contract 'Tasks':
    |
    |    function setTaskRewardPaid(bytes32 _taskId) external onlyApproved returns (RewardStatus) {
  > |        tasks[_taskId].rewardStatus = RewardStatus.PAID;
    |        return tasks[_taskId].rewardStatus;
    |    }
  at /home/jiaming/slither_fp_files/out7797.sol(812)

[31mViolation[0m for UnrestrictedWrite in contract 'Tasks':
    |        if (task.rewardStatus == RewardStatus.PAID) {
    |            uint256 index = tasks[_taskId].taskIdsIndex;
  > |            delete taskIds[index];
    |            delete tasks[_taskId];
    |
  at /home/jiaming/slither_fp_files/out7797.sol(824)

[31mViolation[0m for UnrestrictedWrite in contract 'Tasks':
    |            uint256 index = tasks[_taskId].taskIdsIndex;
    |            delete taskIds[index];
  > |            delete tasks[_taskId];
    |
    |            // Move the last element to the deleted index.  If we don't do this there are no efficiencies and the index will still still be
  at /home/jiaming/slither_fp_files/out7797.sol(825)

[31mViolation[0m for UnrestrictedWrite in contract 'Tasks':
    |            if (taskIdsLength > 1) {
    |                bytes32 lastElement = taskIds[taskIdsLength - 1];
  > |                taskIds[index] = lastElement;
    |                taskIds.length--;
    |            }
  at /home/jiaming/slither_fp_files/out7797.sol(832)

[31mViolation[0m for UnrestrictedWrite in contract 'Tasks':
    |
    |    function setDIDTokenAddress(address _DIDTokenAddress) public onlyApproved {
  > |        DIDTokenAddress = _DIDTokenAddress;
    |    }
    |
  at /home/jiaming/slither_fp_files/out7797.sol(853)

[31mViolation[0m for UnrestrictedWrite in contract 'Tasks':
    |
    |    function setDistenseAddress(address _DistenseAddress) public onlyApproved {
  > |        DistenseAddress = _DistenseAddress;
    |    }
    |
  at /home/jiaming/slither_fp_files/out7797.sol(857)

[33mWarning[0m for UnrestrictedWrite in contract 'Tasks':
    |        require((_reward * 1 ether) <= distense.getParameterValueByTitle(distense.maxRewardParameterTitle()));
    |
  > |        task.rewardVotes[msg.sender] = true;
    |
    |        uint256 pctDIDOwned = didToken.pctDIDOwned(msg.sender);
  at /home/jiaming/slither_fp_files/out7797.sol(758)


