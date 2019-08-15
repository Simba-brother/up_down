Processing contract: /home/jiaming/slither_fp_files/out12140.sol:BaseRabbit
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out12140.sol:BodyRabbit
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out12140.sol:BunnyGame
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out12140.sol:ERC721
Processing contract: /home/jiaming/slither_fp_files/out12140.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out12140.sol:PrivateRabbitInterface
Processing contract: /home/jiaming/slither_fp_files/out12140.sol:RabbitMarket
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out12140.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BaseRabbit':
    | 
    |
  > |contract BaseRabbit  is Ownable {
    |       
    |
  at /home/jiaming/slither_fp_files/out12140.sol(131)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    |
    |
  > |    function setPromoGen0(uint _promoGen0) public onlyOwner {
    |        promoGen0 = _promoGen0;
    |    }
  at /home/jiaming/slither_fp_files/out12140.sol(178)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    |
    |
  > |    function setPromoMoney(uint _promoMoney) public onlyOwner {
    |        promoMoney = _promoMoney;
    |    }
  at /home/jiaming/slither_fp_files/out12140.sol(188)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    |    } 
    |
  > |    mapping(uint32 => uint) public totalSalaryBunny;
    |    mapping(uint32 => uint32[5]) public rabbitMother;
    |    
  at /home/jiaming/slither_fp_files/out12140.sol(196)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    |
    |    mapping(uint32 => uint) public totalSalaryBunny;
  > |    mapping(uint32 => uint32[5]) public rabbitMother;
    |    
    |    mapping(uint32 => uint) public motherCount;
  at /home/jiaming/slither_fp_files/out12140.sol(197)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    |    mapping(uint32 => uint32[5]) public rabbitMother;
    |    
  > |    mapping(uint32 => uint) public motherCount;
    |    
    |    // how many times did the rabbit cross
  at /home/jiaming/slither_fp_files/out12140.sol(199)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    |    
    |    // how many times did the rabbit cross
  > |    mapping(uint32 => uint) public rabbitBreedCount;
    |
    |    mapping(uint32 => uint)  public rabbitSirePrice;
  at /home/jiaming/slither_fp_files/out12140.sol(202)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    |    mapping(uint32 => uint) public rabbitBreedCount;
    |
  > |    mapping(uint32 => uint)  public rabbitSirePrice;
    |    mapping(uint => uint32[]) public sireGenom;
    |    mapping (uint32 => uint) mapDNK;
  at /home/jiaming/slither_fp_files/out12140.sol(204)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    |
    |    mapping(uint32 => uint)  public rabbitSirePrice;
  > |    mapping(uint => uint32[]) public sireGenom;
    |    mapping (uint32 => uint) mapDNK;
    |   
  at /home/jiaming/slither_fp_files/out12140.sol(205)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    |    * who owns the rabbit
    |    */
  > |    mapping (uint32 => address) public rabbitToOwner; 
    |    mapping(address => uint32[]) public ownerBunnies;
    |    //mapping (address => uint) ownerRabbitCount;
  at /home/jiaming/slither_fp_files/out12140.sol(247)

