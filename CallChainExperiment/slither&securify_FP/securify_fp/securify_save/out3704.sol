Processing contract: /home/jiaming/slither_fp_files/out3704.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out3704.sol:ParentInterface
Processing contract: /home/jiaming/slither_fp_files/out3704.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out3704.sol:ReferralCircle
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out3704.sol:ReferralQueue
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out3704.sol:Reward
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out3704.sol:Utils
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |// just ownable contract
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/slither_fp_files/out3704.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |// just ownable contract
    |contract Ownable {
  > |    address public owner;
    |
    |    constructor() public{
  at /home/jiaming/slither_fp_files/out3704.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/slither_fp_files/out3704.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out3704.sol(18)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |
    |// Pausable contract which allows children to implement an emergency stop mechanism.
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/slither_fp_files/out3704.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |// just ownable contract
    |contract Ownable {
  > |    address public owner;
    |
    |    constructor() public{
  at /home/jiaming/slither_fp_files/out3704.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/slither_fp_files/out3704.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    // Modifier to make a function callable only when the contract is not paused.
  at /home/jiaming/slither_fp_files/out3704.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |    // Сalled by the owner to pause, triggers stopped state
  > |    function pause() onlyOwner whenNotPaused public {
    |        paused = true;
    |        emit Pause();
  at /home/jiaming/slither_fp_files/out3704.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |    // Сalled by the owner to unpause, returns to normal state
  > |    function unpause() onlyOwner whenPaused public {
    |        paused = false;
    |        emit Unpause();
  at /home/jiaming/slither_fp_files/out3704.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out3704.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    // Сalled by the owner to pause, triggers stopped state
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        emit Pause();
    |    }
  at /home/jiaming/slither_fp_files/out3704.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    // Сalled by the owner to unpause, returns to normal state
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        emit Unpause();
    |    }
  at /home/jiaming/slither_fp_files/out3704.sol(51)

[33mWarning[0m for DAO in contract 'ReferralCircle':
    |    // Function of manual add pet    
    |    function addPet(uint64 _id) internal {
  > |        (uint64 birthTime, uint256 genes, uint64 breedTimeout, uint16 quality, address owner) = parentInterface.getPet(_id);
    |        
    |        uint16 gradeQuality = quality;
  at /home/jiaming/slither_fp_files/out3704.sol(307)

[31mViolation[0m for DAOConstantGas in contract 'ReferralCircle':
    |
    |        // Transfer reward
  > |        msg.sender.transfer(petInfo.amount);
    |        
    |        // Change reward amount in pet information
  at /home/jiaming/slither_fp_files/out3704.sol(355)

[31mViolation[0m for DAOConstantGas in contract 'ReferralCircle':
    |
    |        // Transfer reward
  > |        petOwner.transfer(petInfo.amount);
    |        
    |        // Change reward amount in pet information
  at /home/jiaming/slither_fp_files/out3704.sol(372)

[33mWarning[0m for DAOConstantGas in contract 'ReferralCircle':
    |    // Withdraw balance by owner
    |    function withdrawBalance(uint256 summ) external onlyOwner {
  > |        owner.transfer(summ);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out3704.sol(390)

[33mWarning[0m for LockedEther in contract 'ReferralCircle':
    |
    |// Launch it
  > |contract ReferralCircle is Reward, Utils, Pausable {
    |    
    |    // Interface link
  at /home/jiaming/slither_fp_files/out3704.sol(246)

[31mViolation[0m for MissingInputValidation in contract 'ReferralCircle':
    |    }
    |    
  > |    mapping (uint64 => ReferralSeat) public referralCircle;
    |    
    |    // Store simple information about each pet: parent parrot and current referral reward
  at /home/jiaming/slither_fp_files/out3704.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'ReferralCircle':
    |    }
    |    
  > |    mapping (uint64 => PetInfo) public petsInfo;
    |
    |    
  at /home/jiaming/slither_fp_files/out3704.sol(112)

[31mViolation[0m for MissingInputValidation in contract 'ReferralCircle':
    |    
    |    // Change synchronization limit by owner
  > |    function setSyncLimit(uint8 _limit) external onlyOwner {
    |        syncLimit = _limit;
    |    }
  at /home/jiaming/slither_fp_files/out3704.sol(301)

[31mViolation[0m for MissingInputValidation in contract 'ReferralCircle':
    |    
    |    // Function for automatic add pet
  > |    function automaticPetAdd(uint256 _price, uint16 _quality, uint64 _id) external {
    |        require(!petSyncEnabled);
    |        require(msg.sender == address(parentInterface));
  at /home/jiaming/slither_fp_files/out3704.sol(327)

[31mViolation[0m for MissingInputValidation in contract 'ReferralCircle':
    |    
    |    // Function for withdraw reward by pet owner
  > |    function withdrawReward(uint64 _petId) external whenNotPaused {
    |        
    |        // Get pet information
  at /home/jiaming/slither_fp_files/out3704.sol(345)

[31mViolation[0m for MissingInputValidation in contract 'ReferralCircle':
    |    
    |    // Emergency reward sending by admin
  > |    function sendRewardByAdmin(uint64 _petId) external onlyOwner whenNotPaused {
    |        
    |        // Get pet information
  at /home/jiaming/slither_fp_files/out3704.sol(363)

[31mViolation[0m for MissingInputValidation in contract 'ReferralCircle':
    |        
    |    // Change parent contract
  > |    function setParentAddress(address _address) public whenPaused onlyOwner
    |    {
    |        parentInterface = ParentInterface(_address);
  at /home/jiaming/slither_fp_files/out3704.sol(380)

[31mViolation[0m for MissingInputValidation in contract 'ReferralCircle':
    |    
    |    // Withdraw balance by owner
  > |    function withdrawBalance(uint256 summ) external onlyOwner {
    |        owner.transfer(summ);
    |    }
  at /home/jiaming/slither_fp_files/out3704.sol(389)

[33mWarning[0m for MissingInputValidation in contract 'ReferralCircle':
    |// just ownable contract
    |contract Ownable {
  > |    address public owner;
    |
    |    constructor() public{
  at /home/jiaming/slither_fp_files/out3704.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'ReferralCircle':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/slither_fp_files/out3704.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'ReferralCircle':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    // Modifier to make a function callable only when the contract is not paused.
  at /home/jiaming/slither_fp_files/out3704.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'ReferralCircle':
    |
    |    // Сalled by the owner to pause, triggers stopped state
  > |    function pause() onlyOwner whenNotPaused public {
    |        paused = true;
    |        emit Pause();
  at /home/jiaming/slither_fp_files/out3704.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'ReferralCircle':
    |
    |    // Сalled by the owner to unpause, returns to normal state
  > |    function unpause() onlyOwner whenPaused public {
    |        paused = false;
    |        emit Unpause();
  at /home/jiaming/slither_fp_files/out3704.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'ReferralCircle':
    |contract Utils {
    |    
  > |    function getGradeByQuailty(uint16 quality) public pure returns (uint8 grade) {
    |        
    |        require(quality <= uint16(0xF000));
  at /home/jiaming/slither_fp_files/out3704.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'ReferralCircle':
    |    }
    |    
  > |    function seatsByGrade(uint8 grade) public pure returns(uint8 seats) {
    |	    if(grade > 4)
    |	        return 1;
  at /home/jiaming/slither_fp_files/out3704.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'ReferralCircle':
    |
    |    // Circle length
  > |    uint64 public circleLength;
    |    
    |    // Store queue of referral circle
  at /home/jiaming/slither_fp_files/out3704.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'ReferralCircle':
    |
    |    
  > |    function addPetIntoCircle(uint64 _id, uint8 _seats) internal {
    |        
    |        // Adding seats into queue
  at /home/jiaming/slither_fp_files/out3704.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'ReferralCircle':
    |    
    |    // Current pet ID in circle for automatical attach
  > |    function getCurrentReceiverId() view public returns(uint64 receiverId) {
    |        
    |        return referralCircle[currentReceiverId].petId;
  at /home/jiaming/slither_fp_files/out3704.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'ReferralCircle':
    |    
    |    // Save rewards for all referral levels
  > |    function applyReward(uint64 _petId, uint16 _quality) internal {
    |        
    |        uint8[6] memory rewardByLevel = [0,250,120,60,30,15];
  at /home/jiaming/slither_fp_files/out3704.sol(197)

[33mWarning[0m for MissingInputValidation in contract 'ReferralCircle':
    |    
    |    // Save rewards for all referral levels
  > |    function applyRewardByAmount(uint64 _petId, uint256 _price) internal {
    |        
    |        uint8[6] memory rewardByLevel = [0,250,120,60,30,15];
  at /home/jiaming/slither_fp_files/out3704.sol(222)

[33mWarning[0m for MissingInputValidation in contract 'ReferralCircle':
    |
    |// Launch it
  > |contract ReferralCircle is Reward, Utils, Pausable {
    |    
    |    // Interface link
  at /home/jiaming/slither_fp_files/out3704.sol(246)

[33mWarning[0m for MissingInputValidation in contract 'ReferralCircle':
    |    
    |    // Interface link
  > |    ParentInterface public parentInterface;
    |    
    |    // Limit of manual synchronization repeats
  at /home/jiaming/slither_fp_files/out3704.sol(249)

[33mWarning[0m for MissingInputValidation in contract 'ReferralCircle':
    |    
    |    // Limit of manual synchronization repeats
  > |    uint8 public syncLimit = 5;
    |    
    |    // Pet counter
  at /home/jiaming/slither_fp_files/out3704.sol(252)

[33mWarning[0m for MissingInputValidation in contract 'ReferralCircle':
    |    
    |    // Pet counter
  > |    uint64 public lastPetId = 100;
    |    
    |    // Manual sync enabled
  at /home/jiaming/slither_fp_files/out3704.sol(255)

[33mWarning[0m for MissingInputValidation in contract 'ReferralCircle':
    |    
    |    // Manual sync enabled
  > |    bool public petSyncEnabled = true;
    |    
    |    // Setting default parent interface    
  at /home/jiaming/slither_fp_files/out3704.sol(258)

[33mWarning[0m for MissingInputValidation in contract 'ReferralCircle':
    |
    |    // Disable manual synchronization
  > |    function disablePetSync() external onlyOwner {
    |        petSyncEnabled = false;
    |    }
  at /home/jiaming/slither_fp_files/out3704.sol(266)

[33mWarning[0m for MissingInputValidation in contract 'ReferralCircle':
    |
    |    // Enable manual synchronization
  > |    function enablePetSync() external onlyOwner {
    |        petSyncEnabled = true;
    |    }
  at /home/jiaming/slither_fp_files/out3704.sol(271)

[33mWarning[0m for MissingInputValidation in contract 'ReferralCircle':
    |    
    |    // Make synchronization, available for any sender
  > |    function sync() external whenNotPaused {
    |        
    |        // Checking synchronization status
  at /home/jiaming/slither_fp_files/out3704.sol(276)

[33mWarning[0m for MissingInputValidation in contract 'ReferralCircle':
    |
    |    // Function of manual add pet    
  > |    function addPet(uint64 _id) internal {
    |        (uint64 birthTime, uint256 genes, uint64 breedTimeout, uint16 quality, address owner) = parentInterface.getPet(_id);
    |        
  at /home/jiaming/slither_fp_files/out3704.sol(306)

[33mWarning[0m for TODAmount in contract 'ReferralCircle':
    |    // Withdraw balance by owner
    |    function withdrawBalance(uint256 summ) external onlyOwner {
  > |        owner.transfer(summ);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out3704.sol(390)

[31mViolation[0m for TODReceiver in contract 'ReferralCircle':
    |    // Withdraw balance by owner
    |    function withdrawBalance(uint256 summ) external onlyOwner {
  > |        owner.transfer(summ);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out3704.sol(390)

[33mWarning[0m for TODReceiver in contract 'ReferralCircle':
    |
    |        // Transfer reward
  > |        msg.sender.transfer(petInfo.amount);
    |        
    |        // Change reward amount in pet information
  at /home/jiaming/slither_fp_files/out3704.sol(355)

[33mWarning[0m for UnhandledException in contract 'ReferralCircle':
    |        
    |        // Get supply of pets from parent contract
  > |        uint64 petSupply = uint64(parentInterface.totalSupply());
    |        require(petSupply > lastPetId);
    |
  at /home/jiaming/slither_fp_files/out3704.sol(282)

[33mWarning[0m for UnhandledException in contract 'ReferralCircle':
    |    // Function of manual add pet    
    |    function addPet(uint64 _id) internal {
  > |        (uint64 birthTime, uint256 genes, uint64 breedTimeout, uint16 quality, address owner) = parentInterface.getPet(_id);
    |        
    |        uint16 gradeQuality = quality;
  at /home/jiaming/slither_fp_files/out3704.sol(307)

[33mWarning[0m for UnhandledException in contract 'ReferralCircle':
    |        
    |        // Get owner of pet from pet contract and check it
  > |         (uint64 birthTime, uint256 genes, uint64 breedTimeout, uint16 quality, address petOwner) = parentInterface.getPet(_petId);
    |        require(petOwner == msg.sender);
    |
  at /home/jiaming/slither_fp_files/out3704.sol(351)

[33mWarning[0m for UnhandledException in contract 'ReferralCircle':
    |
    |        // Transfer reward
  > |        msg.sender.transfer(petInfo.amount);
    |        
    |        // Change reward amount in pet information
  at /home/jiaming/slither_fp_files/out3704.sol(355)

[33mWarning[0m for UnhandledException in contract 'ReferralCircle':
    |        
    |        // Get owner of pet from pet contract and check it
  > |        (uint64 birthTime, uint256 genes, uint64 breedTimeout, uint16 quality, address petOwner) = parentInterface.getPet(_petId);
    |
    |        // Transfer reward
  at /home/jiaming/slither_fp_files/out3704.sol(369)

[33mWarning[0m for UnhandledException in contract 'ReferralCircle':
    |
    |        // Transfer reward
  > |        petOwner.transfer(petInfo.amount);
    |        
    |        // Change reward amount in pet information
  at /home/jiaming/slither_fp_files/out3704.sol(372)

[33mWarning[0m for UnhandledException in contract 'ReferralCircle':
    |    // Withdraw balance by owner
    |    function withdrawBalance(uint256 summ) external onlyOwner {
  > |        owner.transfer(summ);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out3704.sol(390)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReferralCircle':
    |        
    |        // Get supply of pets from parent contract
  > |        uint64 petSupply = uint64(parentInterface.totalSupply());
    |        require(petSupply > lastPetId);
    |
  at /home/jiaming/slither_fp_files/out3704.sol(282)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReferralCircle':
    |    // Function of manual add pet    
    |    function addPet(uint64 _id) internal {
  > |        (uint64 birthTime, uint256 genes, uint64 breedTimeout, uint16 quality, address owner) = parentInterface.getPet(_id);
    |        
    |        uint16 gradeQuality = quality;
  at /home/jiaming/slither_fp_files/out3704.sol(307)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReferralCircle':
    |        
    |        // Get owner of pet from pet contract and check it
  > |         (uint64 birthTime, uint256 genes, uint64 breedTimeout, uint16 quality, address petOwner) = parentInterface.getPet(_petId);
    |        require(petOwner == msg.sender);
    |
  at /home/jiaming/slither_fp_files/out3704.sol(351)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReferralCircle':
    |
    |        // Transfer reward
  > |        msg.sender.transfer(petInfo.amount);
    |        
    |        // Change reward amount in pet information
  at /home/jiaming/slither_fp_files/out3704.sol(355)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReferralCircle':
    |        
    |        // Get owner of pet from pet contract and check it
  > |        (uint64 birthTime, uint256 genes, uint64 breedTimeout, uint16 quality, address petOwner) = parentInterface.getPet(_petId);
    |
    |        // Transfer reward
  at /home/jiaming/slither_fp_files/out3704.sol(369)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReferralCircle':
    |
    |        // Transfer reward
  > |        petOwner.transfer(petInfo.amount);
    |        
    |        // Change reward amount in pet information
  at /home/jiaming/slither_fp_files/out3704.sol(372)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReferralCircle':
    |    // Withdraw balance by owner
    |    function withdrawBalance(uint256 summ) external onlyOwner {
  > |        owner.transfer(summ);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out3704.sol(390)

[31mViolation[0m for UnrestrictedWrite in contract 'ReferralCircle':
    |
    |            // Increasing circle length and save current seat in circle            
  > |            circleLength++;
    |            referralCircle[circleLength] = _seat;
    |		}
  at /home/jiaming/slither_fp_files/out3704.sol(126)

[31mViolation[0m for UnrestrictedWrite in contract 'ReferralCircle':
    |            // Increasing circle length and save current seat in circle            
    |            circleLength++;
  > |            referralCircle[circleLength] = _seat;
    |		}
    |		
  at /home/jiaming/slither_fp_files/out3704.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'ReferralCircle':
    |		if(_id>103) {
    |		    
  > |		    referralCircle[currentReceiverId].givenPetId = _id;
    |		    
    |		    // adding new pet into information list
  at /home/jiaming/slither_fp_files/out3704.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'ReferralCircle':
    |		    });
    |		    
  > |		    petsInfo[_id] = petInfo;
    |		    
    |		    // Increace circle receiver ID
  at /home/jiaming/slither_fp_files/out3704.sol(142)

[31mViolation[0m for UnrestrictedWrite in contract 'ReferralCircle':
    |		    
    |		    // Increace circle receiver ID
  > |            currentReceiverId++;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out3704.sol(145)

[31mViolation[0m for UnrestrictedWrite in contract 'ReferralCircle':
    |            
    |            // increase pet balance
  > |            petsInfo[_parentId].amount+= eggPrice * rewardByLevel[level] / 1000;
    |            
    |            // get parent id from parent id to move to the next level
  at /home/jiaming/slither_fp_files/out3704.sol(213)

[31mViolation[0m for UnrestrictedWrite in contract 'ReferralCircle':
    |            
    |            // Increase pet balance
  > |            petsInfo[_parentId].amount+= _price * rewardByLevel[i] / 1000;
    |            
    |            // Get parent id from parent id to move to the next level
  at /home/jiaming/slither_fp_files/out3704.sol(236)

[31mViolation[0m for UnrestrictedWrite in contract 'ReferralCircle':
    |        for(uint8 i=0; i < syncLimit; i++)
    |        {
  > |            lastPetId++;
    |            
    |            if(lastPetId > petSupply)
  at /home/jiaming/slither_fp_files/out3704.sol(288)

[31mViolation[0m for UnrestrictedWrite in contract 'ReferralCircle':
    |            if(lastPetId > petSupply)
    |            {
  > |                lastPetId = petSupply;
    |                break;
    |            }
  at /home/jiaming/slither_fp_files/out3704.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'ReferralCircle':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out3704.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'ReferralCircle':
    |    // Сalled by the owner to pause, triggers stopped state
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        emit Pause();
    |    }
  at /home/jiaming/slither_fp_files/out3704.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'ReferralCircle':
    |    // Сalled by the owner to unpause, returns to normal state
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        emit Unpause();
    |    }
  at /home/jiaming/slither_fp_files/out3704.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'ReferralCircle':
    |    // Disable manual synchronization
    |    function disablePetSync() external onlyOwner {
  > |        petSyncEnabled = false;
    |    }
    |
  at /home/jiaming/slither_fp_files/out3704.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'ReferralCircle':
    |    // Enable manual synchronization
    |    function enablePetSync() external onlyOwner {
  > |        petSyncEnabled = true;
    |    }
    |    
  at /home/jiaming/slither_fp_files/out3704.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'ReferralCircle':
    |    // Change synchronization limit by owner
    |    function setSyncLimit(uint8 _limit) external onlyOwner {
  > |        syncLimit = _limit;
    |    }
    |
  at /home/jiaming/slither_fp_files/out3704.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'ReferralCircle':
    |        require(msg.sender == address(parentInterface));
    |        
  > |        lastPetId = _id;
    |        
    |        // Calculating seats in circle
  at /home/jiaming/slither_fp_files/out3704.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'ReferralCircle':
    |        // Change reward amount in pet information
    |        petInfo.amount = 0;
  > |        petsInfo[_petId] = petInfo;
    |    }
    |    
  at /home/jiaming/slither_fp_files/out3704.sol(359)

[33mWarning[0m for UnrestrictedWrite in contract 'ReferralCircle':
    |        // Change reward amount in pet information
    |        petInfo.amount = 0;
  > |        petsInfo[_petId] = petInfo;
    |    }
    |        
  at /home/jiaming/slither_fp_files/out3704.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'ReferralCircle':
    |    function setParentAddress(address _address) public whenPaused onlyOwner
    |    {
  > |        parentInterface = ParentInterface(_address);
    |    }
    |
  at /home/jiaming/slither_fp_files/out3704.sol(382)

[33mWarning[0m for LockedEther in contract 'ReferralQueue':
    |
    |// Main contract, which calculating queue
  > |contract ReferralQueue {
    |    
    |    // ID in circle
  at /home/jiaming/slither_fp_files/out3704.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'ReferralQueue':
    |    }
    |    
  > |    mapping (uint64 => ReferralSeat) public referralCircle;
    |    
    |    // Store simple information about each pet: parent parrot and current referral reward
  at /home/jiaming/slither_fp_files/out3704.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'ReferralQueue':
    |    }
    |    
  > |    mapping (uint64 => PetInfo) public petsInfo;
    |
    |    
  at /home/jiaming/slither_fp_files/out3704.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'ReferralQueue':
    |
    |    // Circle length
  > |    uint64 public circleLength;
    |    
    |    // Store queue of referral circle
  at /home/jiaming/slither_fp_files/out3704.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'ReferralQueue':
    |    
    |    // Current pet ID in circle for automatical attach
  > |    function getCurrentReceiverId() view public returns(uint64 receiverId) {
    |        
    |        return referralCircle[currentReceiverId].petId;
  at /home/jiaming/slither_fp_files/out3704.sol(150)

[33mWarning[0m for LockedEther in contract 'Reward':
    |}
    |
  > |contract Reward is ReferralQueue {
    |    
    |    // Getting egg price by id and quality
  at /home/jiaming/slither_fp_files/out3704.sol(156)

[31mViolation[0m for MissingInputValidation in contract 'Reward':
    |    }
    |    
  > |    mapping (uint64 => ReferralSeat) public referralCircle;
    |    
    |    // Store simple information about each pet: parent parrot and current referral reward
  at /home/jiaming/slither_fp_files/out3704.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'Reward':
    |    }
    |    
  > |    mapping (uint64 => PetInfo) public petsInfo;
    |
    |    
  at /home/jiaming/slither_fp_files/out3704.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'Reward':
    |
    |    // Circle length
  > |    uint64 public circleLength;
    |    
    |    // Store queue of referral circle
  at /home/jiaming/slither_fp_files/out3704.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'Reward':
    |    
    |    // Current pet ID in circle for automatical attach
  > |    function getCurrentReceiverId() view public returns(uint64 receiverId) {
    |        
    |        return referralCircle[currentReceiverId].petId;
  at /home/jiaming/slither_fp_files/out3704.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'Reward':
    |}
    |
  > |contract Reward is ReferralQueue {
    |    
    |    // Getting egg price by id and quality
  at /home/jiaming/slither_fp_files/out3704.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'Reward':
    |    
    |    // Getting egg price by id and quality
  > |    function getEggPrice(uint64 _petId, uint16 _quality) pure public returns(uint256 price) {
    |        		
    |        uint64[6] memory egg_prices = [0, 150 finney, 600 finney, 3 ether, 12 ether, 600 finney];
  at /home/jiaming/slither_fp_files/out3704.sol(159)

[33mWarning[0m for LockedEther in contract 'Utils':
    |
    |// Simple utils, which calculate circle seats and grade by quality
  > |contract Utils {
    |    
    |    function getGradeByQuailty(uint16 quality) public pure returns (uint8 grade) {
  at /home/jiaming/slither_fp_files/out3704.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Utils':
    |contract Utils {
    |    
  > |    function getGradeByQuailty(uint16 quality) public pure returns (uint8 grade) {
    |        
    |        require(quality <= uint16(0xF000));
  at /home/jiaming/slither_fp_files/out3704.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'Utils':
    |    }
    |    
  > |    function seatsByGrade(uint8 grade) public pure returns(uint8 seats) {
    |	    if(grade > 4)
    |	        return 1;
  at /home/jiaming/slither_fp_files/out3704.sol(79)


