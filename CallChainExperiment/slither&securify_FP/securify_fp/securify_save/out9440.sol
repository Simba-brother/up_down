Processing contract: /home/jiaming/slither_fp_files/out9440.sol:AdmixtureInterface
Processing contract: /home/jiaming/slither_fp_files/out9440.sol:BaseRabbit
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9440.sol:BodyRabbit
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9440.sol:BunnyGame
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9440.sol:ERC721
Processing contract: /home/jiaming/slither_fp_files/out9440.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9440.sol:PrivateRabbitInterface
Processing contract: /home/jiaming/slither_fp_files/out9440.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out9440.sol:Whitelist
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BaseRabbit':
    | 
    |
  > |contract BaseRabbit  is Whitelist {
    |       
    |
  at /home/jiaming/slither_fp_files/out9440.sol(214)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    | */
    |contract Whitelist is Ownable {
  > |    mapping(address => bool) public whitelist;
    |
    |    mapping(uint  => address)   whitelistCheck;
  at /home/jiaming/slither_fp_files/out9440.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    |    }
    |
  > |    function getWhitelistCheck(uint key) onlyWhitelisted view public returns(address) {
    |        return whitelistCheck[key];
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    |
    |
  > |    function getInWhitelist(address addr) public view returns(bool) {
    |        return whitelist[addr];
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    |
    |
  > |    function setPromoGen0(uint _promoGen0) public onlyWhitelisted() {
    |        promoGen0 = _promoGen0;
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(254)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    |
    |
  > |    function setPromoMoney(uint _promoMoney) public onlyWhitelisted() {
    |        promoMoney = _promoMoney;
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(264)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    | 
    |
  > |    mapping(uint32 => uint) public totalSalaryBunny;
    |    mapping(uint32 => uint32[5]) public rabbitMother;
    |    
  at /home/jiaming/slither_fp_files/out9440.sol(269)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    |
    |    mapping(uint32 => uint) public totalSalaryBunny;
  > |    mapping(uint32 => uint32[5]) public rabbitMother;
    |    
    |    mapping(uint32 => uint) public motherCount;
  at /home/jiaming/slither_fp_files/out9440.sol(270)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    |    mapping(uint32 => uint32[5]) public rabbitMother;
    |    
  > |    mapping(uint32 => uint) public motherCount;
    |    
    |    // how many times did the rabbit cross
  at /home/jiaming/slither_fp_files/out9440.sol(272)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    |    
    |    // how many times did the rabbit cross
  > |    mapping(uint32 => uint) public rabbitBreedCount;
    |
    |    mapping(uint32 => uint)  public rabbitSirePrice;
  at /home/jiaming/slither_fp_files/out9440.sol(275)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    |    mapping(uint32 => uint) public rabbitBreedCount;
    |
  > |    mapping(uint32 => uint)  public rabbitSirePrice;
    |    mapping(uint => uint32[]) public sireGenom;
    |    mapping (uint32 => uint) mapDNK;
  at /home/jiaming/slither_fp_files/out9440.sol(277)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    |
    |    mapping(uint32 => uint)  public rabbitSirePrice;
  > |    mapping(uint => uint32[]) public sireGenom;
    |    mapping (uint32 => uint) mapDNK;
    |   
  at /home/jiaming/slither_fp_files/out9440.sol(278)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    |    * who owns the rabbit
    |    */
  > |    mapping (uint32 => address) public rabbitToOwner; 
    |    mapping (address => uint32[]) public ownerBunnies;
    |    //mapping (address => uint) ownerRabbitCount;
  at /home/jiaming/slither_fp_files/out9440.sol(325)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    |    */
    |    mapping (uint32 => address) public rabbitToOwner; 
  > |    mapping (address => uint32[]) public ownerBunnies;
    |    //mapping (address => uint) ownerRabbitCount;
    |    mapping (uint32 => string) rabbitDescription;
  at /home/jiaming/slither_fp_files/out9440.sol(326)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    }
    |   
  > |    function transferOwnership(address add) public onlyOwner {
    |        if (add != address(0)) {
    |            ownerCEO = add;
  at /home/jiaming/slither_fp_files/out9440.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    }
    | 
  > |    function transferOwnerMoney(address _ownerMoney) public  onlyOwner {
    |        if (_ownerMoney != address(0)) {
    |            ownerMoney = _ownerMoney;
  at /home/jiaming/slither_fp_files/out9440.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    }
    | 
  > |    function getOwnerMoney() public view onlyOwner returns(address) {
    |        return ownerMoney;
    |    } 
  at /home/jiaming/slither_fp_files/out9440.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    *  @dev private contract
    |     */
  > |    function getPrivAddress() public view onlyOwner returns(address) {
    |        return privAddress;
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |        return privAddress;
    |    }
  > |    function getAddressAdmixture() public view onlyOwner returns(address) {
    |        return addressAdmixture;
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |
    |    mapping(uint  => address)   whitelistCheck;
  > |    uint public countAddress = 0;
    |
    |    event WhitelistedAddressAdded(address addr);
  at /home/jiaming/slither_fp_files/out9440.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |        return whitelist[addr];
    |    }
  > |    function getOwnerCEO() public onlyWhitelisted view returns(address) {
    |        return ownerCEO;
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    * false if all addresses were already in the whitelist
    |    */
  > |    function addAddressesToWhitelist(address[] addrs) onlyOwner public returns(bool success) {
    |        for (uint256 i = 0; i < addrs.length; i++) {
    |            if (addAddressToWhitelist(addrs[i])) {
  at /home/jiaming/slither_fp_files/out9440.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    * false if all addresses weren't in the whitelist in the first place
    |    */
  > |    function removeAddressesFromWhitelist(address[] addrs) onlyOwner public returns(bool success) {
    |        for (uint256 i = 0; i < addrs.length; i++) {
    |            if (removeAddressFromWhitelist(addrs[i])) {
  at /home/jiaming/slither_fp_files/out9440.sol(169)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    uint256 bigPrice = 0.005 ether;
    |    
  > |    uint public commission_system = 5;
    |     
    |    // ID the last seal
  at /home/jiaming/slither_fp_files/out9440.sol(238)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |     
    |    // ID the last seal
  > |    uint32 public lastIdGen0;
    |    uint public totalGen0 = 0;
    |    // ID the last seal
  at /home/jiaming/slither_fp_files/out9440.sol(241)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    // ID the last seal
    |    uint32 public lastIdGen0;
  > |    uint public totalGen0 = 0;
    |    // ID the last seal
    |    uint public lastTimeGen0;
  at /home/jiaming/slither_fp_files/out9440.sol(242)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    uint public totalGen0 = 0;
    |    // ID the last seal
  > |    uint public lastTimeGen0;
    |    
    |    // ID the last seal
  at /home/jiaming/slither_fp_files/out9440.sol(244)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |  //  uint public timeRangeCreateGen0 = 1800; 
    |
  > |    uint public promoGen0 = 15000;
    |    uint public promoMoney = 1*bigPrice;
    |    bool public promoPause = false;
  at /home/jiaming/slither_fp_files/out9440.sol(249)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |
    |    uint public promoGen0 = 15000;
  > |    uint public promoMoney = 1*bigPrice;
    |    bool public promoPause = false;
    |
  at /home/jiaming/slither_fp_files/out9440.sol(250)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    uint public promoGen0 = 15000;
    |    uint public promoMoney = 1*bigPrice;
  > |    bool public promoPause = false;
    |
    |
  at /home/jiaming/slither_fp_files/out9440.sol(251)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    }
    |
  > |    function setPromoPause() public onlyWhitelisted() {
    |        promoPause = !promoPause;
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(258)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    mapping (uint32 => uint) mapDNK;
    |   
  > |    uint32[12] public cooldowns = [
    |        uint32(1 minutes),
    |        uint32(2 minutes),
  at /home/jiaming/slither_fp_files/out9440.sol(281)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    * Where we will store information about rabbits
    |    */
  > |    Rabbit[]  public rabbits;
    |     
    |    /**
  at /home/jiaming/slither_fp_files/out9440.sol(320)

[31mViolation[0m for UnrestrictedWrite in contract 'BaseRabbit':
    |    function addAddressToWhitelist(address addr) onlyWhitelisted public returns(bool success) {
    |        if (!whitelist[addr]) {
  > |            whitelist[addr] = true;
    |
    |            countAddress = countAddress + 1;
  at /home/jiaming/slither_fp_files/out9440.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'BaseRabbit':
    |            whitelist[addr] = true;
    |
  > |            countAddress = countAddress + 1;
    |            whitelistCheck[countAddress] = addr;
    |
  at /home/jiaming/slither_fp_files/out9440.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'BaseRabbit':
    |
    |            countAddress = countAddress + 1;
  > |            whitelistCheck[countAddress] = addr;
    |
    |            emit WhitelistedAddressAdded(addr);
  at /home/jiaming/slither_fp_files/out9440.sol(116)

[31mViolation[0m for UnrestrictedWrite in contract 'BaseRabbit':
    |
    |    function setPromoGen0(uint _promoGen0) public onlyWhitelisted() {
  > |        promoGen0 = _promoGen0;
    |    }
    |
  at /home/jiaming/slither_fp_files/out9440.sol(255)

[31mViolation[0m for UnrestrictedWrite in contract 'BaseRabbit':
    |
    |    function setPromoPause() public onlyWhitelisted() {
  > |        promoPause = !promoPause;
    |    }
    |
  at /home/jiaming/slither_fp_files/out9440.sol(259)

[31mViolation[0m for UnrestrictedWrite in contract 'BaseRabbit':
    |
    |    function setPromoMoney(uint _promoMoney) public onlyWhitelisted() {
  > |        promoMoney = _promoMoney;
    |    }
    | 
  at /home/jiaming/slither_fp_files/out9440.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseRabbit':
    |    function transferOwnership(address add) public onlyOwner {
    |        if (add != address(0)) {
  > |            ownerCEO = add;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseRabbit':
    |    function transferOwnerMoney(address _ownerMoney) public  onlyOwner {
    |        if (_ownerMoney != address(0)) {
  > |            ownerMoney = _ownerMoney;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseRabbit':
    |    function removeAddressFromWhitelist(address addr) onlyOwner public returns(bool success) {
    |        if (whitelist[addr]) {
  > |            whitelist[addr] = false;
    |            emit WhitelistedAddressRemoved(addr);
    |            success = true;
  at /home/jiaming/slither_fp_files/out9440.sol(157)

[31mViolation[0m for LockedEther in contract 'BodyRabbit':
    |
    |
  > |contract BodyRabbit is BaseRabbit, ERC721 {
    |    uint public totalBunny = 0;
    |    string public constant name = "CryptoRabbits";
  at /home/jiaming/slither_fp_files/out9440.sol(366)

[33mWarning[0m for UnhandledException in contract 'BodyRabbit':
    |
    |    function isPriv() public view returns(bool) {
  > |        return privateContract.isUIntPrivate();
    |    }
    |
  at /home/jiaming/slither_fp_files/out9440.sol(395)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BodyRabbit':
    |
    |    function isPriv() public view returns(bool) {
  > |        return privateContract.isUIntPrivate();
    |    }
    |
  at /home/jiaming/slither_fp_files/out9440.sol(395)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |pragma solidity ^0.4.24;
    |/*
  > |______ _   _ _   _  _   ___   __
    || ___ \ | | | \ | || \ | \ \ / /
    || |_/ / | | |  \| ||  \| |\ V / 
  at /home/jiaming/slither_fp_files/out9440.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |    function addAddressToWhitelist(address addr) onlyWhitelisted public returns(bool success) {
    |        if (!whitelist[addr]) {
  > |            whitelist[addr] = true;
    |
    |            countAddress = countAddress + 1;
  at /home/jiaming/slither_fp_files/out9440.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |            whitelist[addr] = true;
    |
  > |            countAddress = countAddress + 1;
    |            whitelistCheck[countAddress] = addr;
    |
  at /home/jiaming/slither_fp_files/out9440.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |
    |            countAddress = countAddress + 1;
  > |            whitelistCheck[countAddress] = addr;
    |
    |            emit WhitelistedAddressAdded(addr);
  at /home/jiaming/slither_fp_files/out9440.sol(116)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |
    |    function setPromoGen0(uint _promoGen0) public onlyWhitelisted() {
  > |        promoGen0 = _promoGen0;
    |    }
    |
  at /home/jiaming/slither_fp_files/out9440.sol(255)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |
    |    function setPromoPause() public onlyWhitelisted() {
  > |        promoPause = !promoPause;
    |    }
    |
  at /home/jiaming/slither_fp_files/out9440.sol(259)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |
    |    function setPromoMoney(uint _promoMoney) public onlyWhitelisted() {
  > |        promoMoney = _promoMoney;
    |    }
    | 
  at /home/jiaming/slither_fp_files/out9440.sol(265)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |
    |
  > |contract BodyRabbit is BaseRabbit, ERC721 {
    |    uint public totalBunny = 0;
    |    string public constant name = "CryptoRabbits";
  at /home/jiaming/slither_fp_files/out9440.sol(366)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |    */
    |    function setPriv(address _privAddress) public returns(bool) {
  > |        privAddress = _privAddress;
    |        privateContract = PrivateRabbitInterface(_privAddress);
    |    } 
  at /home/jiaming/slither_fp_files/out9440.sol(379)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |    function setPriv(address _privAddress) public returns(bool) {
    |        privAddress = _privAddress;
  > |        privateContract = PrivateRabbitInterface(_privAddress);
    |    } 
    |    function setAdmixture(address _addressAdmixture) public returns(bool) {
  at /home/jiaming/slither_fp_files/out9440.sol(380)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |    } 
    |    function setAdmixture(address _addressAdmixture) public returns(bool) {
  > |        addressAdmixture = _addressAdmixture;
    |        AdmixtureContract = AdmixtureInterface(_addressAdmixture);
    |    } 
  at /home/jiaming/slither_fp_files/out9440.sol(383)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |    function setAdmixture(address _addressAdmixture) public returns(bool) {
    |        addressAdmixture = _addressAdmixture;
  > |        AdmixtureContract = AdmixtureInterface(_addressAdmixture);
    |    } 
    |
  at /home/jiaming/slither_fp_files/out9440.sol(384)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |            if(ownerBunnies[_owner][i] == _tokenId)
    |            { 
  > |                delete ownerBunnies[_owner][i];
    |                if(count > 0 && count != (i-1)){
    |                    ownerBunnies[_owner][i] = ownerBunnies[_owner][(count-1)];
  at /home/jiaming/slither_fp_files/out9440.sol(419)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |                delete ownerBunnies[_owner][i];
    |                if(count > 0 && count != (i-1)){
  > |                    ownerBunnies[_owner][i] = ownerBunnies[_owner][(count-1)];
    |                    delete ownerBunnies[_owner][(count-1)];
    |                } 
  at /home/jiaming/slither_fp_files/out9440.sol(421)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |                if(count > 0 && count != (i-1)){
    |                    ownerBunnies[_owner][i] = ownerBunnies[_owner][(count-1)];
  > |                    delete ownerBunnies[_owner][(count-1)];
    |                } 
    |                ownerBunnies[_owner].length--;
  at /home/jiaming/slither_fp_files/out9440.sol(422)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |     */
    |    function addTokenList(address owner,  uint32 _tokenId) internal {
  > |        ownerBunnies[owner].push( _tokenId);
    |        emit OwnerBunnies(owner, _tokenId);
    |        rabbitToOwner[_tokenId] = owner; 
  at /home/jiaming/slither_fp_files/out9440.sol(450)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |        ownerBunnies[owner].push( _tokenId);
    |        emit OwnerBunnies(owner, _tokenId);
  > |        rabbitToOwner[_tokenId] = owner; 
    |    }
    | 
  at /home/jiaming/slither_fp_files/out9440.sol(452)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |
    |    function setPauseSave() public onlyWhitelisted()  returns(bool) {
  > |        return pauseSave = !pauseSave;
    |    }
    | 
  at /home/jiaming/slither_fp_files/out9440.sol(494)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |    { 
    |        if (types == 1) {
  > |            rabbits[(_bunny - 1)].birthCount = data;
    |        } else if (types == 2) {
    |            rabbits[(_bunny - 1)].genome = data;
  at /home/jiaming/slither_fp_files/out9440.sol(637)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |            rabbits[(_bunny - 1)].birthCount = data;
    |        } else if (types == 2) {
  > |            rabbits[(_bunny - 1)].genome = data;
    |        } else if (types == 3) {
    |            rabbitSirePrice[_bunny] = data;
  at /home/jiaming/slither_fp_files/out9440.sol(639)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |            rabbits[(_bunny - 1)].genome = data;
    |        } else if (types == 3) {
  > |            rabbitSirePrice[_bunny] = data;
    |        } else if (types == 4) {
    |            motherCount[_bunny] = data;
  at /home/jiaming/slither_fp_files/out9440.sol(641)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |            rabbitSirePrice[_bunny] = data;
    |        } else if (types == 4) {
  > |            motherCount[_bunny] = data;
    |            emit EmotherCount(_bunny, data);
    |        } 
  at /home/jiaming/slither_fp_files/out9440.sol(643)

[33mWarning[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |    function transferOwnership(address add) public onlyOwner {
    |        if (add != address(0)) {
  > |            ownerCEO = add;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |    function transferOwnerMoney(address _ownerMoney) public  onlyOwner {
    |        if (_ownerMoney != address(0)) {
  > |            ownerMoney = _ownerMoney;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |    function removeAddressFromWhitelist(address addr) onlyOwner public returns(bool success) {
    |        if (whitelist[addr]) {
  > |            whitelist[addr] = false;
    |            emit WhitelistedAddressRemoved(addr);
    |            success = true;
  at /home/jiaming/slither_fp_files/out9440.sol(157)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |* functions, this simplifies the implementation of "user permissions".
    |*/
  > |contract Ownable {
    |    
    |    address ownerCEO;
  at /home/jiaming/slither_fp_files/out9440.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |   
  > |    function transferOwnership(address add) public onlyOwner {
    |        if (add != address(0)) {
    |            ownerCEO = add;
  at /home/jiaming/slither_fp_files/out9440.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    | 
  > |    function transferOwnerMoney(address _ownerMoney) public  onlyOwner {
    |        if (_ownerMoney != address(0)) {
    |            ownerMoney = _ownerMoney;
  at /home/jiaming/slither_fp_files/out9440.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    | 
  > |    function getOwnerMoney() public view onlyOwner returns(address) {
    |        return ownerMoney;
    |    } 
  at /home/jiaming/slither_fp_files/out9440.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    *  @dev private contract
    |     */
  > |    function getPrivAddress() public view onlyOwner returns(address) {
    |        return privAddress;
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        return privAddress;
    |    }
  > |    function getAddressAdmixture() public view onlyOwner returns(address) {
    |        return addressAdmixture;
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address add) public onlyOwner {
    |        if (add != address(0)) {
  > |            ownerCEO = add;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnerMoney(address _ownerMoney) public  onlyOwner {
    |        if (_ownerMoney != address(0)) {
  > |            ownerMoney = _ownerMoney;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(60)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/slither_fp_files/out9440.sol(182)

[33mWarning[0m for LockedEther in contract 'Whitelist':
    | * @dev This simplifies the implementation of "user permissions".
    | */
  > |contract Whitelist is Ownable {
    |    mapping(address => bool) public whitelist;
    |
  at /home/jiaming/slither_fp_files/out9440.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'Whitelist':
    | */
    |contract Whitelist is Ownable {
  > |    mapping(address => bool) public whitelist;
    |
    |    mapping(uint  => address)   whitelistCheck;
  at /home/jiaming/slither_fp_files/out9440.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'Whitelist':
    |    }
    |
  > |    function getWhitelistCheck(uint key) onlyWhitelisted view public returns(address) {
    |        return whitelistCheck[key];
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'Whitelist':
    |
    |
  > |    function getInWhitelist(address addr) public view returns(bool) {
    |        return whitelist[addr];
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(128)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |    }
    |   
  > |    function transferOwnership(address add) public onlyOwner {
    |        if (add != address(0)) {
    |            ownerCEO = add;
  at /home/jiaming/slither_fp_files/out9440.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |    }
    | 
  > |    function transferOwnerMoney(address _ownerMoney) public  onlyOwner {
    |        if (_ownerMoney != address(0)) {
    |            ownerMoney = _ownerMoney;
  at /home/jiaming/slither_fp_files/out9440.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |    }
    | 
  > |    function getOwnerMoney() public view onlyOwner returns(address) {
    |        return ownerMoney;
    |    } 
  at /home/jiaming/slither_fp_files/out9440.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |    *  @dev private contract
    |     */
  > |    function getPrivAddress() public view onlyOwner returns(address) {
    |        return privAddress;
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |        return privAddress;
    |    }
  > |    function getAddressAdmixture() public view onlyOwner returns(address) {
    |        return addressAdmixture;
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |
    |    mapping(uint  => address)   whitelistCheck;
  > |    uint public countAddress = 0;
    |
    |    event WhitelistedAddressAdded(address addr);
  at /home/jiaming/slither_fp_files/out9440.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |        return whitelist[addr];
    |    }
  > |    function getOwnerCEO() public onlyWhitelisted view returns(address) {
    |        return ownerCEO;
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |    * false if all addresses were already in the whitelist
    |    */
  > |    function addAddressesToWhitelist(address[] addrs) onlyOwner public returns(bool success) {
    |        for (uint256 i = 0; i < addrs.length; i++) {
    |            if (addAddressToWhitelist(addrs[i])) {
  at /home/jiaming/slither_fp_files/out9440.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |    * false if all addresses weren't in the whitelist in the first place
    |    */
  > |    function removeAddressesFromWhitelist(address[] addrs) onlyOwner public returns(bool success) {
    |        for (uint256 i = 0; i < addrs.length; i++) {
    |            if (removeAddressFromWhitelist(addrs[i])) {
  at /home/jiaming/slither_fp_files/out9440.sol(169)

[31mViolation[0m for UnrestrictedWrite in contract 'Whitelist':
    |    function addAddressToWhitelist(address addr) onlyWhitelisted public returns(bool success) {
    |        if (!whitelist[addr]) {
  > |            whitelist[addr] = true;
    |
    |            countAddress = countAddress + 1;
  at /home/jiaming/slither_fp_files/out9440.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'Whitelist':
    |            whitelist[addr] = true;
    |
  > |            countAddress = countAddress + 1;
    |            whitelistCheck[countAddress] = addr;
    |
  at /home/jiaming/slither_fp_files/out9440.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'Whitelist':
    |
    |            countAddress = countAddress + 1;
  > |            whitelistCheck[countAddress] = addr;
    |
    |            emit WhitelistedAddressAdded(addr);
  at /home/jiaming/slither_fp_files/out9440.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |    function transferOwnership(address add) public onlyOwner {
    |        if (add != address(0)) {
  > |            ownerCEO = add;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |    function transferOwnerMoney(address _ownerMoney) public  onlyOwner {
    |        if (_ownerMoney != address(0)) {
  > |            ownerMoney = _ownerMoney;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out9440.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |    function removeAddressFromWhitelist(address addr) onlyOwner public returns(bool success) {
    |        if (whitelist[addr]) {
  > |            whitelist[addr] = false;
    |            emit WhitelistedAddressRemoved(addr);
    |            success = true;
  at /home/jiaming/slither_fp_files/out9440.sol(157)