[31mViolation[0m for MissingInputValidation in contract 'BaseRabbit':
    |    */
    |    mapping (uint32 => address) public rabbitToOwner; 
  > |    mapping(address => uint32[]) public ownerBunnies;
    |    //mapping (address => uint) ownerRabbitCount;
    |    mapping (uint32 => string) rabbitDescription;
  at /home/jiaming/slither_fp_files/out12140.sol(248)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |contract Ownable {
    |    
  > |    address public ownerCEO;
    |    address ownerMoney;  
    |    address ownerServer;
  at /home/jiaming/slither_fp_files/out12140.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    }
    |
  > |    function transferOwnership(address add) public onlyOwner {
    |        if (add != address(0)) {
    |            ownerCEO = add;
  at /home/jiaming/slither_fp_files/out12140.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    | 
    |
  > |    function transferOwnershipServer(address add) public onlyOwner {
    |        if (add != address(0)) {
    |            ownerServer = add;
  at /home/jiaming/slither_fp_files/out12140.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    } 
    |     
  > |    function transferOwnerMoney(address _ownerMoney) public  onlyOwner {
    |        if (_ownerMoney != address(0)) {
    |            ownerMoney = _ownerMoney;
  at /home/jiaming/slither_fp_files/out12140.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    }
    | 
  > |    function getOwnerMoney() public view onlyOwner returns(address) {
    |        return ownerMoney;
    |    } 
  at /home/jiaming/slither_fp_files/out12140.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |        return ownerMoney;
    |    } 
  > |    function getOwnerServer() public view onlyOwner returns(address) {
    |        return ownerServer;
    |    }
  at /home/jiaming/slither_fp_files/out12140.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    *  @dev private contract
    |     */
  > |    function getPrivAddress() public view onlyOwner returns(address) {
    |        return privAddress;
    |    }
  at /home/jiaming/slither_fp_files/out12140.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    | 
    |
  > |    address public  myAddr_test = 0x982a49414fD95e3268D3559540A67B03e40AcD64;
    |
    |    using SafeMath for uint256;
  at /home/jiaming/slither_fp_files/out12140.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    uint256 bigPrice = 0.0005 ether;
    |    
  > |    uint public commission_system = 5;
    |     
    |    // ID the last seal
  at /home/jiaming/slither_fp_files/out12140.sol(161)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |     
    |    // ID the last seal
  > |    uint32 public lastIdGen0;
    |    uint public totalGen0 = 0;
    |    // ID the last seal
  at /home/jiaming/slither_fp_files/out12140.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    // ID the last seal
    |    uint32 public lastIdGen0;
  > |    uint public totalGen0 = 0;
    |    // ID the last seal
    |    uint public lastTimeGen0;
  at /home/jiaming/slither_fp_files/out12140.sol(165)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    uint public totalGen0 = 0;
    |    // ID the last seal
  > |    uint public lastTimeGen0;
    |    
    |    // ID the last seal
  at /home/jiaming/slither_fp_files/out12140.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    // ID the last seal
    |  //  uint public timeRangeCreateGen0 = 1800;
  > |    uint public timeRangeCreateGen0 = 1;
    |
    |    uint public promoGen0 = 2500;
  at /home/jiaming/slither_fp_files/out12140.sol(171)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    uint public timeRangeCreateGen0 = 1;
    |
  > |    uint public promoGen0 = 2500;
    |    uint public promoMoney = 1*bigPrice;
    |    bool public promoPause = false;
  at /home/jiaming/slither_fp_files/out12140.sol(173)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |
    |    uint public promoGen0 = 2500;
  > |    uint public promoMoney = 1*bigPrice;
    |    bool public promoPause = false;
    |
  at /home/jiaming/slither_fp_files/out12140.sol(174)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    uint public promoGen0 = 2500;
    |    uint public promoMoney = 1*bigPrice;
  > |    bool public promoPause = false;
    |
    |
  at /home/jiaming/slither_fp_files/out12140.sol(175)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    }
    |
  > |    function setPromoPause() public onlyOwner {
    |        promoPause = !promoPause;
    |    }
  at /home/jiaming/slither_fp_files/out12140.sol(182)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    mapping (uint32 => uint) mapDNK;
    |   
  > |    uint32[12] public cooldowns = [
    |        uint32(1 minutes),
    |        uint32(2 minutes),
  at /home/jiaming/slither_fp_files/out12140.sol(208)

[33mWarning[0m for MissingInputValidation in contract 'BaseRabbit':
    |    * Where we will store information about rabbits
    |    */
  > |    Rabbit[]  public rabbits;
    |     
    |    /**
  at /home/jiaming/slither_fp_files/out12140.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseRabbit':
    |    function transferOwnership(address add) public onlyOwner {
    |        if (add != address(0)) {
  > |            ownerCEO = add;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out12140.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseRabbit':
    |    function transferOwnershipServer(address add) public onlyOwner {
    |        if (add != address(0)) {
  > |            ownerServer = add;
    |        }
    |    } 
  at /home/jiaming/slither_fp_files/out12140.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseRabbit':
    |    function transferOwnerMoney(address _ownerMoney) public  onlyOwner {
    |        if (_ownerMoney != address(0)) {
  > |            ownerMoney = _ownerMoney;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out12140.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseRabbit':
    |
    |    function setPromoGen0(uint _promoGen0) public onlyOwner {
  > |        promoGen0 = _promoGen0;
    |    }
    |
  at /home/jiaming/slither_fp_files/out12140.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseRabbit':
    |
    |    function setPromoPause() public onlyOwner {
  > |        promoPause = !promoPause;
    |    }
    |
  at /home/jiaming/slither_fp_files/out12140.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseRabbit':
    |
    |    function setPromoMoney(uint _promoMoney) public onlyOwner {
  > |        promoMoney = _promoMoney;
    |    }
    |    modifier timeRange() {
  at /home/jiaming/slither_fp_files/out12140.sol(189)

[31mViolation[0m for LockedEther in contract 'BodyRabbit':
    |
    |
  > |contract BodyRabbit is BaseRabbit, ERC721 {
    |     
    |    uint public totalBunny = 0;
  at /home/jiaming/slither_fp_files/out12140.sol(288)

[33mWarning[0m for UnhandledException in contract 'BodyRabbit':
    |
    |    function isPriv() public view returns(bool) {
  > |        return privateContract.isUIntPrivate();
    |    }
    |
  at /home/jiaming/slither_fp_files/out12140.sol(314)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BodyRabbit':
    |
    |    function isPriv() public view returns(bool) {
  > |        return privateContract.isUIntPrivate();
    |    }
    |
  at /home/jiaming/slither_fp_files/out12140.sol(314)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |
    |/*
  > |*  ██████╗ ██╗   ██╗███╗   ██╗███╗   ██╗██╗   ██╗    
    |*  ██╔══██╗██║   ██║████╗  ██║████╗  ██║╚██╗ ██╔╝    
    |*  ██████╔╝██║   ██║██╔██╗ ██║██╔██╗ ██║ ╚████╔╝     
  at /home/jiaming/slither_fp_files/out12140.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |
    |
  > |contract BodyRabbit is BaseRabbit, ERC721 {
    |     
    |    uint public totalBunny = 0;
  at /home/jiaming/slither_fp_files/out12140.sol(288)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |    */
    |    function setPriv(address _privAddress) public returns(bool) {
  > |        privAddress = _privAddress;
    |        privateContract = PrivateRabbitInterface(_privAddress);
    |    } 
  at /home/jiaming/slither_fp_files/out12140.sol(301)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |    function setPriv(address _privAddress) public returns(bool) {
    |        privAddress = _privAddress;
  > |        privateContract = PrivateRabbitInterface(_privAddress);
    |    } 
    |
  at /home/jiaming/slither_fp_files/out12140.sol(302)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |            if(ownerBunnies[_owner][i] == _tokenId)
    |            { 
  > |                delete ownerBunnies[_owner][i];
    |                if(count > 0 && count != (i-1)){
    |                    ownerBunnies[_owner][i] = ownerBunnies[_owner][(count-1)];
  at /home/jiaming/slither_fp_files/out12140.sol(338)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |                delete ownerBunnies[_owner][i];
    |                if(count > 0 && count != (i-1)){
  > |                    ownerBunnies[_owner][i] = ownerBunnies[_owner][(count-1)];
    |                    delete ownerBunnies[_owner][(count-1)];
    |                } 
  at /home/jiaming/slither_fp_files/out12140.sol(340)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |                if(count > 0 && count != (i-1)){
    |                    ownerBunnies[_owner][i] = ownerBunnies[_owner][(count-1)];
  > |                    delete ownerBunnies[_owner][(count-1)];
    |                } 
    |                ownerBunnies[_owner].length--;
  at /home/jiaming/slither_fp_files/out12140.sol(341)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    | 
    |    function addTokenList(address owner,  uint32 _tokenId) internal {
  > |        ownerBunnies[owner].push( _tokenId);
    |        emit OwnerBunnies(owner, _tokenId);
    |        rabbitToOwner[_tokenId] = owner; 
  at /home/jiaming/slither_fp_files/out12140.sol(367)

[31mViolation[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |        ownerBunnies[owner].push( _tokenId);
    |        emit OwnerBunnies(owner, _tokenId);
  > |        rabbitToOwner[_tokenId] = owner; 
    |    }
    | 
  at /home/jiaming/slither_fp_files/out12140.sol(369)

[33mWarning[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |    function transferOwnership(address add) public onlyOwner {
    |        if (add != address(0)) {
  > |            ownerCEO = add;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out12140.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |    function transferOwnershipServer(address add) public onlyOwner {
    |        if (add != address(0)) {
  > |            ownerServer = add;
    |        }
    |    } 
  at /home/jiaming/slither_fp_files/out12140.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |    function transferOwnerMoney(address _ownerMoney) public  onlyOwner {
    |        if (_ownerMoney != address(0)) {
  > |            ownerMoney = _ownerMoney;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out12140.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |
    |    function setPromoGen0(uint _promoGen0) public onlyOwner {
  > |        promoGen0 = _promoGen0;
    |    }
    |
  at /home/jiaming/slither_fp_files/out12140.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |
    |    function setPromoPause() public onlyOwner {
  > |        promoPause = !promoPause;
    |    }
    |
  at /home/jiaming/slither_fp_files/out12140.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |
    |    function setPromoMoney(uint _promoMoney) public onlyOwner {
  > |        promoMoney = _promoMoney;
    |    }
    |    modifier timeRange() {
  at /home/jiaming/slither_fp_files/out12140.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |    
    |    function setTimeRangeGen0(uint _sec) public onlyOwner {
  > |        timeRangeCreateGen0 = _sec;
    |    }
    |
  at /home/jiaming/slither_fp_files/out12140.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'BodyRabbit':
    |
    |    function setPauseSave() public onlyOwner  returns(bool) {
  > |        return pauseSave = !pauseSave;
    |    }
    |
  at /home/jiaming/slither_fp_files/out12140.sol(412)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |*/
    |
  > |contract Ownable {
    |    
    |    address public ownerCEO;
  at /home/jiaming/slither_fp_files/out12140.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    
  > |    address public ownerCEO;
    |    address ownerMoney;  
    |    address ownerServer;
  at /home/jiaming/slither_fp_files/out12140.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address add) public onlyOwner {
    |        if (add != address(0)) {
    |            ownerCEO = add;
  at /home/jiaming/slither_fp_files/out12140.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | 
    |
  > |    function transferOwnershipServer(address add) public onlyOwner {
    |        if (add != address(0)) {
    |            ownerServer = add;
  at /home/jiaming/slither_fp_files/out12140.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    } 
    |     
  > |    function transferOwnerMoney(address _ownerMoney) public  onlyOwner {
    |        if (_ownerMoney != address(0)) {
    |            ownerMoney = _ownerMoney;
  at /home/jiaming/slither_fp_files/out12140.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    | 
  > |    function getOwnerMoney() public view onlyOwner returns(address) {
    |        return ownerMoney;
    |    } 
  at /home/jiaming/slither_fp_files/out12140.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        return ownerMoney;
    |    } 
  > |    function getOwnerServer() public view onlyOwner returns(address) {
    |        return ownerServer;
    |    }
  at /home/jiaming/slither_fp_files/out12140.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    *  @dev private contract
    |     */
  > |    function getPrivAddress() public view onlyOwner returns(address) {
    |        return privAddress;
    |    }
  at /home/jiaming/slither_fp_files/out12140.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address add) public onlyOwner {
    |        if (add != address(0)) {
  > |            ownerCEO = add;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out12140.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnershipServer(address add) public onlyOwner {
    |        if (add != address(0)) {
  > |            ownerServer = add;
    |        }
    |    } 
  at /home/jiaming/slither_fp_files/out12140.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnerMoney(address _ownerMoney) public  onlyOwner {
    |        if (_ownerMoney != address(0)) {
  > |            ownerMoney = _ownerMoney;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out12140.sol(74)

[31mViolation[0m for TODReceiver in contract 'RabbitMarket':
    |    function sendMoney(address _to, uint256 _money) internal { 
    |        _to.transfer((_money/100)*95);
  > |        ownerMoney.transfer((_money/100)*5); 
    |    }
    |
  at /home/jiaming/slither_fp_files/out12140.sol(536)

[33mWarning[0m for UnhandledException in contract 'RabbitMarket':
    |
    |    function isPriv() public view returns(bool) {
  > |        return privateContract.isUIntPrivate();
    |    }
    |
  at /home/jiaming/slither_fp_files/out12140.sol(314)

[33mWarning[0m for UnhandledException in contract 'RabbitMarket':
    |
    |    function sendMoney(address _to, uint256 _money) internal { 
  > |        _to.transfer((_money/100)*95);
    |        ownerMoney.transfer((_money/100)*5); 
    |    }
  at /home/jiaming/slither_fp_files/out12140.sol(535)

[33mWarning[0m for UnhandledException in contract 'RabbitMarket':
    |    function sendMoney(address _to, uint256 _money) internal { 
    |        _to.transfer((_money/100)*95);
  > |        ownerMoney.transfer((_money/100)*5); 
    |    }
    |
  at /home/jiaming/slither_fp_files/out12140.sol(536)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RabbitMarket':
    |
    |    function isPriv() public view returns(bool) {
  > |        return privateContract.isUIntPrivate();
    |    }
    |
  at /home/jiaming/slither_fp_files/out12140.sol(314)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RabbitMarket':
    |
    |    function sendMoney(address _to, uint256 _money) internal { 
  > |        _to.transfer((_money/100)*95);
    |        ownerMoney.transfer((_money/100)*5); 
    |    }
  at /home/jiaming/slither_fp_files/out12140.sol(535)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RabbitMarket':
    |    function sendMoney(address _to, uint256 _money) internal { 
    |        _to.transfer((_money/100)*95);
  > |        ownerMoney.transfer((_money/100)*5); 
    |    }
    |
  at /home/jiaming/slither_fp_files/out12140.sol(536)

[33mWarning[0m for UnrestrictedWrite in contract 'RabbitMarket':
    |    function transferOwnership(address add) public onlyOwner {
    |        if (add != address(0)) {
  > |            ownerCEO = add;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out12140.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'RabbitMarket':
    |    function transferOwnershipServer(address add) public onlyOwner {
    |        if (add != address(0)) {
  > |            ownerServer = add;
    |        }
    |    } 
  at /home/jiaming/slither_fp_files/out12140.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'RabbitMarket':
    |    function transferOwnerMoney(address _ownerMoney) public  onlyOwner {
    |        if (_ownerMoney != address(0)) {
  > |            ownerMoney = _ownerMoney;
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out12140.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'RabbitMarket':
    |
    |    function setPromoGen0(uint _promoGen0) public onlyOwner {
  > |        promoGen0 = _promoGen0;
    |    }
    |
  at /home/jiaming/slither_fp_files/out12140.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'RabbitMarket':
    |
    |    function setPromoPause() public onlyOwner {
  > |        promoPause = !promoPause;
    |    }
    |
  at /home/jiaming/slither_fp_files/out12140.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'RabbitMarket':
    |
    |    function setPromoMoney(uint _promoMoney) public onlyOwner {
  > |        promoMoney = _promoMoney;
    |    }
    |    modifier timeRange() {
  at /home/jiaming/slither_fp_files/out12140.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'RabbitMarket':
    |    
    |    function setTimeRangeGen0(uint _sec) public onlyOwner {
  > |        timeRangeCreateGen0 = _sec;
    |    }
    |
  at /home/jiaming/slither_fp_files/out12140.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'RabbitMarket':
    |
    |    function setPauseSave() public onlyOwner  returns(bool) {
  > |        return pauseSave = !pauseSave;
    |    }
    |
  at /home/jiaming/slither_fp_files/out12140.sol(412)

[33mWarning[0m for UnrestrictedWrite in contract 'RabbitMarket':
    |           
    |    function setStepMoney(uint money) public onlyOwner {
  > |        stepMoney = money;
    |    }
    |    /**
  at /home/jiaming/slither_fp_files/out12140.sol(635)

[33mWarning[0m for UnrestrictedWrite in contract 'RabbitMarket':
    | 
    |    function setMoneyRange(uint _money) public onlyOwner {
  > |        moneyRange = _money;
    |    }
    |     
  at /home/jiaming/slither_fp_files/out12140.sol(658)

[33mWarning[0m for UnrestrictedWrite in contract 'RabbitMarket':
    |        require(_money >= bigPrice);
    |        require(rabbitToOwner[_bunnyid] ==  msg.sender);
  > |        bunnyCost[_bunnyid] = _money;
    |        emit StartMarket(_bunnyid, _money);
    |        return marketCount++;
  at /home/jiaming/slither_fp_files/out12140.sol(693)

[33mWarning[0m for UnrestrictedWrite in contract 'RabbitMarket':
    |        bunnyCost[_bunnyid] = _money;
    |        emit StartMarket(_bunnyid, _money);
  > |        return marketCount++;
    |    }
    |
  at /home/jiaming/slither_fp_files/out12140.sol(695)

[33mWarning[0m for UnrestrictedWrite in contract 'RabbitMarket':
    |        require(isPauseSave());
    |        require(rabbitToOwner[_bunnyid] == msg.sender);  
  > |        bunnyCost[_bunnyid] = 0;
    |        emit StopMarket(_bunnyid);
    |        return marketCount--;
  at /home/jiaming/slither_fp_files/out12140.sol(706)

[33mWarning[0m for UnrestrictedWrite in contract 'RabbitMarket':
    |        bunnyCost[_bunnyid] = 0;
    |        emit StopMarket(_bunnyid);
  > |        return marketCount--;
    |    }
    |
  at /home/jiaming/slither_fp_files/out12140.sol(708)

[33mWarning[0m for UnrestrictedWrite in contract 'RabbitMarket':
    |        require(msg.value >= price && 0 != price);
    |        // stop trading on the current rabbit
  > |        totalClosedBID++;
    |        // Sending money to the old user
    |        sendMoney(rabbitToOwner[_bunnyid], msg.value);
  at /home/jiaming/slither_fp_files/out12140.sol(722)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/slither_fp_files/out12140.sol(99)


