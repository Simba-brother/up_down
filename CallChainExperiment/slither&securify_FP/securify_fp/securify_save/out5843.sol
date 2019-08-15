Processing contract: /home/jiaming/slither_fp_files/out5843.sol:ERC20Interface
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:GodMode
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthAbstractInterface
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthAuctionsAbstractInterface
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthAuctionsReferencer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthBlindAuctionsReferencer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthBoard
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthBoardReferencer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthEthExchangeReferencer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthExchangeReferencer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthHouseRealty
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthHouseRealtyReferencer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthHouses
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthHousesAbstractInterface
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthHousesReferencer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthOpenAuctionsReferencer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthReferencer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthResource
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthResourceExchangeReferencer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthResourceType
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthResourcesInterface
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthResourcesInterfaceReferencer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthRoadRealty
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthRoadRealtyReferencer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthRoads
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthRoadsAbstractInterface
Processing contract: /home/jiaming/slither_fp_files/out5843.sol:KingOfEthRoadsReferencer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'GodMode':
    |///  in a contract as well as the ability for God to pause
    |///  the contract
  > |contract GodMode {
    |    /// @dev Is the contract paused?
    |    bool public isPaused;
  at /home/jiaming/slither_fp_files/out5843.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'GodMode':
    |    /// @dev God can change the address of God
    |    /// @param _newGod The new address for God
  > |    function godChangeGod(address _newGod) public onlyGod
    |    {
    |        god = _newGod;
  at /home/jiaming/slither_fp_files/out5843.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'GodMode':
    |contract GodMode {
    |    /// @dev Is the contract paused?
  > |    bool public isPaused;
    |
    |    /// @dev God's address
  at /home/jiaming/slither_fp_files/out5843.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'GodMode':
    |
    |    /// @dev God's address
  > |    address public god;
    |
    |    /// @dev Only God can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'GodMode':
    |
    |    /// @dev God can pause the game
  > |    function godPause() public onlyGod
    |    {
    |        isPaused = true;
  at /home/jiaming/slither_fp_files/out5843.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'GodMode':
    |
    |    /// @dev God can unpause the game
  > |    function godUnpause() public onlyGod
    |    {
    |        isPaused = false;
  at /home/jiaming/slither_fp_files/out5843.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'GodMode':
    |    function godChangeGod(address _newGod) public onlyGod
    |    {
  > |        god = _newGod;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'GodMode':
    |    function godPause() public onlyGod
    |    {
  > |        isPaused = true;
    |
    |        emit GodPaused();
  at /home/jiaming/slither_fp_files/out5843.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'GodMode':
    |    function godUnpause() public onlyGod
    |    {
  > |        isPaused = false;
    |
    |        emit GodUnpaused();
  at /home/jiaming/slither_fp_files/out5843.sol(73)

[33mWarning[0m for DAOConstantGas in contract 'KingOfEth':
    |                   - parliamentsTaxes - _parliamentsUnclaimed;
    |
  > |        god.transfer(taxes);
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(3100)

[33mWarning[0m for DAOConstantGas in contract 'KingOfEth':
    |        kingsTaxes = 0;
    |
  > |        king.transfer(_taxes);
    |
    |        emit KingsTaxesClaimed(msg.sender, now);
  at /home/jiaming/slither_fp_files/out5843.sol(3132)

[33mWarning[0m for DAOConstantGas in contract 'KingOfEth':
    |        wayfarersTaxes = 0;
    |
  > |        wayfarer.transfer(_taxes);
    |
    |        emit WayfarersTaxesClaimed(msg.sender, now);
  at /home/jiaming/slither_fp_files/out5843.sol(3154)

[33mWarning[0m for DAOConstantGas in contract 'KingOfEth':
    |
    |            // Send the sender the unclaimed taxes
  > |            msg.sender.transfer(_taxes);
    |        }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(3176)

[33mWarning[0m for DAOConstantGas in contract 'KingOfEth':
    |
    |        // Send the distributor their double share
  > |        msg.sender.transfer(_distributorsShare);
    |
    |        emit ParliamentsTaxesDistributed(msg.sender, _share, now);
  at /home/jiaming/slither_fp_files/out5843.sol(3390)

[33mWarning[0m for LockedEther in contract 'KingOfEth':
    |/// @author Anthony Burzillo <[email protected]>
    |/// @dev Contract for titles, and taxes
  > |contract KingOfEth is
    |      GodMode
    |    , KingOfEthHousesReferencer
  at /home/jiaming/slither_fp_files/out5843.sol(2952)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEth':
    |    /// @dev God can change the address of God
    |    /// @param _newGod The new address for God
  > |    function godChangeGod(address _newGod) public onlyGod
    |    {
    |        god = _newGod;
  at /home/jiaming/slither_fp_files/out5843.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEth':
    |    /// @dev God can set the realty contract
    |    /// @param _housesContract The new address
  > |    function godSetHousesContract(address _housesContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(669)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEth':
    |    /// @dev God can set the realty contract
    |    /// @param _roadsContract The new address
  > |    function godSetRoadsContract(address _roadsContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(1011)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEth':
    |    /// @dev God can set the realty contract
    |    /// @param _interfaceContract The new address
  > |    function godSetInterfaceContract(address _interfaceContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(1171)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEth':
    |    /// @dev Question the standing of a current seat in Parliament
    |    /// @param _seat The seat to run the inquest on
  > |    function parliamentInquest(address _seat) public
    |    {
    |        // Grab the seat's data
  at /home/jiaming/slither_fp_files/out5843.sol(3272)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |contract GodMode {
    |    /// @dev Is the contract paused?
  > |    bool public isPaused;
    |
    |    /// @dev God's address
  at /home/jiaming/slither_fp_files/out5843.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev God's address
  > |    address public god;
    |
    |    /// @dev Only God can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev God can pause the game
  > |    function godPause() public onlyGod
    |    {
    |        isPaused = true;
  at /home/jiaming/slither_fp_files/out5843.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev God can unpause the game
  > |    function godUnpause() public onlyGod
    |    {
    |        isPaused = false;
  at /home/jiaming/slither_fp_files/out5843.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |contract KingOfEthHousesReferencer is GodMode {
    |    /// @dev The houses contract's address
  > |    address public housesContract;
    |
    |    /// @dev Only the houses contract can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(658)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |contract KingOfEthRoadsReferencer is GodMode {
    |    /// @dev The roads contract's address
  > |    address public roadsContract;
    |
    |    /// @dev Only the roads contract can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(1000)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |contract KingOfEthResourcesInterfaceReferencer is GodMode {
    |    /// @dev The interface contract's address
  > |    address public interfaceContract;
    |
    |    /// @dev Only the interface contract can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(1160)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |{
    |    /// @dev Number used to divide the taxes to yield the King's share
  > |    uint public constant kingsTaxDivisor = 5;
    |
    |    /// @dev Number used to divide the taxes to yield the Wayfarer's share
  at /home/jiaming/slither_fp_files/out5843.sol(2959)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev Number used to divide the taxes to yield the Wayfarer's share
  > |    uint public constant wayfarersTaxDivisor = 20;
    |
    |    /// @dev Number used to divide the taxes to yield Parliament's share
  at /home/jiaming/slither_fp_files/out5843.sol(2962)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev Number used to divide the taxes to yield Parliament's share
  > |    uint public constant parliamentsTaxDivisor = 4;
    |
    |    /// @dev Amount of time the King, Wayfarer, and Paliament must wait
  at /home/jiaming/slither_fp_files/out5843.sol(2965)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |    /// @dev Amount of time the King, Wayfarer, and Paliament must wait
    |    ///  between claiming/distributing their taxes
  > |    uint public constant timeBetweenClaims = 2 weeks;
    |
    |    /// @dev Amount of time the King or Parliement has to claim/distribute
  at /home/jiaming/slither_fp_files/out5843.sol(2969)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |    /// @dev Amount of time the King or Parliement has to claim/distribute
    |    ///  their taxes before the other side is able to overthrow them
  > |    uint public constant gracePeriod = 1 days;
    |
    |    /// @dev The address of the current King
  at /home/jiaming/slither_fp_files/out5843.sol(2973)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev The address of the current King
  > |    address public king;
    |
    |    /// @dev The amount of taxes currently reserved for the King
  at /home/jiaming/slither_fp_files/out5843.sol(2976)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev The amount of taxes currently reserved for the King
  > |    uint public kingsTaxes;
    |
    |    /// @dev The last time that the King claimed his taxes
  at /home/jiaming/slither_fp_files/out5843.sol(2979)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev The last time that the King claimed his taxes
  > |    uint public kingsTaxesLastClaimed;
    |
    |    /// @dev The address of the current Wayfarer
  at /home/jiaming/slither_fp_files/out5843.sol(2982)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev The address of the current Wayfarer
  > |    address public wayfarer;
    |
    |    /// @dev The amount of taxes currently reserved for the Wayfarer
  at /home/jiaming/slither_fp_files/out5843.sol(2985)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev The amount of taxes currently reserved for the Wayfarer
  > |    uint public wayfarersTaxes;
    |
    |    /// @dev The last time that the Wayfarer claimed his taxes
  at /home/jiaming/slither_fp_files/out5843.sol(2988)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev The last time that the Wayfarer claimed his taxes
  > |    uint public wayfarersTaxesLastClaimed;
    |
    |    /// @dev Relevant data for each seat of Parliament
  at /home/jiaming/slither_fp_files/out5843.sol(2991)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev The 10 seats of Parliament
  > |    address[10] public parliamentSeats;
    |
    |    /// @dev Mapping from an arbitrary address to data about a seat
  at /home/jiaming/slither_fp_files/out5843.sol(3004)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev The number of taxes currently reserved for Parliament
  > |    uint public parliamentsTaxes;
    |
    |    /// @dev The last time that Parliament's taxes were distributed
  at /home/jiaming/slither_fp_files/out5843.sol(3011)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev The last time that Parliament's taxes were distributed
  > |    uint public parliamentsTaxesLastDistributed;
    |
    |    /// @param _interfaceContract The address for the resources
  at /home/jiaming/slither_fp_files/out5843.sol(3014)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev God can withdraw his taxes
  > |    function godWithdrawTaxes()
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(3084)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev God can start the game
  > |    function godStartGame() public onlyGod
    |    {
    |        // Reset time title taxes were last claimed
  at /home/jiaming/slither_fp_files/out5843.sol(3104)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev The King can claim his taxes
  > |    function kingWithdrawTaxes()
    |        public
    |        onlyKing
  at /home/jiaming/slither_fp_files/out5843.sol(3116)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev The Wayfarer can claim his taxes
  > |    function wayfarerWithdrawTaxes()
    |        public
    |        onlyWayfarer
  at /home/jiaming/slither_fp_files/out5843.sol(3138)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev A seat of Parliament can withdraw any unclaimed taxes
  > |    function parliamentWithdrawTaxes()
    |        public
    |    {
  at /home/jiaming/slither_fp_files/out5843.sol(3160)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev Claim the King's throne
  > |    function claimThrone() public
    |    {
    |        KingOfEthHouses _housesContract = KingOfEthHouses(housesContract);
  at /home/jiaming/slither_fp_files/out5843.sol(3183)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev Claim the Wayfarer's title
  > |    function claimWayfarerTitle() public
    |    {
    |        KingOfEthRoads _roadsContract = KingOfEthRoads(roadsContract);
  at /home/jiaming/slither_fp_files/out5843.sol(3197)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev Claim a seat in Parliament
  > |    function claimParliamentSeat() public
    |    {
    |        // Lookup the sender's data
  at /home/jiaming/slither_fp_files/out5843.sol(3211)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |    /// @dev Distribute the taxes set aside for Parliament to
    |    ///  the seats of Parliament
  > |    function distributeParliamentTaxes()
    |        public
    |        onlyParliamentSeat
  at /home/jiaming/slither_fp_files/out5843.sol(3357)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |    /// @dev If the grace period has elapsed, the king can overthrow
    |    ///  Parliament and claim their taxes
  > |    function overthrowParliament()
    |        public
    |        onlyKing
  at /home/jiaming/slither_fp_files/out5843.sol(3397)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |    /// @dev If the grace period has elapsed, Parliament can overthrow
    |    ///  the king and claim his taxes
  > |    function overthrowKing()
    |        public
    |        onlyParliamentSeat
  at /home/jiaming/slither_fp_files/out5843.sol(3419)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEth':
    |
    |    /// @dev Anyone can pay taxes
  > |    function payTaxes() public payable
    |    {
    |        // Add the King's share
  at /home/jiaming/slither_fp_files/out5843.sol(3440)

[31mViolation[0m for TODAmount in contract 'KingOfEth':
    |                   - parliamentsTaxes - _parliamentsUnclaimed;
    |
  > |        god.transfer(taxes);
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(3100)

[31mViolation[0m for TODAmount in contract 'KingOfEth':
    |        kingsTaxes = 0;
    |
  > |        king.transfer(_taxes);
    |
    |        emit KingsTaxesClaimed(msg.sender, now);
  at /home/jiaming/slither_fp_files/out5843.sol(3132)

[31mViolation[0m for TODAmount in contract 'KingOfEth':
    |        wayfarersTaxes = 0;
    |
  > |        wayfarer.transfer(_taxes);
    |
    |        emit WayfarersTaxesClaimed(msg.sender, now);
  at /home/jiaming/slither_fp_files/out5843.sol(3154)

[31mViolation[0m for TODReceiver in contract 'KingOfEth':
    |                   - parliamentsTaxes - _parliamentsUnclaimed;
    |
  > |        god.transfer(taxes);
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(3100)

[31mViolation[0m for TODReceiver in contract 'KingOfEth':
    |        kingsTaxes = 0;
    |
  > |        king.transfer(_taxes);
    |
    |        emit KingsTaxesClaimed(msg.sender, now);
  at /home/jiaming/slither_fp_files/out5843.sol(3132)

[31mViolation[0m for TODReceiver in contract 'KingOfEth':
    |        wayfarersTaxes = 0;
    |
  > |        wayfarer.transfer(_taxes);
    |
    |        emit WayfarersTaxesClaimed(msg.sender, now);
  at /home/jiaming/slither_fp_files/out5843.sol(3154)

[33mWarning[0m for TODReceiver in contract 'KingOfEth':
    |
    |            // Send the sender the unclaimed taxes
  > |            msg.sender.transfer(_taxes);
    |        }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(3176)

[33mWarning[0m for TODReceiver in contract 'KingOfEth':
    |
    |        // Send the distributor their double share
  > |        msg.sender.transfer(_distributorsShare);
    |
    |        emit ParliamentsTaxesDistributed(msg.sender, _share, now);
  at /home/jiaming/slither_fp_files/out5843.sol(3390)

[33mWarning[0m for UnhandledException in contract 'KingOfEth':
    |                   - parliamentsTaxes - _parliamentsUnclaimed;
    |
  > |        god.transfer(taxes);
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(3100)

[33mWarning[0m for UnhandledException in contract 'KingOfEth':
    |        kingsTaxes = 0;
    |
  > |        king.transfer(_taxes);
    |
    |        emit KingsTaxesClaimed(msg.sender, now);
  at /home/jiaming/slither_fp_files/out5843.sol(3132)

[33mWarning[0m for UnhandledException in contract 'KingOfEth':
    |        wayfarersTaxes = 0;
    |
  > |        wayfarer.transfer(_taxes);
    |
    |        emit WayfarersTaxesClaimed(msg.sender, now);
  at /home/jiaming/slither_fp_files/out5843.sol(3154)

[33mWarning[0m for UnhandledException in contract 'KingOfEth':
    |
    |            // Send the sender the unclaimed taxes
  > |            msg.sender.transfer(_taxes);
    |        }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(3176)

[33mWarning[0m for UnhandledException in contract 'KingOfEth':
    |
    |        // Require the claimant to have more points than the King
  > |        require(_housesContract.numberOfPoints(king) < _housesContract.numberOfPoints(msg.sender));
    |
    |        // Save the new King
  at /home/jiaming/slither_fp_files/out5843.sol(3188)

[33mWarning[0m for UnhandledException in contract 'KingOfEth':
    |
    |        // Require the claimant to have more roads than the wayfarer
  > |        require(_roadsContract.numberOfRoads(wayfarer) < _roadsContract.numberOfRoads(msg.sender));
    |
    |        // Save the new Wayfarer
  at /home/jiaming/slither_fp_files/out5843.sol(3202)

[33mWarning[0m for UnhandledException in contract 'KingOfEth':
    |            // Determine the points of the sender
    |            uint _points
  > |                = KingOfEthResourcesInterface(interfaceContract).lookupResourcePoints(msg.sender);
    |
    |            // Lookup the lowest seat in parliament (the last seat)
  at /home/jiaming/slither_fp_files/out5843.sol(3221)

[33mWarning[0m for UnhandledException in contract 'KingOfEth':
    |            // Determine the current points held by the seat
    |            uint _newPoints
  > |                = KingOfEthResourcesInterface(interfaceContract).lookupResourcePoints(_seat);
    |
    |            uint _i;
  at /home/jiaming/slither_fp_files/out5843.sol(3282)

[33mWarning[0m for UnhandledException in contract 'KingOfEth':
    |
    |        // Send the distributor their double share
  > |        msg.sender.transfer(_distributorsShare);
    |
    |        emit ParliamentsTaxesDistributed(msg.sender, _share, now);
  at /home/jiaming/slither_fp_files/out5843.sol(3390)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEth':
    |        kingsTaxes = 0;
    |
  > |        king.transfer(_taxes);
    |
    |        emit KingsTaxesClaimed(msg.sender, now);
  at /home/jiaming/slither_fp_files/out5843.sol(3132)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEth':
    |        wayfarersTaxes = 0;
    |
  > |        wayfarer.transfer(_taxes);
    |
    |        emit WayfarersTaxesClaimed(msg.sender, now);
  at /home/jiaming/slither_fp_files/out5843.sol(3154)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEth':
    |
    |        // Require the claimant to have more points than the King
  > |        require(_housesContract.numberOfPoints(king) < _housesContract.numberOfPoints(msg.sender));
    |
    |        // Save the new King
  at /home/jiaming/slither_fp_files/out5843.sol(3188)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEth':
    |
    |        // Require the claimant to have more roads than the wayfarer
  > |        require(_roadsContract.numberOfRoads(wayfarer) < _roadsContract.numberOfRoads(msg.sender));
    |
    |        // Save the new Wayfarer
  at /home/jiaming/slither_fp_files/out5843.sol(3202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEth':
    |            // Determine the points of the sender
    |            uint _points
  > |                = KingOfEthResourcesInterface(interfaceContract).lookupResourcePoints(msg.sender);
    |
    |            // Lookup the lowest seat in parliament (the last seat)
  at /home/jiaming/slither_fp_files/out5843.sol(3221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEth':
    |            // Determine the current points held by the seat
    |            uint _newPoints
  > |                = KingOfEthResourcesInterface(interfaceContract).lookupResourcePoints(_seat);
    |
    |            uint _i;
  at /home/jiaming/slither_fp_files/out5843.sol(3282)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEth':
    |
    |        // Send the distributor their double share
  > |        msg.sender.transfer(_distributorsShare);
    |
    |        emit ParliamentsTaxesDistributed(msg.sender, _share, now);
  at /home/jiaming/slither_fp_files/out5843.sol(3390)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEth':
    |
    |        // Save the new King
  > |        king = msg.sender;
    |
    |        emit NewKing(msg.sender);
  at /home/jiaming/slither_fp_files/out5843.sol(3191)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEth':
    |
    |        // Save the new Wayfarer
  > |        wayfarer = msg.sender;
    |
    |        emit NewWayfarer(msg.sender);
  at /home/jiaming/slither_fp_files/out5843.sol(3205)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEth':
    |                    {
    |                        // Move the seat back
  > |                        parliamentSeats[_i] = parliamentSeats[_i - 1];
    |                    }
    |                    else
  at /home/jiaming/slither_fp_files/out5843.sol(3303)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEth':
    |                    {
    |                        // Record the seat's (new) position
  > |                        parliamentSeats[_i] = _seat;
    |
    |                        break;
  at /home/jiaming/slither_fp_files/out5843.sol(3308)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEth':
    |                    {
    |                        // Move the lower seat up
  > |                        parliamentSeats[_i] = parliamentSeats[_i + 1];
    |                    }
    |                    else
  at /home/jiaming/slither_fp_files/out5843.sol(3336)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEth':
    |                    {
    |                        // Record the seat's (new) position
  > |                        parliamentSeats[_i] = _seat;
    |
    |                        break;
  at /home/jiaming/slither_fp_files/out5843.sol(3341)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEth':
    |
    |            // Save the seat in question's points
  > |            _seatData.points = _newPoints;
    |
    |            emit ParliamentInquest(_seat, _newPoints);
  at /home/jiaming/slither_fp_files/out5843.sol(3349)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEth':
    |
    |        // Reset Parliament's claimable taxes
  > |        parliamentsTaxes = 0;
    |
    |        // For each seat of Parliament
  at /home/jiaming/slither_fp_files/out5843.sol(3373)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEth':
    |
    |        // Parliament can now claim the King's taxes as well
  > |        parliamentsTaxes += kingsTaxes;
    |
    |        // The King has lost his taxes
  at /home/jiaming/slither_fp_files/out5843.sol(3428)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEth':
    |
    |        // The King has lost his taxes
  > |        kingsTaxes = 0;
    |
    |        // The King must wait before claiming his taxes again
  at /home/jiaming/slither_fp_files/out5843.sol(3431)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEth':
    |
    |        // The King must wait before claiming his taxes again
  > |        kingsTaxesLastClaimed = now;
    |
    |        emit KingOverthrown(now);
  at /home/jiaming/slither_fp_files/out5843.sol(3434)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEth':
    |    {
    |        // Add the King's share
  > |        kingsTaxes += msg.value / kingsTaxDivisor;
    |
    |        // Add the Wayfarer's share
  at /home/jiaming/slither_fp_files/out5843.sol(3443)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEth':
    |
    |        // Add the Wayfarer's share
  > |        wayfarersTaxes += msg.value / wayfarersTaxDivisor;
    |
    |        // Add Parliament's share
  at /home/jiaming/slither_fp_files/out5843.sol(3446)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEth':
    |
    |        // Add Parliament's share
  > |        parliamentsTaxes += msg.value / parliamentsTaxDivisor;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(3449)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEth':
    |
    |            // Mark the taxes as claimed
  > |            _senderData.unclaimedTaxes = 0;
    |
    |            // Send the sender the unclaimed taxes
  at /home/jiaming/slither_fp_files/out5843.sol(3173)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEth':
    |
    |                // Record the sender's points
  > |                _senderData.points = _points;
    |
    |                // Record the new seat's temporary standing
  at /home/jiaming/slither_fp_files/out5843.sol(3240)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEth':
    |            {
    |                // Add the share to the seat's unclaimedTaxes
  > |                parliamentSeatData[parliamentSeats[_i]].unclaimedTaxes += _share;
    |            }
    |        }
  at /home/jiaming/slither_fp_files/out5843.sol(3382)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEth':
    |
    |        // Set the last time the taxes were distributed to now
  > |        parliamentsTaxesLastDistributed = now;
    |
    |        // Send the distributor their double share
  at /home/jiaming/slither_fp_files/out5843.sol(3387)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEth':
    |    function godChangeGod(address _newGod) public onlyGod
    |    {
  > |        god = _newGod;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEth':
    |    function godPause() public onlyGod
    |    {
  > |        isPaused = true;
    |
    |        emit GodPaused();
  at /home/jiaming/slither_fp_files/out5843.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEth':
    |    function godUnpause() public onlyGod
    |    {
  > |        isPaused = false;
    |
    |        emit GodUnpaused();
  at /home/jiaming/slither_fp_files/out5843.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEth':
    |        onlyGod
    |    {
  > |        housesContract = _housesContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(673)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEth':
    |        onlyGod
    |    {
  > |        roadsContract = _roadsContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(1015)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEth':
    |        onlyGod
    |    {
  > |        interfaceContract = _interfaceContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(1175)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEth':
    |    {
    |        // Reset time title taxes were last claimed
  > |        kingsTaxesLastClaimed           = now;
    |        wayfarersTaxesLastClaimed       = now;
    |        parliamentsTaxesLastDistributed = now;
  at /home/jiaming/slither_fp_files/out5843.sol(3107)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEth':
    |        // Reset time title taxes were last claimed
    |        kingsTaxesLastClaimed           = now;
  > |        wayfarersTaxesLastClaimed       = now;
    |        parliamentsTaxesLastDistributed = now;
    |
  at /home/jiaming/slither_fp_files/out5843.sol(3108)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEth':
    |        kingsTaxesLastClaimed           = now;
    |        wayfarersTaxesLastClaimed       = now;
  > |        parliamentsTaxesLastDistributed = now;
    |
    |        // Unpause the game
  at /home/jiaming/slither_fp_files/out5843.sol(3109)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEth':
    |
    |        // Unpause the game
  > |        isPaused = false;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(3112)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEth':
    |
    |        // The last claim time is now
  > |        kingsTaxesLastClaimed = now;
    |
    |        // Temporarily save the King's taxes
  at /home/jiaming/slither_fp_files/out5843.sol(3124)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEth':
    |
    |        // Reset the King's taxes
  > |        kingsTaxes = 0;
    |
    |        king.transfer(_taxes);
  at /home/jiaming/slither_fp_files/out5843.sol(3130)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEth':
    |
    |        // The last claim time is now
  > |        wayfarersTaxesLastClaimed = now;
    |
    |        // Temporarily save the Wayfarer's taxes
  at /home/jiaming/slither_fp_files/out5843.sol(3146)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEth':
    |
    |        // Reset the Wayfarer's taxes
  > |        wayfarersTaxes = 0;
    |
    |        wayfarer.transfer(_taxes);
  at /home/jiaming/slither_fp_files/out5843.sol(3152)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEth':
    |
    |        // The king can now claim Parliament's taxes as well
  > |        kingsTaxes += parliamentsTaxes;
    |
    |        // Parliament has lost their taxes
  at /home/jiaming/slither_fp_files/out5843.sol(3406)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEth':
    |
    |        // Parliament has lost their taxes
  > |        parliamentsTaxes = 0;
    |
    |        // Parliament must wait before distributing their taxes again
  at /home/jiaming/slither_fp_files/out5843.sol(3409)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEth':
    |
    |        // Parliament must wait before distributing their taxes again
  > |        parliamentsTaxesLastDistributed = now;
    |
    |        emit ParliamentOverthrown(now);
  at /home/jiaming/slither_fp_files/out5843.sol(3412)

[33mWarning[0m for LockedEther in contract 'KingOfEthAuctionsReferencer':
    |/// @author Anthony Burzillo <[email protected]>
    |/// @dev This contract provides a reference to the auctions contracts
  > |contract KingOfEthAuctionsReferencer is
    |      KingOfEthBlindAuctionsReferencer
    |    , KingOfEthOpenAuctionsReferencer
  at /home/jiaming/slither_fp_files/out5843.sol(205)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthAuctionsReferencer':
    |    /// @dev God can change the address of God
    |    /// @param _newGod The new address for God
  > |    function godChangeGod(address _newGod) public onlyGod
    |    {
    |        god = _newGod;
  at /home/jiaming/slither_fp_files/out5843.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthAuctionsReferencer':
    |    /// @param _blindAuctionsContract the address of the blind auctions
    |    ///  contract
  > |    function godSetBlindAuctionsContract(address _blindAuctionsContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(138)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthAuctionsReferencer':
    |
    |    /// @dev God can set a new auctions contract
  > |    function godSetOpenAuctionsContract(address _openAuctionsContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthAuctionsReferencer':
    |contract GodMode {
    |    /// @dev Is the contract paused?
  > |    bool public isPaused;
    |
    |    /// @dev God's address
  at /home/jiaming/slither_fp_files/out5843.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthAuctionsReferencer':
    |
    |    /// @dev God's address
  > |    address public god;
    |
    |    /// @dev Only God can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthAuctionsReferencer':
    |
    |    /// @dev God can pause the game
  > |    function godPause() public onlyGod
    |    {
    |        isPaused = true;
  at /home/jiaming/slither_fp_files/out5843.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthAuctionsReferencer':
    |
    |    /// @dev God can unpause the game
  > |    function godUnpause() public onlyGod
    |    {
    |        isPaused = false;
  at /home/jiaming/slither_fp_files/out5843.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthAuctionsReferencer':
    |contract KingOfEthBlindAuctionsReferencer is GodMode {
    |    /// @dev The address of the blind auctions contract
  > |    address public blindAuctionsContract;
    |
    |    /// @dev Only the blind auctions contract can run this
  at /home/jiaming/slither_fp_files/out5843.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthAuctionsReferencer':
    |contract KingOfEthOpenAuctionsReferencer is GodMode {
    |    /// @dev The address of the auctions contract
  > |    address public openAuctionsContract;
    |
    |    /// @dev Only the open auctions contract can run this
  at /home/jiaming/slither_fp_files/out5843.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthAuctionsReferencer':
    |    function godChangeGod(address _newGod) public onlyGod
    |    {
  > |        god = _newGod;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthAuctionsReferencer':
    |    function godPause() public onlyGod
    |    {
  > |        isPaused = true;
    |
    |        emit GodPaused();
  at /home/jiaming/slither_fp_files/out5843.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthAuctionsReferencer':
    |    function godUnpause() public onlyGod
    |    {
  > |        isPaused = false;
    |
    |        emit GodUnpaused();
  at /home/jiaming/slither_fp_files/out5843.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthAuctionsReferencer':
    |        onlyGod
    |    {
  > |        blindAuctionsContract = _blindAuctionsContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthAuctionsReferencer':
    |        onlyGod
    |    {
  > |        openAuctionsContract = _openAuctionsContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(181)

[33mWarning[0m for LockedEther in contract 'KingOfEthBlindAuctionsReferencer':
    |/// @author Anthony Burzillo <[email protected]>
    |/// @dev This contract provides a reference to the blind auctions contract
  > |contract KingOfEthBlindAuctionsReferencer is GodMode {
    |    /// @dev The address of the blind auctions contract
    |    address public blindAuctionsContract;
  at /home/jiaming/slither_fp_files/out5843.sol(124)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthBlindAuctionsReferencer':
    |    /// @dev God can change the address of God
    |    /// @param _newGod The new address for God
  > |    function godChangeGod(address _newGod) public onlyGod
    |    {
    |        god = _newGod;
  at /home/jiaming/slither_fp_files/out5843.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthBlindAuctionsReferencer':
    |    /// @param _blindAuctionsContract the address of the blind auctions
    |    ///  contract
  > |    function godSetBlindAuctionsContract(address _blindAuctionsContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBlindAuctionsReferencer':
    |contract GodMode {
    |    /// @dev Is the contract paused?
  > |    bool public isPaused;
    |
    |    /// @dev God's address
  at /home/jiaming/slither_fp_files/out5843.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBlindAuctionsReferencer':
    |
    |    /// @dev God's address
  > |    address public god;
    |
    |    /// @dev Only God can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBlindAuctionsReferencer':
    |
    |    /// @dev God can pause the game
  > |    function godPause() public onlyGod
    |    {
    |        isPaused = true;
  at /home/jiaming/slither_fp_files/out5843.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBlindAuctionsReferencer':
    |
    |    /// @dev God can unpause the game
  > |    function godUnpause() public onlyGod
    |    {
    |        isPaused = false;
  at /home/jiaming/slither_fp_files/out5843.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBlindAuctionsReferencer':
    |contract KingOfEthBlindAuctionsReferencer is GodMode {
    |    /// @dev The address of the blind auctions contract
  > |    address public blindAuctionsContract;
    |
    |    /// @dev Only the blind auctions contract can run this
  at /home/jiaming/slither_fp_files/out5843.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthBlindAuctionsReferencer':
    |    function godChangeGod(address _newGod) public onlyGod
    |    {
  > |        god = _newGod;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthBlindAuctionsReferencer':
    |    function godPause() public onlyGod
    |    {
  > |        isPaused = true;
    |
    |        emit GodPaused();
  at /home/jiaming/slither_fp_files/out5843.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthBlindAuctionsReferencer':
    |    function godUnpause() public onlyGod
    |    {
  > |        isPaused = false;
    |
    |        emit GodUnpaused();
  at /home/jiaming/slither_fp_files/out5843.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthBlindAuctionsReferencer':
    |        onlyGod
    |    {
  > |        blindAuctionsContract = _blindAuctionsContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(142)

[33mWarning[0m for LockedEther in contract 'KingOfEthBoard':
    |/// @author Anthony Burzillo <[email protected]>
    |/// @dev Contract for board
  > |contract KingOfEthBoard is
    |      GodMode
    |    , KingOfEthAuctionsReferencer
  at /home/jiaming/slither_fp_files/out5843.sol(309)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |    /// @dev God can change the address of God
    |    /// @param _newGod The new address for God
  > |    function godChangeGod(address _newGod) public onlyGod
    |    {
    |        god = _newGod;
  at /home/jiaming/slither_fp_files/out5843.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |    /// @param _blindAuctionsContract the address of the blind auctions
    |    ///  contract
  > |    function godSetBlindAuctionsContract(address _blindAuctionsContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(138)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |
    |    /// @dev God can set a new auctions contract
  > |    function godSetOpenAuctionsContract(address _openAuctionsContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(177)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |    /// @dev God can change the king contract
    |    /// @param _kingOfEthContract The new address
  > |    function godSetKingOfEthContract(address _kingOfEthContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(279)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |contract GodMode {
    |    /// @dev Is the contract paused?
  > |    bool public isPaused;
    |
    |    /// @dev God's address
  at /home/jiaming/slither_fp_files/out5843.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |
    |    /// @dev God's address
  > |    address public god;
    |
    |    /// @dev Only God can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |
    |    /// @dev God can pause the game
  > |    function godPause() public onlyGod
    |    {
    |        isPaused = true;
  at /home/jiaming/slither_fp_files/out5843.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |
    |    /// @dev God can unpause the game
  > |    function godUnpause() public onlyGod
    |    {
    |        isPaused = false;
  at /home/jiaming/slither_fp_files/out5843.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |contract KingOfEthBlindAuctionsReferencer is GodMode {
    |    /// @dev The address of the blind auctions contract
  > |    address public blindAuctionsContract;
    |
    |    /// @dev Only the blind auctions contract can run this
  at /home/jiaming/slither_fp_files/out5843.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |contract KingOfEthOpenAuctionsReferencer is GodMode {
    |    /// @dev The address of the auctions contract
  > |    address public openAuctionsContract;
    |
    |    /// @dev Only the open auctions contract can run this
  at /home/jiaming/slither_fp_files/out5843.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |contract KingOfEthReferencer is GodMode {
    |    /// @dev The address of the king contract
  > |    address public kingOfEthContract;
    |
    |    /// @dev Only the king contract can run this
  at /home/jiaming/slither_fp_files/out5843.sol(268)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |{
    |    /// @dev x coordinate of the top left corner of the boundary
  > |    uint public boundX1 = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffef;
    |
    |    /// @dev y coordinate of the top left corner of the boundary
  at /home/jiaming/slither_fp_files/out5843.sol(315)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |
    |    /// @dev y coordinate of the top left corner of the boundary
  > |    uint public boundY1 = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffef;
    |
    |    /// @dev x coordinate of the bottom right corner of the boundary
  at /home/jiaming/slither_fp_files/out5843.sol(318)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |
    |    /// @dev x coordinate of the bottom right corner of the boundary
  > |    uint public boundX2 = 0x800000000000000000000000000000000000000000000000000000000000000f;
    |
    |    /// @dev y coordinate of the bottom right corner of the boundary
  at /home/jiaming/slither_fp_files/out5843.sol(321)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |
    |    /// @dev y coordinate of the bottom right corner of the boundary
  > |    uint public boundY2 = 0x800000000000000000000000000000000000000000000000000000000000000f;
    |
    |    /// @dev Number used to divide the total number of house locations
  at /home/jiaming/slither_fp_files/out5843.sol(324)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |    /// after any expansion to yield the number of auctions that  will be
    |    /// available to start for the expansion's duration
  > |    uint public constant auctionsAvailableDivisor = 10;
    |
    |    /// @dev Amount of time the King must wait between increasing the board
  at /home/jiaming/slither_fp_files/out5843.sol(329)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |
    |    /// @dev Amount of time the King must wait between increasing the board
  > |    uint public constant kingTimeBetweenIncrease = 2 weeks;
    |
    |    /// @dev Amount of time the Wayfarer must wait between increasing the board
  at /home/jiaming/slither_fp_files/out5843.sol(332)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |
    |    /// @dev Amount of time the Wayfarer must wait between increasing the board
  > |    uint public constant wayfarerTimeBetweenIncrease = 3 weeks;
    |
    |    /// @dev Amount of time that anyone but the King or Wayfarer must wait
  at /home/jiaming/slither_fp_files/out5843.sol(335)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |    /// @dev Amount of time that anyone but the King or Wayfarer must wait
    |    ///  before increasing the board
  > |    uint public constant plebTimeBetweenIncrease = 4 weeks;
    |
    |    /// @dev The last time the board was increased in size
  at /home/jiaming/slither_fp_files/out5843.sol(339)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |
    |    /// @dev The last time the board was increased in size
  > |    uint public lastIncreaseTime;
    |
    |    /// @dev The direction of the next increase
  at /home/jiaming/slither_fp_files/out5843.sol(342)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |
    |    /// @dev The direction of the next increase
  > |    uint8 public nextIncreaseDirection;
    |
    |    /// @dev The number of auctions that players may choose to start
  at /home/jiaming/slither_fp_files/out5843.sol(345)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |    /// @dev The number of auctions that players may choose to start
    |    ///  for this expansion
  > |    uint public auctionsRemaining;
    |
    |    constructor() public
  at /home/jiaming/slither_fp_files/out5843.sol(349)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |
    |    /// @dev Set the total auctions available
  > |    function setAuctionsAvailableForBounds() private
    |    {
    |        uint boundDiffX = boundX2 - boundX1;
  at /home/jiaming/slither_fp_files/out5843.sol(387)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |    /// @dev Increase the board's size making sure to keep steady at
    |    ///  the maximum outer bounds
  > |    function increaseBoard() private
    |    {
    |        // The length of increase
  at /home/jiaming/slither_fp_files/out5843.sol(397)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |
    |    /// @dev God can start the game
  > |    function godStartGame() public onlyGod
    |    {
    |        // Reset increase times
  at /home/jiaming/slither_fp_files/out5843.sol(487)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |    /// @dev The auctions contracts can decrement the number
    |    ///  of auctions that are available to be started
  > |    function auctionsDecrementAuctionsRemaining()
    |        public
    |        onlyAuctionsContract
  at /home/jiaming/slither_fp_files/out5843.sol(498)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |    ///  of auctions that are available to be started when
    |    ///  an auction ends wihout a winner
  > |    function auctionsIncrementAuctionsRemaining()
    |        public
    |        onlyAuctionsContract
  at /home/jiaming/slither_fp_files/out5843.sol(508)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |
    |    /// @dev The King can increase the board much faster than the plebs
  > |    function kingIncreaseBoard()
    |        public
    |        onlyKing
  at /home/jiaming/slither_fp_files/out5843.sol(516)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |
    |    /// @dev The Wayfarer can increase the board faster than the plebs
  > |    function wayfarerIncreaseBoard()
    |        public
    |        onlyWayfarer
  at /home/jiaming/slither_fp_files/out5843.sol(527)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoard':
    |
    |    /// @dev Any old pleb can increase the board
  > |    function plebIncreaseBoard() public
    |    {
    |        // Require enough time has passed since the last increase
  at /home/jiaming/slither_fp_files/out5843.sol(538)

[33mWarning[0m for UnhandledException in contract 'KingOfEthBoard':
    |    modifier onlyKing()
    |    {
  > |        require(KingOfEthAbstractInterface(kingOfEthContract).king() == msg.sender);
    |        _;
    |    }
  at /home/jiaming/slither_fp_files/out5843.sol(375)

[33mWarning[0m for UnhandledException in contract 'KingOfEthBoard':
    |    modifier onlyWayfarer()
    |    {
  > |        require(KingOfEthAbstractInterface(kingOfEthContract).wayfarer() == msg.sender);
    |        _;
    |    }
  at /home/jiaming/slither_fp_files/out5843.sol(382)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthBoard':
    |    modifier onlyKing()
    |    {
  > |        require(KingOfEthAbstractInterface(kingOfEthContract).king() == msg.sender);
    |        _;
    |    }
  at /home/jiaming/slither_fp_files/out5843.sol(375)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthBoard':
    |    modifier onlyWayfarer()
    |    {
  > |        require(KingOfEthAbstractInterface(kingOfEthContract).wayfarer() == msg.sender);
    |        _;
    |    }
  at /home/jiaming/slither_fp_files/out5843.sol(382)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEthBoard':
    |        uint boundDiffY = boundY2 - boundY1;
    |
  > |        auctionsRemaining = boundDiffX * boundDiffY / 2 / auctionsAvailableDivisor;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(392)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEthBoard':
    |            if(_updatedX2 <= boundX2 || _updatedX2 <= _increaseLength)
    |            {
  > |                boundX2 = ~uint(0);
    |            }
    |            else
  at /home/jiaming/slither_fp_files/out5843.sol(411)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEthBoard':
    |            else
    |            {
  > |                boundX2 = _updatedX2;
    |            }
    |        }
  at /home/jiaming/slither_fp_files/out5843.sol(415)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEthBoard':
    |            if(_updatedY2 <= boundY2 || _updatedY2 <= _increaseLength)
    |            {
  > |                boundY2 = ~uint(0);
    |            }
    |            else
  at /home/jiaming/slither_fp_files/out5843.sol(427)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEthBoard':
    |            else
    |            {
  > |                boundY2 = _updatedY2;
    |            }
    |        }
  at /home/jiaming/slither_fp_files/out5843.sol(431)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEthBoard':
    |            if(boundX1 <= _increaseLength)
    |            {
  > |                boundX1 = 0;
    |            }
    |            else
  at /home/jiaming/slither_fp_files/out5843.sol(442)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEthBoard':
    |            else
    |            {
  > |                boundX1 -= _increaseLength;
    |            }
    |        }
  at /home/jiaming/slither_fp_files/out5843.sol(446)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEthBoard':
    |            if(boundY1 <= _increaseLength)
    |            {
  > |                boundY1 = 0;
    |            }
    |            else
  at /home/jiaming/slither_fp_files/out5843.sol(457)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEthBoard':
    |            else
    |            {
  > |                boundY1 -= _increaseLength;
    |            }
    |        }
  at /home/jiaming/slither_fp_files/out5843.sol(461)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEthBoard':
    |
    |        // The last increase time is now
  > |        lastIncreaseTime = now;
    |
    |        // Set the next increase direction
  at /home/jiaming/slither_fp_files/out5843.sol(466)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEthBoard':
    |
    |        // Set the next increase direction
  > |        nextIncreaseDirection = (nextIncreaseDirection + 1) % 4;
    |
    |        // Reset the auctions available
  at /home/jiaming/slither_fp_files/out5843.sol(469)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthBoard':
    |    function godChangeGod(address _newGod) public onlyGod
    |    {
  > |        god = _newGod;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthBoard':
    |    function godPause() public onlyGod
    |    {
  > |        isPaused = true;
    |
    |        emit GodPaused();
  at /home/jiaming/slither_fp_files/out5843.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthBoard':
    |    function godUnpause() public onlyGod
    |    {
  > |        isPaused = false;
    |
    |        emit GodUnpaused();
  at /home/jiaming/slither_fp_files/out5843.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthBoard':
    |        onlyGod
    |    {
  > |        blindAuctionsContract = _blindAuctionsContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthBoard':
    |        onlyGod
    |    {
  > |        openAuctionsContract = _openAuctionsContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthBoard':
    |        onlyGod
    |    {
  > |        kingOfEthContract = _kingOfEthContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthBoard':
    |    {
    |        // Reset increase times
  > |        lastIncreaseTime = now;
    |
    |        // Unpause the game
  at /home/jiaming/slither_fp_files/out5843.sol(490)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthBoard':
    |        onlyAuctionsContract
    |    {
  > |        auctionsRemaining -= 1;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(502)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthBoard':
    |        onlyAuctionsContract
    |    {
  > |        auctionsRemaining += 1;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(512)

[33mWarning[0m for LockedEther in contract 'KingOfEthBoardReferencer':
    |/// @author Anthony Burzillo <[email protected]>
    |/// @dev Functionality to allow contracts to reference the board contract
  > |contract KingOfEthBoardReferencer is GodMode {
    |    /// @dev The address of the board contract
    |    address public boardContract;
  at /home/jiaming/slither_fp_files/out5843.sol(566)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthBoardReferencer':
    |    /// @dev God can change the address of God
    |    /// @param _newGod The new address for God
  > |    function godChangeGod(address _newGod) public onlyGod
    |    {
    |        god = _newGod;
  at /home/jiaming/slither_fp_files/out5843.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthBoardReferencer':
    |    /// @dev God can change the board contract
    |    /// @param _boardContract The new address
  > |    function godSetBoardContract(address _boardContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(579)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoardReferencer':
    |contract GodMode {
    |    /// @dev Is the contract paused?
  > |    bool public isPaused;
    |
    |    /// @dev God's address
  at /home/jiaming/slither_fp_files/out5843.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoardReferencer':
    |
    |    /// @dev God's address
  > |    address public god;
    |
    |    /// @dev Only God can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoardReferencer':
    |
    |    /// @dev God can pause the game
  > |    function godPause() public onlyGod
    |    {
    |        isPaused = true;
  at /home/jiaming/slither_fp_files/out5843.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoardReferencer':
    |
    |    /// @dev God can unpause the game
  > |    function godUnpause() public onlyGod
    |    {
    |        isPaused = false;
  at /home/jiaming/slither_fp_files/out5843.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthBoardReferencer':
    |contract KingOfEthBoardReferencer is GodMode {
    |    /// @dev The address of the board contract
  > |    address public boardContract;
    |
    |    /// @dev Only the board contract can run this
  at /home/jiaming/slither_fp_files/out5843.sol(568)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthBoardReferencer':
    |    function godChangeGod(address _newGod) public onlyGod
    |    {
  > |        god = _newGod;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthBoardReferencer':
    |    function godPause() public onlyGod
    |    {
  > |        isPaused = true;
    |
    |        emit GodPaused();
  at /home/jiaming/slither_fp_files/out5843.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthBoardReferencer':
    |    function godUnpause() public onlyGod
    |    {
  > |        isPaused = false;
    |
    |        emit GodUnpaused();
  at /home/jiaming/slither_fp_files/out5843.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthBoardReferencer':
    |        onlyGod
    |    {
  > |        boardContract = _boardContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(583)

[33mWarning[0m for LockedEther in contract 'KingOfEthEthExchangeReferencer':
    |/// @dev Provides functionality to interface with the
    |///  ETH exchange contract
  > |contract KingOfEthEthExchangeReferencer is GodMode {
    |    /// @dev Address of the ETH exchange contract
    |    address public ethExchangeContract;
  at /home/jiaming/slither_fp_files/out5843.sol(1039)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthEthExchangeReferencer':
    |    /// @dev God can change the address of God
    |    /// @param _newGod The new address for God
  > |    function godChangeGod(address _newGod) public onlyGod
    |    {
    |        god = _newGod;
  at /home/jiaming/slither_fp_files/out5843.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthEthExchangeReferencer':
    |    /// @dev God may set the ETH exchange contract's address
    |    /// @dev _ethExchangeContract The new address
  > |    function godSetEthExchangeContract(address _ethExchangeContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(1052)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthEthExchangeReferencer':
    |contract GodMode {
    |    /// @dev Is the contract paused?
  > |    bool public isPaused;
    |
    |    /// @dev God's address
  at /home/jiaming/slither_fp_files/out5843.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthEthExchangeReferencer':
    |
    |    /// @dev God's address
  > |    address public god;
    |
    |    /// @dev Only God can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthEthExchangeReferencer':
    |
    |    /// @dev God can pause the game
  > |    function godPause() public onlyGod
    |    {
    |        isPaused = true;
  at /home/jiaming/slither_fp_files/out5843.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthEthExchangeReferencer':
    |
    |    /// @dev God can unpause the game
  > |    function godUnpause() public onlyGod
    |    {
    |        isPaused = false;
  at /home/jiaming/slither_fp_files/out5843.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthEthExchangeReferencer':
    |contract KingOfEthEthExchangeReferencer is GodMode {
    |    /// @dev Address of the ETH exchange contract
  > |    address public ethExchangeContract;
    |
    |    /// @dev Only the ETH exchange contract may run this function
  at /home/jiaming/slither_fp_files/out5843.sol(1041)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthEthExchangeReferencer':
    |    function godChangeGod(address _newGod) public onlyGod
    |    {
  > |        god = _newGod;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthEthExchangeReferencer':
    |    function godPause() public onlyGod
    |    {
  > |        isPaused = true;
    |
    |        emit GodPaused();
  at /home/jiaming/slither_fp_files/out5843.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthEthExchangeReferencer':
    |    function godUnpause() public onlyGod
    |    {
  > |        isPaused = false;
    |
    |        emit GodUnpaused();
  at /home/jiaming/slither_fp_files/out5843.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthEthExchangeReferencer':
    |        onlyGod
    |    {
  > |        ethExchangeContract = _ethExchangeContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(1056)

[33mWarning[0m for LockedEther in contract 'KingOfEthExchangeReferencer':
    |/// @author Anthony Burzillo <[email protected]>
    |/// @dev Provides functionality to interface with the exchange contract
  > |contract KingOfEthExchangeReferencer is
    |      GodMode
    |    , KingOfEthEthExchangeReferencer
  at /home/jiaming/slither_fp_files/out5843.sol(1122)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthExchangeReferencer':
    |    /// @dev God can change the address of God
    |    /// @param _newGod The new address for God
  > |    function godChangeGod(address _newGod) public onlyGod
    |    {
    |        god = _newGod;
  at /home/jiaming/slither_fp_files/out5843.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthExchangeReferencer':
    |    /// @dev God may set the ETH exchange contract's address
    |    /// @dev _ethExchangeContract The new address
  > |    function godSetEthExchangeContract(address _ethExchangeContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(1052)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthExchangeReferencer':
    |    /// @dev God may set the resource-to-resource contract's address
    |    /// @dev _resourceExchangeContract The new address
  > |    function godSetResourceExchangeContract(address _resourceExchangeContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(1093)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthExchangeReferencer':
    |contract GodMode {
    |    /// @dev Is the contract paused?
  > |    bool public isPaused;
    |
    |    /// @dev God's address
  at /home/jiaming/slither_fp_files/out5843.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthExchangeReferencer':
    |
    |    /// @dev God's address
  > |    address public god;
    |
    |    /// @dev Only God can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthExchangeReferencer':
    |
    |    /// @dev God can pause the game
  > |    function godPause() public onlyGod
    |    {
    |        isPaused = true;
  at /home/jiaming/slither_fp_files/out5843.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthExchangeReferencer':
    |
    |    /// @dev God can unpause the game
  > |    function godUnpause() public onlyGod
    |    {
    |        isPaused = false;
  at /home/jiaming/slither_fp_files/out5843.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthExchangeReferencer':
    |contract KingOfEthEthExchangeReferencer is GodMode {
    |    /// @dev Address of the ETH exchange contract
  > |    address public ethExchangeContract;
    |
    |    /// @dev Only the ETH exchange contract may run this function
  at /home/jiaming/slither_fp_files/out5843.sol(1041)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthExchangeReferencer':
    |contract KingOfEthResourceExchangeReferencer is GodMode {
    |    /// @dev Address of the resource-to-resource contract
  > |    address public resourceExchangeContract;
    |
    |    /// @dev Only the resource-to-resource contract may run this function
  at /home/jiaming/slither_fp_files/out5843.sol(1082)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthExchangeReferencer':
    |    function godChangeGod(address _newGod) public onlyGod
    |    {
  > |        god = _newGod;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthExchangeReferencer':
    |    function godPause() public onlyGod
    |    {
  > |        isPaused = true;
    |
    |        emit GodPaused();
  at /home/jiaming/slither_fp_files/out5843.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthExchangeReferencer':
    |    function godUnpause() public onlyGod
    |    {
  > |        isPaused = false;
    |
    |        emit GodUnpaused();
  at /home/jiaming/slither_fp_files/out5843.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthExchangeReferencer':
    |        onlyGod
    |    {
  > |        ethExchangeContract = _ethExchangeContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(1056)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthExchangeReferencer':
    |        onlyGod
    |    {
  > |        resourceExchangeContract = _resourceExchangeContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(1097)

[33mWarning[0m for DAO in contract 'KingOfEthHouseRealty':
    |
    |        // Pay the taxes
  > |        KingOfEthAbstractInterface(kingOfEthContract).payTaxes.value(taxCut)();
    |
    |        KingOfEthHousesAbstractInterface _housesContract = KingOfEthHousesAbstractInterface(housesContract);
  at /home/jiaming/slither_fp_files/out5843.sol(853)

[33mWarning[0m for DAOConstantGas in contract 'KingOfEthHouseRealty':
    |
    |        // Send the previous owner his share
  > |        _oldOwner.transfer(msg.value - taxCut);
    |
    |        emit HouseSold(
  at /home/jiaming/slither_fp_files/out5843.sol(869)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouseRealty':
    |    /// @dev God can change the address of God
    |    /// @param _newGod The new address for God
  > |    function godChangeGod(address _newGod) public onlyGod
    |    {
    |        god = _newGod;
  at /home/jiaming/slither_fp_files/out5843.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouseRealty':
    |    /// @dev God can change the king contract
    |    /// @param _kingOfEthContract The new address
  > |    function godSetKingOfEthContract(address _kingOfEthContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(279)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouseRealty':
    |    /// @dev God can set the realty contract
    |    /// @param _housesContract The new address
  > |    function godSetHousesContract(address _housesContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(669)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouseRealty':
    |    /// @param _x The x coordinate of the house
    |    /// @param _y The y coordinate of the house
  > |    function housesCancelHouseSale(uint _x, uint _y)
    |        public
    |        onlyHousesContract
  at /home/jiaming/slither_fp_files/out5843.sol(780)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouseRealty':
    |    /// @param _askingPrice The price that must be payed by another player
    |    ///  to purchase the house
  > |    function startHouseSale(uint _x, uint _y, uint _askingPrice)
    |        public
    |        notPaused
  at /home/jiaming/slither_fp_files/out5843.sol(799)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouseRealty':
    |    /// @param _askingPrice The new price that must be payed by another
    |    ///  player to purchase the house
  > |    function changeHousePrice(uint _x, uint _y, uint _askingPrice)
    |        public
    |        notPaused
  at /home/jiaming/slither_fp_files/out5843.sol(819)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouseRealty':
    |    /// @param _x The y coordinate of the house
    |    /// @param _y The y coordinate of the house
  > |    function purchaseHouse(uint _x, uint _y)
    |        public
    |        payable
  at /home/jiaming/slither_fp_files/out5843.sol(837)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouseRealty':
    |    /// @param _x The y coordinate of the house
    |    /// @param _y The y coordinate of the house
  > |    function cancelHouseSale(uint _x, uint _y)
    |        public
    |        notPaused
  at /home/jiaming/slither_fp_files/out5843.sol(884)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouseRealty':
    |contract GodMode {
    |    /// @dev Is the contract paused?
  > |    bool public isPaused;
    |
    |    /// @dev God's address
  at /home/jiaming/slither_fp_files/out5843.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouseRealty':
    |
    |    /// @dev God's address
  > |    address public god;
    |
    |    /// @dev Only God can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouseRealty':
    |
    |    /// @dev God can pause the game
  > |    function godPause() public onlyGod
    |    {
    |        isPaused = true;
  at /home/jiaming/slither_fp_files/out5843.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouseRealty':
    |
    |    /// @dev God can unpause the game
  > |    function godUnpause() public onlyGod
    |    {
    |        isPaused = false;
  at /home/jiaming/slither_fp_files/out5843.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouseRealty':
    |contract KingOfEthReferencer is GodMode {
    |    /// @dev The address of the king contract
  > |    address public kingOfEthContract;
    |
    |    /// @dev Only the king contract can run this
  at /home/jiaming/slither_fp_files/out5843.sol(268)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouseRealty':
    |contract KingOfEthHousesReferencer is GodMode {
    |    /// @dev The houses contract's address
  > |    address public housesContract;
    |
    |    /// @dev Only the houses contract can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(658)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouseRealty':
    |    /// @dev The number that divides the amount payed for any sale to produce
    |    ///  the amount payed in taxes
  > |    uint public constant taxDivisor = 25;
    |
    |    /// @dev Mapping from the x, y coordinates of a house to the current sale
  at /home/jiaming/slither_fp_files/out5843.sol(707)

[31mViolation[0m for TODReceiver in contract 'KingOfEthHouseRealty':
    |
    |        // Pay the taxes
  > |        KingOfEthAbstractInterface(kingOfEthContract).payTaxes.value(taxCut)();
    |
    |        KingOfEthHousesAbstractInterface _housesContract = KingOfEthHousesAbstractInterface(housesContract);
  at /home/jiaming/slither_fp_files/out5843.sol(853)

[33mWarning[0m for TODReceiver in contract 'KingOfEthHouseRealty':
    |
    |        // Send the previous owner his share
  > |        _oldOwner.transfer(msg.value - taxCut);
    |
    |        emit HouseSold(
  at /home/jiaming/slither_fp_files/out5843.sol(869)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouseRealty':
    |    modifier onlyHouseOwner(uint _x, uint _y)
    |    {
  > |        require(KingOfEthHousesAbstractInterface(housesContract).ownerOf(_x, _y) == msg.sender);
    |        _;
    |    }
  at /home/jiaming/slither_fp_files/out5843.sol(746)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouseRealty':
    |
    |        // Pay the taxes
  > |        KingOfEthAbstractInterface(kingOfEthContract).payTaxes.value(taxCut)();
    |
    |        KingOfEthHousesAbstractInterface _housesContract = KingOfEthHousesAbstractInterface(housesContract);
  at /home/jiaming/slither_fp_files/out5843.sol(853)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouseRealty':
    |
    |        // Determine the previous owner
  > |        address _oldOwner = _housesContract.ownerOf(_x, _y);
    |
    |        // Send the buyer the house
  at /home/jiaming/slither_fp_files/out5843.sol(858)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouseRealty':
    |
    |        // Send the buyer the house
  > |        _housesContract.houseRealtyTransferOwnership(
    |              _x
    |            , _y
  at /home/jiaming/slither_fp_files/out5843.sol(861)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouseRealty':
    |
    |        // Send the previous owner his share
  > |        _oldOwner.transfer(msg.value - taxCut);
    |
    |        emit HouseSold(
  at /home/jiaming/slither_fp_files/out5843.sol(869)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouseRealty':
    |            , msg.sender
    |            , msg.value
  > |            , _housesContract.level(_x, _y)
    |        );
    |    }
  at /home/jiaming/slither_fp_files/out5843.sol(877)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthHouseRealty':
    |    modifier onlyHouseOwner(uint _x, uint _y)
    |    {
  > |        require(KingOfEthHousesAbstractInterface(housesContract).ownerOf(_x, _y) == msg.sender);
    |        _;
    |    }
  at /home/jiaming/slither_fp_files/out5843.sol(746)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthHouseRealty':
    |
    |        // Determine the previous owner
  > |        address _oldOwner = _housesContract.ownerOf(_x, _y);
    |
    |        // Send the buyer the house
  at /home/jiaming/slither_fp_files/out5843.sol(858)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthHouseRealty':
    |
    |        // Send the buyer the house
  > |        _housesContract.houseRealtyTransferOwnership(
    |              _x
    |            , _y
  at /home/jiaming/slither_fp_files/out5843.sol(861)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthHouseRealty':
    |            , msg.sender
    |            , msg.value
  > |            , _housesContract.level(_x, _y)
    |        );
    |    }
  at /home/jiaming/slither_fp_files/out5843.sol(877)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEthHouseRealty':
    |
    |        // End the sale
  > |        housePrices[_x][_y] = 0;
    |
    |        // Calculate the taxes to be paid
  at /home/jiaming/slither_fp_files/out5843.sol(847)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouseRealty':
    |    function godChangeGod(address _newGod) public onlyGod
    |    {
  > |        god = _newGod;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouseRealty':
    |    function godPause() public onlyGod
    |    {
  > |        isPaused = true;
    |
    |        emit GodPaused();
  at /home/jiaming/slither_fp_files/out5843.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouseRealty':
    |    function godUnpause() public onlyGod
    |    {
  > |        isPaused = false;
    |
    |        emit GodUnpaused();
  at /home/jiaming/slither_fp_files/out5843.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouseRealty':
    |        onlyGod
    |    {
  > |        kingOfEthContract = _kingOfEthContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouseRealty':
    |        onlyGod
    |    {
  > |        housesContract = _housesContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(673)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouseRealty':
    |        {
    |            // Cancel the sale
  > |            housePrices[_x][_y] = 0;
    |
    |            emit HouseSaleCancelled(_x, _y, msg.sender);
  at /home/jiaming/slither_fp_files/out5843.sol(788)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouseRealty':
    |
    |        // Record the price
  > |        housePrices[_x][_y] = _askingPrice;
    |
    |        emit HouseForSale(_x, _y, msg.sender, _askingPrice);
  at /home/jiaming/slither_fp_files/out5843.sol(809)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouseRealty':
    |
    |        // Record the price
  > |        housePrices[_x][_y] = _askingPrice;
    |
    |        emit HousePriceChanged(_x, _y, _askingPrice);
  at /home/jiaming/slither_fp_files/out5843.sol(829)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouseRealty':
    |    {
    |        // Cancel the sale
  > |        housePrices[_x][_y] = 0;
    |
    |        emit HouseSaleCancelled(_x, _y, msg.sender);
  at /home/jiaming/slither_fp_files/out5843.sol(891)

[33mWarning[0m for LockedEther in contract 'KingOfEthHouseRealtyReferencer':
    |/// @author Anthony Burzillo <[email protected]>
    |/// @dev Provides functionality to reference the house realty contract
  > |contract KingOfEthHouseRealtyReferencer is GodMode {
    |    /// @dev The realty contract's address
    |    address public houseRealtyContract;
  at /home/jiaming/slither_fp_files/out5843.sol(916)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouseRealtyReferencer':
    |    /// @dev God can change the address of God
    |    /// @param _newGod The new address for God
  > |    function godChangeGod(address _newGod) public onlyGod
    |    {
    |        god = _newGod;
  at /home/jiaming/slither_fp_files/out5843.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouseRealtyReferencer':
    |    /// @dev God can set the house realty contract
    |    /// @param _houseRealtyContract The new address
  > |    function godSetHouseRealtyContract(address _houseRealtyContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(929)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouseRealtyReferencer':
    |contract GodMode {
    |    /// @dev Is the contract paused?
  > |    bool public isPaused;
    |
    |    /// @dev God's address
  at /home/jiaming/slither_fp_files/out5843.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouseRealtyReferencer':
    |
    |    /// @dev God's address
  > |    address public god;
    |
    |    /// @dev Only God can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouseRealtyReferencer':
    |
    |    /// @dev God can pause the game
  > |    function godPause() public onlyGod
    |    {
    |        isPaused = true;
  at /home/jiaming/slither_fp_files/out5843.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouseRealtyReferencer':
    |
    |    /// @dev God can unpause the game
  > |    function godUnpause() public onlyGod
    |    {
    |        isPaused = false;
  at /home/jiaming/slither_fp_files/out5843.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouseRealtyReferencer':
    |contract KingOfEthHouseRealtyReferencer is GodMode {
    |    /// @dev The realty contract's address
  > |    address public houseRealtyContract;
    |
    |    /// @dev Only the house realty contract can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(918)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouseRealtyReferencer':
    |    function godChangeGod(address _newGod) public onlyGod
    |    {
  > |        god = _newGod;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouseRealtyReferencer':
    |    function godPause() public onlyGod
    |    {
  > |        isPaused = true;
    |
    |        emit GodPaused();
  at /home/jiaming/slither_fp_files/out5843.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouseRealtyReferencer':
    |    function godUnpause() public onlyGod
    |    {
  > |        isPaused = false;
    |
    |        emit GodUnpaused();
  at /home/jiaming/slither_fp_files/out5843.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouseRealtyReferencer':
    |        onlyGod
    |    {
  > |        houseRealtyContract = _houseRealtyContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(933)

[31mViolation[0m for DAO in contract 'KingOfEthHouses':
    |
    |        // Pay the taxes
  > |        KingOfEthAbstractInterface(kingOfEthContract).payTaxes.value(msg.value)();
    |
    |        // Burn the resource costs of the upgrade
  at /home/jiaming/slither_fp_files/out5843.sol(2186)

[33mWarning[0m for DAO in contract 'KingOfEthHouses':
    |
    |        // Distribute resources to the player
  > |        KingOfEthResourcesInterface(interfaceContract).distributeResources(
    |              msg.sender
    |            , _x
  at /home/jiaming/slither_fp_files/out5843.sol(2022)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |    /// @dev God can change the address of God
    |    /// @param _newGod The new address for God
  > |    function godChangeGod(address _newGod) public onlyGod
    |    {
    |        god = _newGod;
  at /home/jiaming/slither_fp_files/out5843.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |    /// @param _blindAuctionsContract the address of the blind auctions
    |    ///  contract
  > |    function godSetBlindAuctionsContract(address _blindAuctionsContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(138)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |
    |    /// @dev God can set a new auctions contract
  > |    function godSetOpenAuctionsContract(address _openAuctionsContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(177)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |    /// @dev God can change the king contract
    |    /// @param _kingOfEthContract The new address
  > |    function godSetKingOfEthContract(address _kingOfEthContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(279)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |    /// @dev God can change the board contract
    |    /// @param _boardContract The new address
  > |    function godSetBoardContract(address _boardContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(579)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |    /// @dev God can set the house realty contract
    |    /// @param _houseRealtyContract The new address
  > |    function godSetHouseRealtyContract(address _houseRealtyContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(929)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |    /// @dev God can set the realty contract
    |    /// @param _roadsContract The new address
  > |    function godSetRoadsContract(address _roadsContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(1011)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |    /// @dev God can set the realty contract
    |    /// @param _interfaceContract The new address
  > |    function godSetInterfaceContract(address _interfaceContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(1171)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |    /// @param _y The y coordinate of the house
    |    /// @return The address of the owner
  > |    function ownerOf(uint _x, uint _y) public view returns(address)
    |    {
    |        return locationInfo[_x][_y].owner;
  at /home/jiaming/slither_fp_files/out5843.sol(1957)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |    /// @param _y The y coordinate of the house
    |    /// @return The level of the house
  > |    function level(uint _x, uint _y) public view returns(uint8)
    |    {
    |        return locationInfo[_x][_y].level;
  at /home/jiaming/slither_fp_files/out5843.sol(1966)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |    /// @param _player The player's address
    |    /// @return The number of points
  > |    function numberOfPoints(address _player) public view returns(uint)
    |    {
    |        return pointCounts[_player];
  at /home/jiaming/slither_fp_files/out5843.sol(1974)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |    /// @dev God can change the house cost
    |    /// @param _newHouseCost The new cost of a house
  > |    function godChangeHouseCost(uint _newHouseCost)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(2032)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |    /// @param _y The y coordinate of the house
    |    /// @param _owner The new owner of the house
  > |    function auctionsSetOwner(uint _x, uint _y, address _owner)
    |        public
    |        onlyAuctionsContract
  at /home/jiaming/slither_fp_files/out5843.sol(2043)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |    /// @param _from The previous owner of house
    |    /// @param _to The new owner of house
  > |    function houseRealtyTransferOwnership(
    |          uint _x
    |        , uint _y
  at /home/jiaming/slither_fp_files/out5843.sol(2083)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |    /// @param _y The y coordinate of the house
    |    /// @param _to The recipient of the house
  > |    function sendHouse(uint _x, uint _y, address _to) public
    |    {
    |        // Lookup the info about the house
  at /home/jiaming/slither_fp_files/out5843.sol(2147)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |    /// @param _x The x coordinate of the house
    |    /// @param _y The y coordinate of the house
  > |    function upgradeHouse(uint _x, uint _y) public payable
    |    {
    |        // Lookup the info about the house
  at /home/jiaming/slither_fp_files/out5843.sol(2174)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |contract GodMode {
    |    /// @dev Is the contract paused?
  > |    bool public isPaused;
    |
    |    /// @dev God's address
  at /home/jiaming/slither_fp_files/out5843.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |
    |    /// @dev God's address
  > |    address public god;
    |
    |    /// @dev Only God can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |
    |    /// @dev God can pause the game
  > |    function godPause() public onlyGod
    |    {
    |        isPaused = true;
  at /home/jiaming/slither_fp_files/out5843.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |
    |    /// @dev God can unpause the game
  > |    function godUnpause() public onlyGod
    |    {
    |        isPaused = false;
  at /home/jiaming/slither_fp_files/out5843.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |contract KingOfEthBlindAuctionsReferencer is GodMode {
    |    /// @dev The address of the blind auctions contract
  > |    address public blindAuctionsContract;
    |
    |    /// @dev Only the blind auctions contract can run this
  at /home/jiaming/slither_fp_files/out5843.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |contract KingOfEthOpenAuctionsReferencer is GodMode {
    |    /// @dev The address of the auctions contract
  > |    address public openAuctionsContract;
    |
    |    /// @dev Only the open auctions contract can run this
  at /home/jiaming/slither_fp_files/out5843.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |contract KingOfEthReferencer is GodMode {
    |    /// @dev The address of the king contract
  > |    address public kingOfEthContract;
    |
    |    /// @dev Only the king contract can run this
  at /home/jiaming/slither_fp_files/out5843.sol(268)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |contract KingOfEthBoardReferencer is GodMode {
    |    /// @dev The address of the board contract
  > |    address public boardContract;
    |
    |    /// @dev Only the board contract can run this
  at /home/jiaming/slither_fp_files/out5843.sol(568)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |contract KingOfEthHouseRealtyReferencer is GodMode {
    |    /// @dev The realty contract's address
  > |    address public houseRealtyContract;
    |
    |    /// @dev Only the house realty contract can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(918)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |contract KingOfEthRoadsReferencer is GodMode {
    |    /// @dev The roads contract's address
  > |    address public roadsContract;
    |
    |    /// @dev Only the roads contract can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(1000)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |contract KingOfEthResourcesInterfaceReferencer is GodMode {
    |    /// @dev The interface contract's address
  > |    address public interfaceContract;
    |
    |    /// @dev Only the interface contract can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(1160)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |{
    |    /// @dev ETH cost to build or upgrade a house
  > |    uint public houseCost = 0.001 ether;
    |
    |    /// @dev Struct to hold info about a house location on the board
  at /home/jiaming/slither_fp_files/out5843.sol(1899)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |    /// @param _x The x coordinate of the house
    |    /// @param _y The y coordinate of the house
  > |    function buildHouseInner(uint _x, uint _y) private
    |    {
    |        // Lookup the info about the house
  at /home/jiaming/slither_fp_files/out5843.sol(1982)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHouses':
    |    ///  are specified sequentially like [x1, y1, x2, y2] representing
    |    ///  location (x1, y1) and location (x2, y2).
  > |    function buildHouses(uint[] _locations)
    |        public
    |        payable
  at /home/jiaming/slither_fp_files/out5843.sol(2113)

[31mViolation[0m for TODReceiver in contract 'KingOfEthHouses':
    |
    |        // Pay taxes
  > |        KingOfEthAbstractInterface(kingOfEthContract).payTaxes.value(msg.value)();
    |
    |        // Burn the required resource costs for the houses
  at /home/jiaming/slither_fp_files/out5843.sol(2126)

[31mViolation[0m for TODReceiver in contract 'KingOfEthHouses':
    |
    |        // Pay the taxes
  > |        KingOfEthAbstractInterface(kingOfEthContract).payTaxes.value(msg.value)();
    |
    |        // Burn the resource costs of the upgrade
  at /home/jiaming/slither_fp_files/out5843.sol(2186)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouses':
    |
    |        // Require the house to be within the current bounds of the game
  > |        require(_boardContract.boundX1() <= _x);
    |        require(_boardContract.boundY1() <= _y);
    |        require(_boardContract.boundX2() > _x);
  at /home/jiaming/slither_fp_files/out5843.sol(1990)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouses':
    |        // Require the house to be within the current bounds of the game
    |        require(_boardContract.boundX1() <= _x);
  > |        require(_boardContract.boundY1() <= _y);
    |        require(_boardContract.boundX2() > _x);
    |        require(_boardContract.boundY2() > _y);
  at /home/jiaming/slither_fp_files/out5843.sol(1991)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouses':
    |        require(_boardContract.boundX1() <= _x);
    |        require(_boardContract.boundY1() <= _y);
  > |        require(_boardContract.boundX2() > _x);
    |        require(_boardContract.boundY2() > _y);
    |
  at /home/jiaming/slither_fp_files/out5843.sol(1992)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouses':
    |        require(_boardContract.boundY1() <= _y);
    |        require(_boardContract.boundX2() > _x);
  > |        require(_boardContract.boundY2() > _y);
    |
    |        // Require the spot to be empty
  at /home/jiaming/slither_fp_files/out5843.sol(1993)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouses':
    |        // to be owned by the player
    |        require(
  > |                _roadsContract.ownerOf(_x, _y, 0) == msg.sender
    |             || _roadsContract.ownerOf(_x, _y, 1) == msg.sender
    |             || _roadsContract.ownerOf(_x - 1, _y, 0) == msg.sender
  at /home/jiaming/slither_fp_files/out5843.sol(2003)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouses':
    |        require(
    |                _roadsContract.ownerOf(_x, _y, 0) == msg.sender
  > |             || _roadsContract.ownerOf(_x, _y, 1) == msg.sender
    |             || _roadsContract.ownerOf(_x - 1, _y, 0) == msg.sender
    |             || _roadsContract.ownerOf(_x, _y - 1, 1) == msg.sender
  at /home/jiaming/slither_fp_files/out5843.sol(2004)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouses':
    |                _roadsContract.ownerOf(_x, _y, 0) == msg.sender
    |             || _roadsContract.ownerOf(_x, _y, 1) == msg.sender
  > |             || _roadsContract.ownerOf(_x - 1, _y, 0) == msg.sender
    |             || _roadsContract.ownerOf(_x, _y - 1, 1) == msg.sender
    |        );
  at /home/jiaming/slither_fp_files/out5843.sol(2005)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouses':
    |             || _roadsContract.ownerOf(_x, _y, 1) == msg.sender
    |             || _roadsContract.ownerOf(_x - 1, _y, 0) == msg.sender
  > |             || _roadsContract.ownerOf(_x, _y - 1, 1) == msg.sender
    |        );
    |
  at /home/jiaming/slither_fp_files/out5843.sol(2006)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouses':
    |
    |        // Require that there is no existing blind auction at the location
  > |        require(!KingOfEthAuctionsAbstractInterface(blindAuctionsContract).existingAuction(_x, _y));
    |
    |        // Require that there is no existing open auction at the location
  at /home/jiaming/slither_fp_files/out5843.sol(2010)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouses':
    |
    |        // Require that there is no existing open auction at the location
  > |        require(!KingOfEthAuctionsAbstractInterface(openAuctionsContract).existingAuction(_x, _y));
    |
    |        // Set new owner
  at /home/jiaming/slither_fp_files/out5843.sol(2013)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouses':
    |
    |        // Distribute resources to the player
  > |        KingOfEthResourcesInterface(interfaceContract).distributeResources(
    |              msg.sender
    |            , _x
  at /home/jiaming/slither_fp_files/out5843.sol(2022)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouses':
    |
    |        // Distribute the resources for the house
  > |        KingOfEthResourcesInterface(interfaceContract).distributeResources(
    |              _owner
    |            , _x
  at /home/jiaming/slither_fp_files/out5843.sol(2063)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouses':
    |
    |        // Pay taxes
  > |        KingOfEthAbstractInterface(kingOfEthContract).payTaxes.value(msg.value)();
    |
    |        // Burn the required resource costs for the houses
  at /home/jiaming/slither_fp_files/out5843.sol(2126)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouses':
    |
    |        // Burn the required resource costs for the houses
  > |        KingOfEthResourcesInterface(interfaceContract).burnHouseCosts(
    |              _count
    |            , msg.sender
  at /home/jiaming/slither_fp_files/out5843.sol(2129)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouses':
    |
    |        // Cancel any sales that exist
  > |        KingOfEthHouseRealty(houseRealtyContract).housesCancelHouseSale(_x, _y);
    |
    |        emit SentHouse(_x, _y, msg.sender, _to, _locationInfo.level);
  at /home/jiaming/slither_fp_files/out5843.sol(2166)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouses':
    |
    |        // Pay the taxes
  > |        KingOfEthAbstractInterface(kingOfEthContract).payTaxes.value(msg.value)();
    |
    |        // Burn the resource costs of the upgrade
  at /home/jiaming/slither_fp_files/out5843.sol(2186)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouses':
    |
    |        // Burn the resource costs of the upgrade
  > |        KingOfEthResourcesInterface(interfaceContract).burnUpgradeCosts(
    |              _locationInfo.level
    |            , msg.sender
  at /home/jiaming/slither_fp_files/out5843.sol(2189)

[33mWarning[0m for UnhandledException in contract 'KingOfEthHouses':
    |
    |        // Distribute the resources for the house
  > |        KingOfEthResourcesInterface(interfaceContract).distributeResources(
    |              msg.sender
    |            , _x
  at /home/jiaming/slither_fp_files/out5843.sol(2201)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthHouses':
    |
    |        // Require the house to be within the current bounds of the game
  > |        require(_boardContract.boundX1() <= _x);
    |        require(_boardContract.boundY1() <= _y);
    |        require(_boardContract.boundX2() > _x);
  at /home/jiaming/slither_fp_files/out5843.sol(1990)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthHouses':
    |        // Require the house to be within the current bounds of the game
    |        require(_boardContract.boundX1() <= _x);
  > |        require(_boardContract.boundY1() <= _y);
    |        require(_boardContract.boundX2() > _x);
    |        require(_boardContract.boundY2() > _y);
  at /home/jiaming/slither_fp_files/out5843.sol(1991)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthHouses':
    |        require(_boardContract.boundX1() <= _x);
    |        require(_boardContract.boundY1() <= _y);
  > |        require(_boardContract.boundX2() > _x);
    |        require(_boardContract.boundY2() > _y);
    |
  at /home/jiaming/slither_fp_files/out5843.sol(1992)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthHouses':
    |        require(_boardContract.boundY1() <= _y);
    |        require(_boardContract.boundX2() > _x);
  > |        require(_boardContract.boundY2() > _y);
    |
    |        // Require the spot to be empty
  at /home/jiaming/slither_fp_files/out5843.sol(1993)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthHouses':
    |        // to be owned by the player
    |        require(
  > |                _roadsContract.ownerOf(_x, _y, 0) == msg.sender
    |             || _roadsContract.ownerOf(_x, _y, 1) == msg.sender
    |             || _roadsContract.ownerOf(_x - 1, _y, 0) == msg.sender
  at /home/jiaming/slither_fp_files/out5843.sol(2003)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthHouses':
    |        require(
    |                _roadsContract.ownerOf(_x, _y, 0) == msg.sender
  > |             || _roadsContract.ownerOf(_x, _y, 1) == msg.sender
    |             || _roadsContract.ownerOf(_x - 1, _y, 0) == msg.sender
    |             || _roadsContract.ownerOf(_x, _y - 1, 1) == msg.sender
  at /home/jiaming/slither_fp_files/out5843.sol(2004)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthHouses':
    |                _roadsContract.ownerOf(_x, _y, 0) == msg.sender
    |             || _roadsContract.ownerOf(_x, _y, 1) == msg.sender
  > |             || _roadsContract.ownerOf(_x - 1, _y, 0) == msg.sender
    |             || _roadsContract.ownerOf(_x, _y - 1, 1) == msg.sender
    |        );
  at /home/jiaming/slither_fp_files/out5843.sol(2005)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthHouses':
    |             || _roadsContract.ownerOf(_x, _y, 1) == msg.sender
    |             || _roadsContract.ownerOf(_x - 1, _y, 0) == msg.sender
  > |             || _roadsContract.ownerOf(_x, _y - 1, 1) == msg.sender
    |        );
    |
  at /home/jiaming/slither_fp_files/out5843.sol(2006)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthHouses':
    |
    |        // Require that there is no existing blind auction at the location
  > |        require(!KingOfEthAuctionsAbstractInterface(blindAuctionsContract).existingAuction(_x, _y));
    |
    |        // Require that there is no existing open auction at the location
  at /home/jiaming/slither_fp_files/out5843.sol(2010)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthHouses':
    |
    |        // Require that there is no existing open auction at the location
  > |        require(!KingOfEthAuctionsAbstractInterface(openAuctionsContract).existingAuction(_x, _y));
    |
    |        // Set new owner
  at /home/jiaming/slither_fp_files/out5843.sol(2013)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthHouses':
    |
    |        // Distribute resources to the player
  > |        KingOfEthResourcesInterface(interfaceContract).distributeResources(
    |              msg.sender
    |            , _x
  at /home/jiaming/slither_fp_files/out5843.sol(2022)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthHouses':
    |
    |        // Distribute the resources for the house
  > |        KingOfEthResourcesInterface(interfaceContract).distributeResources(
    |              _owner
    |            , _x
  at /home/jiaming/slither_fp_files/out5843.sol(2063)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthHouses':
    |
    |        // Burn the required resource costs for the houses
  > |        KingOfEthResourcesInterface(interfaceContract).burnHouseCosts(
    |              _count
    |            , msg.sender
  at /home/jiaming/slither_fp_files/out5843.sol(2129)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthHouses':
    |
    |        // Cancel any sales that exist
  > |        KingOfEthHouseRealty(houseRealtyContract).housesCancelHouseSale(_x, _y);
    |
    |        emit SentHouse(_x, _y, msg.sender, _to, _locationInfo.level);
  at /home/jiaming/slither_fp_files/out5843.sol(2166)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthHouses':
    |
    |        // Pay the taxes
  > |        KingOfEthAbstractInterface(kingOfEthContract).payTaxes.value(msg.value)();
    |
    |        // Burn the resource costs of the upgrade
  at /home/jiaming/slither_fp_files/out5843.sol(2186)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthHouses':
    |
    |        // Burn the resource costs of the upgrade
  > |        KingOfEthResourcesInterface(interfaceContract).burnUpgradeCosts(
    |              _locationInfo.level
    |            , msg.sender
  at /home/jiaming/slither_fp_files/out5843.sol(2189)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthHouses':
    |
    |        // Distribute the resources for the house
  > |        KingOfEthResourcesInterface(interfaceContract).distributeResources(
    |              msg.sender
    |            , _x
  at /home/jiaming/slither_fp_files/out5843.sol(2201)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |
    |        // Set new owner
  > |        _locationInfo.owner = msg.sender;
    |
    |        // Update player's points
  at /home/jiaming/slither_fp_files/out5843.sol(2016)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |
    |        // Update player's points
  > |        ++pointCounts[msg.sender];
    |
    |        // Distribute resources to the player
  at /home/jiaming/slither_fp_files/out5843.sol(2019)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |
    |        // Update point counts
  > |        pointCounts[msg.sender] -= _points;
    |        pointCounts[_to]        += _points;
    |
  at /home/jiaming/slither_fp_files/out5843.sol(2162)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |
    |        // Update the owner's points
  > |        ++pointCounts[msg.sender];
    |
    |        // Distribute the resources for the house
  at /home/jiaming/slither_fp_files/out5843.sol(2198)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |    function godChangeGod(address _newGod) public onlyGod
    |    {
  > |        god = _newGod;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |    function godPause() public onlyGod
    |    {
  > |        isPaused = true;
    |
    |        emit GodPaused();
  at /home/jiaming/slither_fp_files/out5843.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |    function godUnpause() public onlyGod
    |    {
  > |        isPaused = false;
    |
    |        emit GodUnpaused();
  at /home/jiaming/slither_fp_files/out5843.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |        onlyGod
    |    {
  > |        blindAuctionsContract = _blindAuctionsContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |        onlyGod
    |    {
  > |        openAuctionsContract = _openAuctionsContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |        onlyGod
    |    {
  > |        kingOfEthContract = _kingOfEthContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |        onlyGod
    |    {
  > |        boardContract = _boardContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(583)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |        onlyGod
    |    {
  > |        houseRealtyContract = _houseRealtyContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(933)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |        onlyGod
    |    {
  > |        roadsContract = _roadsContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(1015)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |        onlyGod
    |    {
  > |        interfaceContract = _interfaceContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(1175)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |        onlyGod
    |    {
  > |        houseCost = _newHouseCost;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(2036)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |
    |        // Set the house's new owner
  > |        _locationInfo.owner = _owner;
    |
    |        // Give the player a point for the house
  at /home/jiaming/slither_fp_files/out5843.sol(2057)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |
    |        // Give the player a point for the house
  > |        ++pointCounts[_owner];
    |
    |        // Distribute the resources for the house
  at /home/jiaming/slither_fp_files/out5843.sol(2060)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |
    |        // Set the new owner
  > |        _locationInfo.owner = _to;
    |
    |        // Calculate the total points of the house
  at /home/jiaming/slither_fp_files/out5843.sol(2099)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |
    |        // Update the point counts
  > |        pointCounts[_from] -= _points;
    |        pointCounts[_to]   += _points;
    |    }
  at /home/jiaming/slither_fp_files/out5843.sol(2105)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |        // Update the point counts
    |        pointCounts[_from] -= _points;
  > |        pointCounts[_to]   += _points;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(2106)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |
    |        // Set the new owner
  > |        _locationInfo.owner = _to;
    |
    |        // Calculate the points of the house
  at /home/jiaming/slither_fp_files/out5843.sol(2156)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |        // Update point counts
    |        pointCounts[msg.sender] -= _points;
  > |        pointCounts[_to]        += _points;
    |
    |        // Cancel any sales that exist
  at /home/jiaming/slither_fp_files/out5843.sol(2163)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHouses':
    |
    |        // Update the house's level
  > |        ++locationInfo[_x][_y].level;
    |
    |        // Update the owner's points
  at /home/jiaming/slither_fp_files/out5843.sol(2195)

[33mWarning[0m for LockedEther in contract 'KingOfEthHousesReferencer':
    |/// @author Anthony Burzillo <[email protected]>
    |/// @dev Provides functionality to reference the houses contract
  > |contract KingOfEthHousesReferencer is GodMode {
    |    /// @dev The houses contract's address
    |    address public housesContract;
  at /home/jiaming/slither_fp_files/out5843.sol(656)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHousesReferencer':
    |    /// @dev God can change the address of God
    |    /// @param _newGod The new address for God
  > |    function godChangeGod(address _newGod) public onlyGod
    |    {
    |        god = _newGod;
  at /home/jiaming/slither_fp_files/out5843.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthHousesReferencer':
    |    /// @dev God can set the realty contract
    |    /// @param _housesContract The new address
  > |    function godSetHousesContract(address _housesContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(669)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHousesReferencer':
    |contract GodMode {
    |    /// @dev Is the contract paused?
  > |    bool public isPaused;
    |
    |    /// @dev God's address
  at /home/jiaming/slither_fp_files/out5843.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHousesReferencer':
    |
    |    /// @dev God's address
  > |    address public god;
    |
    |    /// @dev Only God can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHousesReferencer':
    |
    |    /// @dev God can pause the game
  > |    function godPause() public onlyGod
    |    {
    |        isPaused = true;
  at /home/jiaming/slither_fp_files/out5843.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHousesReferencer':
    |
    |    /// @dev God can unpause the game
  > |    function godUnpause() public onlyGod
    |    {
    |        isPaused = false;
  at /home/jiaming/slither_fp_files/out5843.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthHousesReferencer':
    |contract KingOfEthHousesReferencer is GodMode {
    |    /// @dev The houses contract's address
  > |    address public housesContract;
    |
    |    /// @dev Only the houses contract can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(658)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHousesReferencer':
    |    function godChangeGod(address _newGod) public onlyGod
    |    {
  > |        god = _newGod;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHousesReferencer':
    |    function godPause() public onlyGod
    |    {
  > |        isPaused = true;
    |
    |        emit GodPaused();
  at /home/jiaming/slither_fp_files/out5843.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHousesReferencer':
    |    function godUnpause() public onlyGod
    |    {
  > |        isPaused = false;
    |
    |        emit GodUnpaused();
  at /home/jiaming/slither_fp_files/out5843.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthHousesReferencer':
    |        onlyGod
    |    {
  > |        housesContract = _housesContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(673)

[33mWarning[0m for LockedEther in contract 'KingOfEthOpenAuctionsReferencer':
    |/// @author Anthony Burzillo <[email protected]>
    |/// @dev This contract provides a reference to the open auctions contract
  > |contract KingOfEthOpenAuctionsReferencer is GodMode {
    |    /// @dev The address of the auctions contract
    |    address public openAuctionsContract;
  at /home/jiaming/slither_fp_files/out5843.sol(165)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthOpenAuctionsReferencer':
    |    /// @dev God can change the address of God
    |    /// @param _newGod The new address for God
  > |    function godChangeGod(address _newGod) public onlyGod
    |    {
    |        god = _newGod;
  at /home/jiaming/slither_fp_files/out5843.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthOpenAuctionsReferencer':
    |
    |    /// @dev God can set a new auctions contract
  > |    function godSetOpenAuctionsContract(address _openAuctionsContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthOpenAuctionsReferencer':
    |contract GodMode {
    |    /// @dev Is the contract paused?
  > |    bool public isPaused;
    |
    |    /// @dev God's address
  at /home/jiaming/slither_fp_files/out5843.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthOpenAuctionsReferencer':
    |
    |    /// @dev God's address
  > |    address public god;
    |
    |    /// @dev Only God can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthOpenAuctionsReferencer':
    |
    |    /// @dev God can pause the game
  > |    function godPause() public onlyGod
    |    {
    |        isPaused = true;
  at /home/jiaming/slither_fp_files/out5843.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthOpenAuctionsReferencer':
    |
    |    /// @dev God can unpause the game
  > |    function godUnpause() public onlyGod
    |    {
    |        isPaused = false;
  at /home/jiaming/slither_fp_files/out5843.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthOpenAuctionsReferencer':
    |contract KingOfEthOpenAuctionsReferencer is GodMode {
    |    /// @dev The address of the auctions contract
  > |    address public openAuctionsContract;
    |
    |    /// @dev Only the open auctions contract can run this
  at /home/jiaming/slither_fp_files/out5843.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthOpenAuctionsReferencer':
    |    function godChangeGod(address _newGod) public onlyGod
    |    {
  > |        god = _newGod;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthOpenAuctionsReferencer':
    |    function godPause() public onlyGod
    |    {
  > |        isPaused = true;
    |
    |        emit GodPaused();
  at /home/jiaming/slither_fp_files/out5843.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthOpenAuctionsReferencer':
    |    function godUnpause() public onlyGod
    |    {
  > |        isPaused = false;
    |
    |        emit GodUnpaused();
  at /home/jiaming/slither_fp_files/out5843.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthOpenAuctionsReferencer':
    |        onlyGod
    |    {
  > |        openAuctionsContract = _openAuctionsContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(181)

[33mWarning[0m for LockedEther in contract 'KingOfEthReferencer':
    |/// @author Anthony Burzillo <[email protected]>
    |/// @dev Functionality to allow contracts to reference the king contract
  > |contract KingOfEthReferencer is GodMode {
    |    /// @dev The address of the king contract
    |    address public kingOfEthContract;
  at /home/jiaming/slither_fp_files/out5843.sol(266)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthReferencer':
    |    /// @dev God can change the address of God
    |    /// @param _newGod The new address for God
  > |    function godChangeGod(address _newGod) public onlyGod
    |    {
    |        god = _newGod;
  at /home/jiaming/slither_fp_files/out5843.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthReferencer':
    |    /// @dev God can change the king contract
    |    /// @param _kingOfEthContract The new address
  > |    function godSetKingOfEthContract(address _kingOfEthContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(279)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthReferencer':
    |contract GodMode {
    |    /// @dev Is the contract paused?
  > |    bool public isPaused;
    |
    |    /// @dev God's address
  at /home/jiaming/slither_fp_files/out5843.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthReferencer':
    |
    |    /// @dev God's address
  > |    address public god;
    |
    |    /// @dev Only God can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthReferencer':
    |
    |    /// @dev God can pause the game
  > |    function godPause() public onlyGod
    |    {
    |        isPaused = true;
  at /home/jiaming/slither_fp_files/out5843.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthReferencer':
    |
    |    /// @dev God can unpause the game
  > |    function godUnpause() public onlyGod
    |    {
    |        isPaused = false;
  at /home/jiaming/slither_fp_files/out5843.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthReferencer':
    |contract KingOfEthReferencer is GodMode {
    |    /// @dev The address of the king contract
  > |    address public kingOfEthContract;
    |
    |    /// @dev Only the king contract can run this
  at /home/jiaming/slither_fp_files/out5843.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthReferencer':
    |    function godChangeGod(address _newGod) public onlyGod
    |    {
  > |        god = _newGod;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthReferencer':
    |    function godPause() public onlyGod
    |    {
  > |        isPaused = true;
    |
    |        emit GodPaused();
  at /home/jiaming/slither_fp_files/out5843.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthReferencer':
    |    function godUnpause() public onlyGod
    |    {
  > |        isPaused = false;
    |
    |        emit GodUnpaused();
  at /home/jiaming/slither_fp_files/out5843.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthReferencer':
    |        onlyGod
    |    {
  > |        kingOfEthContract = _kingOfEthContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(283)

[33mWarning[0m for LockedEther in contract 'KingOfEthResource':
    |/// @author Anthony Burzillo <bu[email protected]>
    |/// @dev Common contract implementation for resources
  > |contract KingOfEthResource is
    |      ERC20Interface
    |    , GodMode
  at /home/jiaming/slither_fp_files/out5843.sol(1213)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResource':
    |    /// @dev God can change the address of God
    |    /// @param _newGod The new address for God
  > |    function godChangeGod(address _newGod) public onlyGod
    |    {
    |        god = _newGod;
  at /home/jiaming/slither_fp_files/out5843.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResource':
    |    /// @dev God can set the realty contract
    |    /// @param _interfaceContract The new address
  > |    function godSetInterfaceContract(address _interfaceContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(1171)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResource':
    |    /// @param _tokenOwner The address to look up
    |    /// @return The balance of the address
  > |    function balanceOf(address _tokenOwner)
    |        public
    |        constant
  at /home/jiaming/slither_fp_files/out5843.sol(1246)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResource':
    |    /// @param _tokenOwner The address to look up
    |    /// @return The frozen balance of the address
  > |    function frozenTokens(address _tokenOwner)
    |        public
    |        constant
  at /home/jiaming/slither_fp_files/out5843.sol(1257)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResource':
    |    /// @param _spender The account that is allowed to withdraw
    |    /// @return The amount remaining in the allowance
  > |    function allowance(address _tokenOwner, address _spender)
    |        public
    |        constant
  at /home/jiaming/slither_fp_files/out5843.sol(1269)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResource':
    |    /// @param _owner The owner of the tokens
    |    /// @param _tokens The amount of tokens to burn
  > |    function interfaceBurnTokens(address _owner, uint _tokens)
    |        public
    |        onlyInterfaceContract
  at /home/jiaming/slither_fp_files/out5843.sol(1308)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResource':
    |    /// @param _owner The owner of the tokens
    |    /// @param _tokens The amount of tokens to burn
  > |    function interfaceMintTokens(address _owner, uint _tokens)
    |        public
    |        onlyInterfaceContract
  at /home/jiaming/slither_fp_files/out5843.sol(1324)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResource':
    |    /// @param _owner The owner of the tokens
    |    /// @param _tokens The amount of tokens to freeze
  > |    function interfaceFreezeTokens(address _owner, uint _tokens)
    |        public
    |        onlyInterfaceContract
  at /home/jiaming/slither_fp_files/out5843.sol(1339)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResource':
    |    /// @param _owner The owner of the tokens
    |    /// @param _tokens The amount of tokens to thaw
  > |    function interfaceThawTokens(address _owner, uint _tokens)
    |        public
    |        onlyInterfaceContract
  at /home/jiaming/slither_fp_files/out5843.sol(1350)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResource':
    |    /// @param _to The new owner of the tokens
    |    /// @param _tokens The amount of tokens to transfer
  > |    function interfaceTransfer(address _from, address _to, uint _tokens)
    |        public
    |        onlyInterfaceContract
  at /home/jiaming/slither_fp_files/out5843.sol(1362)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResource':
    |    /// @param _to The new owner of the tokens
    |    /// @param _tokens The amount of frozen tokens to transfer
  > |    function interfaceFrozenTransfer(address _from, address _to, uint _tokens)
    |        public
    |        onlyInterfaceContract
  at /home/jiaming/slither_fp_files/out5843.sol(1378)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResource':
    |    /// @param _to The address to transfer to
    |    /// @param _tokens The amount of tokens to transfer
  > |    function transfer(address _to, uint _tokens)
    |        public
    |        hasAvailableTokens(msg.sender, _tokens)
  at /home/jiaming/slither_fp_files/out5843.sol(1394)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResource':
    |    /// @param _spender The address to approve
    |    /// @param _tokens The amount of tokens to approve
  > |    function approve(address _spender, uint _tokens)
    |        public
    |        returns(bool success)
  at /home/jiaming/slither_fp_files/out5843.sol(1410)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResource':
    |    /// @param _to The address using the allowance
    |    /// @param _tokens The amount of tokens to transfer
  > |    function transferFrom(address _from, address _to, uint _tokens)
    |        public
    |        hasAvailableTokens(_from, _tokens)
  at /home/jiaming/slither_fp_files/out5843.sol(1425)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResource':
    |contract GodMode {
    |    /// @dev Is the contract paused?
  > |    bool public isPaused;
    |
    |    /// @dev God's address
  at /home/jiaming/slither_fp_files/out5843.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResource':
    |
    |    /// @dev God's address
  > |    address public god;
    |
    |    /// @dev Only God can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResource':
    |
    |    /// @dev God can pause the game
  > |    function godPause() public onlyGod
    |    {
    |        isPaused = true;
  at /home/jiaming/slither_fp_files/out5843.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResource':
    |
    |    /// @dev God can unpause the game
  > |    function godUnpause() public onlyGod
    |    {
    |        isPaused = false;
  at /home/jiaming/slither_fp_files/out5843.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResource':
    |contract KingOfEthResourcesInterfaceReferencer is GodMode {
    |    /// @dev The interface contract's address
  > |    address public interfaceContract;
    |
    |    /// @dev Only the interface contract can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(1160)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResource':
    |{
    |    /// @dev Current resource supply
  > |    uint public resourceSupply;
    |
    |    /// @dev ERC20 token's decimals
  at /home/jiaming/slither_fp_files/out5843.sol(1219)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResource':
    |
    |    /// @dev ERC20 token's decimals
  > |    uint8 public constant decimals = 0;
    |
    |    /// @dev mapping of addresses to holdings
  at /home/jiaming/slither_fp_files/out5843.sol(1222)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResource':
    |    /// @dev ERC20 total supply
    |    /// @return The current total supply of the resource
  > |    function totalSupply()
    |        public
    |        constant
  at /home/jiaming/slither_fp_files/out5843.sol(1235)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEthResource':
    |        returns(bool success)
    |    {
  > |        holdings[_to]        += _tokens;
    |        holdings[msg.sender] -= _tokens;
    |
  at /home/jiaming/slither_fp_files/out5843.sol(1399)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEthResource':
    |        require(allowances[_from][_to] >= _tokens);
    |
  > |        holdings[_to]          += _tokens;
    |        holdings[_from]        -= _tokens;
    |        allowances[_from][_to] -= _tokens;
  at /home/jiaming/slither_fp_files/out5843.sol(1432)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEthResource':
    |
    |        holdings[_to]          += _tokens;
  > |        holdings[_from]        -= _tokens;
    |        allowances[_from][_to] -= _tokens;
    |
  at /home/jiaming/slither_fp_files/out5843.sol(1433)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEthResource':
    |        holdings[_to]          += _tokens;
    |        holdings[_from]        -= _tokens;
  > |        allowances[_from][_to] -= _tokens;
    |
    |        emit Transfer(_from, _to, _tokens);
  at /home/jiaming/slither_fp_files/out5843.sol(1434)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResource':
    |    {
    |        holdings[_to]        += _tokens;
  > |        holdings[msg.sender] -= _tokens;
    |
    |        emit Transfer(msg.sender, _to, _tokens);
  at /home/jiaming/slither_fp_files/out5843.sol(1400)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResource':
    |        returns(bool success)
    |    {
  > |        allowances[msg.sender][_spender] = _tokens;
    |
    |        emit Approval(msg.sender, _spender, _tokens);
  at /home/jiaming/slither_fp_files/out5843.sol(1414)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResource':
    |    function godChangeGod(address _newGod) public onlyGod
    |    {
  > |        god = _newGod;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResource':
    |    function godPause() public onlyGod
    |    {
  > |        isPaused = true;
    |
    |        emit GodPaused();
  at /home/jiaming/slither_fp_files/out5843.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResource':
    |    function godUnpause() public onlyGod
    |    {
  > |        isPaused = false;
    |
    |        emit GodUnpaused();
  at /home/jiaming/slither_fp_files/out5843.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResource':
    |        onlyGod
    |    {
  > |        interfaceContract = _interfaceContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(1175)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResource':
    |        hasAvailableTokens(_owner, _tokens)
    |    {
  > |        holdings[_owner] -= _tokens;
    |
    |        resourceSupply -= _tokens;
  at /home/jiaming/slither_fp_files/out5843.sol(1313)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResource':
    |        holdings[_owner] -= _tokens;
    |
  > |        resourceSupply -= _tokens;
    |
    |        // Pretend the tokens were sent to 0x0
  at /home/jiaming/slither_fp_files/out5843.sol(1315)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResource':
    |        onlyInterfaceContract
    |    {
  > |        holdings[_owner] += _tokens;
    |
    |        resourceSupply += _tokens;
  at /home/jiaming/slither_fp_files/out5843.sol(1328)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResource':
    |        holdings[_owner] += _tokens;
    |
  > |        resourceSupply += _tokens;
    |
    |        // Pretend the tokens were sent from the interface contract
  at /home/jiaming/slither_fp_files/out5843.sol(1330)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResource':
    |        hasAvailableTokens(_owner, _tokens)
    |    {
  > |        frozenHoldings[_owner] += _tokens;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(1344)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResource':
    |        hasFrozenTokens(_owner, _tokens)
    |    {
  > |        frozenHoldings[_owner] -= _tokens;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(1355)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResource':
    |        assert(holdings[_from] >= _tokens);
    |
  > |        holdings[_from] -= _tokens;
    |        holdings[_to]   += _tokens;
    |
  at /home/jiaming/slither_fp_files/out5843.sol(1368)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResource':
    |
    |        holdings[_from] -= _tokens;
  > |        holdings[_to]   += _tokens;
    |
    |        emit Transfer(_from, _to, _tokens);
  at /home/jiaming/slither_fp_files/out5843.sol(1369)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResource':
    |    {
    |        // Make sure to deduct the tokens from both the total and frozen amounts
  > |        holdings[_from]       -= _tokens;
    |        frozenHoldings[_from] -= _tokens;
    |        holdings[_to]         += _tokens;
  at /home/jiaming/slither_fp_files/out5843.sol(1384)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResource':
    |        // Make sure to deduct the tokens from both the total and frozen amounts
    |        holdings[_from]       -= _tokens;
  > |        frozenHoldings[_from] -= _tokens;
    |        holdings[_to]         += _tokens;
    |
  at /home/jiaming/slither_fp_files/out5843.sol(1385)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResource':
    |        holdings[_from]       -= _tokens;
    |        frozenHoldings[_from] -= _tokens;
  > |        holdings[_to]         += _tokens;
    |
    |        emit Transfer(_from, _to, _tokens);
  at /home/jiaming/slither_fp_files/out5843.sol(1386)

[33mWarning[0m for LockedEther in contract 'KingOfEthResourceExchangeReferencer':
    |/// @dev Provides functionality to interface with the
    |///  resource-to-resource contract
  > |contract KingOfEthResourceExchangeReferencer is GodMode {
    |    /// @dev Address of the resource-to-resource contract
    |    address public resourceExchangeContract;
  at /home/jiaming/slither_fp_files/out5843.sol(1080)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResourceExchangeReferencer':
    |    /// @dev God can change the address of God
    |    /// @param _newGod The new address for God
  > |    function godChangeGod(address _newGod) public onlyGod
    |    {
    |        god = _newGod;
  at /home/jiaming/slither_fp_files/out5843.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResourceExchangeReferencer':
    |    /// @dev God may set the resource-to-resource contract's address
    |    /// @dev _resourceExchangeContract The new address
  > |    function godSetResourceExchangeContract(address _resourceExchangeContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(1093)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourceExchangeReferencer':
    |contract GodMode {
    |    /// @dev Is the contract paused?
  > |    bool public isPaused;
    |
    |    /// @dev God's address
  at /home/jiaming/slither_fp_files/out5843.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourceExchangeReferencer':
    |
    |    /// @dev God's address
  > |    address public god;
    |
    |    /// @dev Only God can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourceExchangeReferencer':
    |
    |    /// @dev God can pause the game
  > |    function godPause() public onlyGod
    |    {
    |        isPaused = true;
  at /home/jiaming/slither_fp_files/out5843.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourceExchangeReferencer':
    |
    |    /// @dev God can unpause the game
  > |    function godUnpause() public onlyGod
    |    {
    |        isPaused = false;
  at /home/jiaming/slither_fp_files/out5843.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourceExchangeReferencer':
    |contract KingOfEthResourceExchangeReferencer is GodMode {
    |    /// @dev Address of the resource-to-resource contract
  > |    address public resourceExchangeContract;
    |
    |    /// @dev Only the resource-to-resource contract may run this function
  at /home/jiaming/slither_fp_files/out5843.sol(1082)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResourceExchangeReferencer':
    |    function godChangeGod(address _newGod) public onlyGod
    |    {
  > |        god = _newGod;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResourceExchangeReferencer':
    |    function godPause() public onlyGod
    |    {
  > |        isPaused = true;
    |
    |        emit GodPaused();
  at /home/jiaming/slither_fp_files/out5843.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResourceExchangeReferencer':
    |    function godUnpause() public onlyGod
    |    {
  > |        isPaused = false;
    |
    |        emit GodUnpaused();
  at /home/jiaming/slither_fp_files/out5843.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResourceExchangeReferencer':
    |        onlyGod
    |    {
  > |        resourceExchangeContract = _resourceExchangeContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(1097)

[33mWarning[0m for LockedEther in contract 'KingOfEthResourceType':
    |/// @author Anthony Burzillo <[email protected]>
    |/// @dev Provides enum to choose resource types
  > |contract KingOfEthResourceType {
    |    /// @dev Enum describing a choice of a resource
    |    enum ResourceType {
  at /home/jiaming/slither_fp_files/out5843.sol(1460)

[33mWarning[0m for DAO in contract 'KingOfEthResourcesInterface':
    |    {
    |        // Costs 2 corn per house
  > |        KingOfEthResource(contractFor(ResourceType.CORN)).interfaceBurnTokens(
    |              _player
    |            , 2 * _count
  at /home/jiaming/slither_fp_files/out5843.sol(1679)

[33mWarning[0m for DAO in contract 'KingOfEthResourcesInterface':
    |
    |        // Costs 2 ore per house
  > |        KingOfEthResource(contractFor(ResourceType.ORE)).interfaceBurnTokens(
    |              _player
    |            , 2 * _count
  at /home/jiaming/slither_fp_files/out5843.sol(1685)

[33mWarning[0m for DAO in contract 'KingOfEthResourcesInterface':
    |
    |        // Costs 1 wood per house
  > |        KingOfEthResource(contractFor(ResourceType.WOOD)).interfaceBurnTokens(
    |              _player
    |            , _count
  at /home/jiaming/slither_fp_files/out5843.sol(1691)

[33mWarning[0m for DAO in contract 'KingOfEthResourcesInterface':
    |        {
    |            // Level 1 costs bronze
  > |            KingOfEthResource(contractFor(ResourceType.BRONZE)).interfaceBurnTokens(
    |                  _player
    |                , 1
  at /home/jiaming/slither_fp_files/out5843.sol(1713)

[33mWarning[0m for DAO in contract 'KingOfEthResourcesInterface':
    |        {
    |            // Level 2 costs gold
  > |            KingOfEthResource(contractFor(ResourceType.GOLD)).interfaceBurnTokens(
    |                  _player
    |                , 1
  at /home/jiaming/slither_fp_files/out5843.sol(1721)

[33mWarning[0m for DAO in contract 'KingOfEthResourcesInterface':
    |        {
    |            // Level 3 costs steel
  > |            KingOfEthResource(contractFor(ResourceType.STEEL)).interfaceBurnTokens(
    |                  _player
    |                , 1
  at /home/jiaming/slither_fp_files/out5843.sol(1729)

[33mWarning[0m for DAO in contract 'KingOfEthResourcesInterface':
    |        {
    |            // Level 4 costs oil
  > |            KingOfEthResource(contractFor(ResourceType.OIL)).interfaceBurnTokens(
    |                  _player
    |                , 1
  at /home/jiaming/slither_fp_files/out5843.sol(1737)

[33mWarning[0m for DAO in contract 'KingOfEthResourcesInterface':
    |        {
    |            // Level 5 costs uranium
  > |            KingOfEthResource(contractFor(ResourceType.URANIUM)).interfaceBurnTokens(
    |                  _player
    |                , 1
  at /home/jiaming/slither_fp_files/out5843.sol(1745)

[33mWarning[0m for DAO in contract 'KingOfEthResourcesInterface':
    |
    |        // Distribute the top left resource
  > |        KingOfEthResource(contractFor(resourceType(_x - 1, _y - 1))).interfaceMintTokens(
    |            _owner
    |          , _count
  at /home/jiaming/slither_fp_files/out5843.sol(1766)

[33mWarning[0m for DAO in contract 'KingOfEthResourcesInterface':
    |
    |        // Distribute the top right resource
  > |        KingOfEthResource(contractFor(resourceType(_x, _y - 1))).interfaceMintTokens(
    |            _owner
    |          , _count
  at /home/jiaming/slither_fp_files/out5843.sol(1772)

[33mWarning[0m for DAO in contract 'KingOfEthResourcesInterface':
    |
    |        // Distribute the bottom right resource
  > |        KingOfEthResource(contractFor(resourceType(_x, _y))).interfaceMintTokens(
    |            _owner
    |          , _count
  at /home/jiaming/slither_fp_files/out5843.sol(1778)

[33mWarning[0m for DAO in contract 'KingOfEthResourcesInterface':
    |
    |        // Distribute the bottom left resource
  > |        KingOfEthResource(contractFor(resourceType(_x - 1, _y))).interfaceMintTokens(
    |            _owner
    |          , _count
  at /home/jiaming/slither_fp_files/out5843.sol(1784)

[33mWarning[0m for DAO in contract 'KingOfEthResourcesInterface':
    |        onlyExchangeContract
    |    {
  > |        KingOfEthResource(contractFor(_type)).interfaceFreezeTokens(_owner, _tokens);
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(1818)

[33mWarning[0m for DAO in contract 'KingOfEthResourcesInterface':
    |        onlyExchangeContract
    |    {
  > |        KingOfEthResource(contractFor(_type)).interfaceThawTokens(_owner, _tokens);
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(1829)

[33mWarning[0m for DAO in contract 'KingOfEthResourcesInterface':
    |        onlyExchangeContract
    |    {
  > |        KingOfEthResource(contractFor(_type)).interfaceTransfer(_from, _to, _tokens);
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(1841)

[33mWarning[0m for DAO in contract 'KingOfEthResourcesInterface':
    |        onlyExchangeContract
    |    {
  > |        KingOfEthResource(contractFor(_type)).interfaceFrozenTransfer(_from, _to, _tokens);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(1853)

[33mWarning[0m for LockedEther in contract 'KingOfEthResourcesInterface':
    |/// @author Anthony Burzillo <[email protected]>
    |/// @dev Contract for interacting with resources
  > |contract KingOfEthResourcesInterface is
    |      GodMode
    |    , KingOfEthExchangeReferencer
  at /home/jiaming/slither_fp_files/out5843.sol(1499)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |    /// @dev God can change the address of God
    |    /// @param _newGod The new address for God
  > |    function godChangeGod(address _newGod) public onlyGod
    |    {
    |        god = _newGod;
  at /home/jiaming/slither_fp_files/out5843.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |    /// @dev God can set the realty contract
    |    /// @param _housesContract The new address
  > |    function godSetHousesContract(address _housesContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(669)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |    /// @dev God can set the realty contract
    |    /// @param _roadsContract The new address
  > |    function godSetRoadsContract(address _roadsContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(1011)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |    /// @dev God may set the ETH exchange contract's address
    |    /// @dev _ethExchangeContract The new address
  > |    function godSetEthExchangeContract(address _ethExchangeContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(1052)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |    /// @dev God may set the resource-to-resource contract's address
    |    /// @dev _resourceExchangeContract The new address
  > |    function godSetResourceExchangeContract(address _resourceExchangeContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(1093)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |    ///  player
    |    /// @param _player The player in question
  > |    function lookupResourcePoints(address _player)
    |        public
    |        view
  at /home/jiaming/slither_fp_files/out5843.sol(1655)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |    /// @param _length The length of the road
    |    /// @param _player The player who is building the house
  > |    function burnRoadCosts(uint _length, address _player)
    |        public
    |        onlyRoadsContract
  at /home/jiaming/slither_fp_files/out5843.sol(1793)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |contract GodMode {
    |    /// @dev Is the contract paused?
  > |    bool public isPaused;
    |
    |    /// @dev God's address
  at /home/jiaming/slither_fp_files/out5843.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |
    |    /// @dev God's address
  > |    address public god;
    |
    |    /// @dev Only God can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |
    |    /// @dev God can pause the game
  > |    function godPause() public onlyGod
    |    {
    |        isPaused = true;
  at /home/jiaming/slither_fp_files/out5843.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |
    |    /// @dev God can unpause the game
  > |    function godUnpause() public onlyGod
    |    {
    |        isPaused = false;
  at /home/jiaming/slither_fp_files/out5843.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |contract KingOfEthHousesReferencer is GodMode {
    |    /// @dev The houses contract's address
  > |    address public housesContract;
    |
    |    /// @dev Only the houses contract can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(658)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |contract KingOfEthRoadsReferencer is GodMode {
    |    /// @dev The roads contract's address
  > |    address public roadsContract;
    |
    |    /// @dev Only the roads contract can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(1000)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |contract KingOfEthEthExchangeReferencer is GodMode {
    |    /// @dev Address of the ETH exchange contract
  > |    address public ethExchangeContract;
    |
    |    /// @dev Only the ETH exchange contract may run this function
  at /home/jiaming/slither_fp_files/out5843.sol(1041)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |contract KingOfEthResourceExchangeReferencer is GodMode {
    |    /// @dev Address of the resource-to-resource contract
  > |    address public resourceExchangeContract;
    |
    |    /// @dev Only the resource-to-resource contract may run this function
  at /home/jiaming/slither_fp_files/out5843.sol(1082)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |{
    |    /// @dev Amount of resources a user gets for building a house
  > |    uint public constant resourcesPerHouse = 3;
    |
    |    /// @dev Address for the bronze contract
  at /home/jiaming/slither_fp_files/out5843.sol(1507)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |
    |    /// @dev Address for the bronze contract
  > |    address public bronzeContract;
    |
    |    /// @dev Address for the corn contract
  at /home/jiaming/slither_fp_files/out5843.sol(1510)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |
    |    /// @dev Address for the corn contract
  > |    address public cornContract;
    |
    |    /// @dev Address for the gold contract
  at /home/jiaming/slither_fp_files/out5843.sol(1513)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |
    |    /// @dev Address for the gold contract
  > |    address public goldContract;
    |
    |    /// @dev Address for the oil contract
  at /home/jiaming/slither_fp_files/out5843.sol(1516)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |
    |    /// @dev Address for the oil contract
  > |    address public oilContract;
    |
    |    /// @dev Address for the ore contract
  at /home/jiaming/slither_fp_files/out5843.sol(1519)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |
    |    /// @dev Address for the ore contract
  > |    address public oreContract;
    |
    |    /// @dev Address for the steel contract
  at /home/jiaming/slither_fp_files/out5843.sol(1522)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |
    |    /// @dev Address for the steel contract
  > |    address public steelContract;
    |
    |    /// @dev Address for the uranium contract
  at /home/jiaming/slither_fp_files/out5843.sol(1525)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |
    |    /// @dev Address for the uranium contract
  > |    address public uraniumContract;
    |
    |    /// @dev Address for the wood contract
  at /home/jiaming/slither_fp_files/out5843.sol(1528)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |
    |    /// @dev Address for the wood contract
  > |    address public woodContract;
    |
    |    /// @param _bronzeContract The address of the bronze contract
  at /home/jiaming/slither_fp_files/out5843.sol(1531)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterface':
    |    /// @param _x The x coordinate of the top left corner of the tile
    |    /// @param _y The y coordinate of the top left corner of the tile
  > |    function resourceType(uint _x, uint _y)
    |        public
    |        pure
  at /home/jiaming/slither_fp_files/out5843.sol(1611)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |        uint result = 0;
    |
  > |        result += KingOfEthResource(bronzeContract).balanceOf(_player);
    |        result += KingOfEthResource(goldContract).balanceOf(_player)    * 3;
    |        result += KingOfEthResource(steelContract).balanceOf(_player)   * 6;
  at /home/jiaming/slither_fp_files/out5843.sol(1662)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |
    |        result += KingOfEthResource(bronzeContract).balanceOf(_player);
  > |        result += KingOfEthResource(goldContract).balanceOf(_player)    * 3;
    |        result += KingOfEthResource(steelContract).balanceOf(_player)   * 6;
    |        result += KingOfEthResource(oilContract).balanceOf(_player)     * 10;
  at /home/jiaming/slither_fp_files/out5843.sol(1663)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |        result += KingOfEthResource(bronzeContract).balanceOf(_player);
    |        result += KingOfEthResource(goldContract).balanceOf(_player)    * 3;
  > |        result += KingOfEthResource(steelContract).balanceOf(_player)   * 6;
    |        result += KingOfEthResource(oilContract).balanceOf(_player)     * 10;
    |        result += KingOfEthResource(uraniumContract).balanceOf(_player) * 44;
  at /home/jiaming/slither_fp_files/out5843.sol(1664)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |        result += KingOfEthResource(goldContract).balanceOf(_player)    * 3;
    |        result += KingOfEthResource(steelContract).balanceOf(_player)   * 6;
  > |        result += KingOfEthResource(oilContract).balanceOf(_player)     * 10;
    |        result += KingOfEthResource(uraniumContract).balanceOf(_player) * 44;
    |
  at /home/jiaming/slither_fp_files/out5843.sol(1665)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |        result += KingOfEthResource(steelContract).balanceOf(_player)   * 6;
    |        result += KingOfEthResource(oilContract).balanceOf(_player)     * 10;
  > |        result += KingOfEthResource(uraniumContract).balanceOf(_player) * 44;
    |
    |        return result;
  at /home/jiaming/slither_fp_files/out5843.sol(1666)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |    {
    |        // Costs 2 corn per house
  > |        KingOfEthResource(contractFor(ResourceType.CORN)).interfaceBurnTokens(
    |              _player
    |            , 2 * _count
  at /home/jiaming/slither_fp_files/out5843.sol(1679)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |
    |        // Costs 2 ore per house
  > |        KingOfEthResource(contractFor(ResourceType.ORE)).interfaceBurnTokens(
    |              _player
    |            , 2 * _count
  at /home/jiaming/slither_fp_files/out5843.sol(1685)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |
    |        // Costs 1 wood per house
  > |        KingOfEthResource(contractFor(ResourceType.WOOD)).interfaceBurnTokens(
    |              _player
    |            , _count
  at /home/jiaming/slither_fp_files/out5843.sol(1691)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |        {
    |            // Level 1 costs bronze
  > |            KingOfEthResource(contractFor(ResourceType.BRONZE)).interfaceBurnTokens(
    |                  _player
    |                , 1
  at /home/jiaming/slither_fp_files/out5843.sol(1713)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |        {
    |            // Level 2 costs gold
  > |            KingOfEthResource(contractFor(ResourceType.GOLD)).interfaceBurnTokens(
    |                  _player
    |                , 1
  at /home/jiaming/slither_fp_files/out5843.sol(1721)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |        {
    |            // Level 3 costs steel
  > |            KingOfEthResource(contractFor(ResourceType.STEEL)).interfaceBurnTokens(
    |                  _player
    |                , 1
  at /home/jiaming/slither_fp_files/out5843.sol(1729)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |        {
    |            // Level 4 costs oil
  > |            KingOfEthResource(contractFor(ResourceType.OIL)).interfaceBurnTokens(
    |                  _player
    |                , 1
  at /home/jiaming/slither_fp_files/out5843.sol(1737)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |        {
    |            // Level 5 costs uranium
  > |            KingOfEthResource(contractFor(ResourceType.URANIUM)).interfaceBurnTokens(
    |                  _player
    |                , 1
  at /home/jiaming/slither_fp_files/out5843.sol(1745)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |
    |        // Distribute the top left resource
  > |        KingOfEthResource(contractFor(resourceType(_x - 1, _y - 1))).interfaceMintTokens(
    |            _owner
    |          , _count
  at /home/jiaming/slither_fp_files/out5843.sol(1766)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |
    |        // Distribute the top right resource
  > |        KingOfEthResource(contractFor(resourceType(_x, _y - 1))).interfaceMintTokens(
    |            _owner
    |          , _count
  at /home/jiaming/slither_fp_files/out5843.sol(1772)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |
    |        // Distribute the bottom right resource
  > |        KingOfEthResource(contractFor(resourceType(_x, _y))).interfaceMintTokens(
    |            _owner
    |          , _count
  at /home/jiaming/slither_fp_files/out5843.sol(1778)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |
    |        // Distribute the bottom left resource
  > |        KingOfEthResource(contractFor(resourceType(_x - 1, _y))).interfaceMintTokens(
    |            _owner
    |          , _count
  at /home/jiaming/slither_fp_files/out5843.sol(1784)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |    {
    |        // Burn corn
  > |        KingOfEthResource(cornContract).interfaceBurnTokens(
    |              _player
    |            , _length
  at /home/jiaming/slither_fp_files/out5843.sol(1798)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |
    |        // Burn ore
  > |        KingOfEthResource(oreContract).interfaceBurnTokens(
    |              _player
    |            , _length
  at /home/jiaming/slither_fp_files/out5843.sol(1804)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |        onlyExchangeContract
    |    {
  > |        KingOfEthResource(contractFor(_type)).interfaceFreezeTokens(_owner, _tokens);
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(1818)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |        onlyExchangeContract
    |    {
  > |        KingOfEthResource(contractFor(_type)).interfaceThawTokens(_owner, _tokens);
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(1829)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |        onlyExchangeContract
    |    {
  > |        KingOfEthResource(contractFor(_type)).interfaceTransfer(_from, _to, _tokens);
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(1841)

[33mWarning[0m for UnhandledException in contract 'KingOfEthResourcesInterface':
    |        onlyExchangeContract
    |    {
  > |        KingOfEthResource(contractFor(_type)).interfaceFrozenTransfer(_from, _to, _tokens);
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(1853)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthResourcesInterface':
    |        uint result = 0;
    |
  > |        result += KingOfEthResource(bronzeContract).balanceOf(_player);
    |        result += KingOfEthResource(goldContract).balanceOf(_player)    * 3;
    |        result += KingOfEthResource(steelContract).balanceOf(_player)   * 6;
  at /home/jiaming/slither_fp_files/out5843.sol(1662)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthResourcesInterface':
    |
    |        result += KingOfEthResource(bronzeContract).balanceOf(_player);
  > |        result += KingOfEthResource(goldContract).balanceOf(_player)    * 3;
    |        result += KingOfEthResource(steelContract).balanceOf(_player)   * 6;
    |        result += KingOfEthResource(oilContract).balanceOf(_player)     * 10;
  at /home/jiaming/slither_fp_files/out5843.sol(1663)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthResourcesInterface':
    |        result += KingOfEthResource(bronzeContract).balanceOf(_player);
    |        result += KingOfEthResource(goldContract).balanceOf(_player)    * 3;
  > |        result += KingOfEthResource(steelContract).balanceOf(_player)   * 6;
    |        result += KingOfEthResource(oilContract).balanceOf(_player)     * 10;
    |        result += KingOfEthResource(uraniumContract).balanceOf(_player) * 44;
  at /home/jiaming/slither_fp_files/out5843.sol(1664)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthResourcesInterface':
    |        result += KingOfEthResource(goldContract).balanceOf(_player)    * 3;
    |        result += KingOfEthResource(steelContract).balanceOf(_player)   * 6;
  > |        result += KingOfEthResource(oilContract).balanceOf(_player)     * 10;
    |        result += KingOfEthResource(uraniumContract).balanceOf(_player) * 44;
    |
  at /home/jiaming/slither_fp_files/out5843.sol(1665)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthResourcesInterface':
    |        result += KingOfEthResource(steelContract).balanceOf(_player)   * 6;
    |        result += KingOfEthResource(oilContract).balanceOf(_player)     * 10;
  > |        result += KingOfEthResource(uraniumContract).balanceOf(_player) * 44;
    |
    |        return result;
  at /home/jiaming/slither_fp_files/out5843.sol(1666)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthResourcesInterface':
    |    {
    |        // Burn corn
  > |        KingOfEthResource(cornContract).interfaceBurnTokens(
    |              _player
    |            , _length
  at /home/jiaming/slither_fp_files/out5843.sol(1798)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthResourcesInterface':
    |
    |        // Burn ore
  > |        KingOfEthResource(oreContract).interfaceBurnTokens(
    |              _player
    |            , _length
  at /home/jiaming/slither_fp_files/out5843.sol(1804)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResourcesInterface':
    |    function godChangeGod(address _newGod) public onlyGod
    |    {
  > |        god = _newGod;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResourcesInterface':
    |    function godPause() public onlyGod
    |    {
  > |        isPaused = true;
    |
    |        emit GodPaused();
  at /home/jiaming/slither_fp_files/out5843.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResourcesInterface':
    |    function godUnpause() public onlyGod
    |    {
  > |        isPaused = false;
    |
    |        emit GodUnpaused();
  at /home/jiaming/slither_fp_files/out5843.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResourcesInterface':
    |        onlyGod
    |    {
  > |        housesContract = _housesContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(673)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResourcesInterface':
    |        onlyGod
    |    {
  > |        roadsContract = _roadsContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(1015)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResourcesInterface':
    |        onlyGod
    |    {
  > |        ethExchangeContract = _ethExchangeContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(1056)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResourcesInterface':
    |        onlyGod
    |    {
  > |        resourceExchangeContract = _resourceExchangeContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(1097)

[33mWarning[0m for LockedEther in contract 'KingOfEthResourcesInterfaceReferencer':
    |/// @author Anthony Burzillo <[email protected]>
    |/// @dev Provides functionality to reference the resource interface contract
  > |contract KingOfEthResourcesInterfaceReferencer is GodMode {
    |    /// @dev The interface contract's address
    |    address public interfaceContract;
  at /home/jiaming/slither_fp_files/out5843.sol(1158)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResourcesInterfaceReferencer':
    |    /// @dev God can change the address of God
    |    /// @param _newGod The new address for God
  > |    function godChangeGod(address _newGod) public onlyGod
    |    {
    |        god = _newGod;
  at /home/jiaming/slither_fp_files/out5843.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthResourcesInterfaceReferencer':
    |    /// @dev God can set the realty contract
    |    /// @param _interfaceContract The new address
  > |    function godSetInterfaceContract(address _interfaceContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(1171)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterfaceReferencer':
    |contract GodMode {
    |    /// @dev Is the contract paused?
  > |    bool public isPaused;
    |
    |    /// @dev God's address
  at /home/jiaming/slither_fp_files/out5843.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterfaceReferencer':
    |
    |    /// @dev God's address
  > |    address public god;
    |
    |    /// @dev Only God can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterfaceReferencer':
    |
    |    /// @dev God can pause the game
  > |    function godPause() public onlyGod
    |    {
    |        isPaused = true;
  at /home/jiaming/slither_fp_files/out5843.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterfaceReferencer':
    |
    |    /// @dev God can unpause the game
  > |    function godUnpause() public onlyGod
    |    {
    |        isPaused = false;
  at /home/jiaming/slither_fp_files/out5843.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthResourcesInterfaceReferencer':
    |contract KingOfEthResourcesInterfaceReferencer is GodMode {
    |    /// @dev The interface contract's address
  > |    address public interfaceContract;
    |
    |    /// @dev Only the interface contract can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(1160)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResourcesInterfaceReferencer':
    |    function godChangeGod(address _newGod) public onlyGod
    |    {
  > |        god = _newGod;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResourcesInterfaceReferencer':
    |    function godPause() public onlyGod
    |    {
  > |        isPaused = true;
    |
    |        emit GodPaused();
  at /home/jiaming/slither_fp_files/out5843.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResourcesInterfaceReferencer':
    |    function godUnpause() public onlyGod
    |    {
  > |        isPaused = false;
    |
    |        emit GodUnpaused();
  at /home/jiaming/slither_fp_files/out5843.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthResourcesInterfaceReferencer':
    |        onlyGod
    |    {
  > |        interfaceContract = _interfaceContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(1175)

[33mWarning[0m for DAO in contract 'KingOfEthRoadRealty':
    |
    |        // Pay the taxes
  > |        KingOfEthAbstractInterface(kingOfEthContract).payTaxes.value(taxCut)();
    |
    |        KingOfEthRoadsAbstractInterface _roadsContract = KingOfEthRoadsAbstractInterface(roadsContract);
  at /home/jiaming/slither_fp_files/out5843.sol(2412)

[33mWarning[0m for DAOConstantGas in contract 'KingOfEthRoadRealty':
    |
    |        // Send the previous owner his share
  > |        _oldOwner.transfer(msg.value - taxCut);
    |
    |        emit RoadSold(
  at /home/jiaming/slither_fp_files/out5843.sol(2429)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoadRealty':
    |    /// @dev God can change the address of God
    |    /// @param _newGod The new address for God
  > |    function godChangeGod(address _newGod) public onlyGod
    |    {
    |        god = _newGod;
  at /home/jiaming/slither_fp_files/out5843.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoadRealty':
    |    /// @dev God can change the king contract
    |    /// @param _kingOfEthContract The new address
  > |    function godSetKingOfEthContract(address _kingOfEthContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(279)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoadRealty':
    |    /// @dev God can set the realty contract
    |    /// @param _roadsContract The new address
  > |    function godSetRoadsContract(address _roadsContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(1011)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoadRealty':
    |    /// @param _y The y coordinate of the road
    |    /// @param _direction The direction of the road
  > |    function roadsCancelRoadSale(uint _x, uint _y, uint8 _direction)
    |        public
    |        onlyRoadsContract
  at /home/jiaming/slither_fp_files/out5843.sol(2326)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoadRealty':
    |    /// @param _askingPrice The price that must be payed by another player
    |    ///  to purchase the road
  > |    function startRoadSale(
    |          uint _x
    |        , uint _y
  at /home/jiaming/slither_fp_files/out5843.sol(2346)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoadRealty':
    |    /// @param _askingPrice The new price that must be payed by another
    |    ///  player to purchase the road
  > |    function changeRoadPrice(
    |          uint _x
    |        , uint _y
  at /home/jiaming/slither_fp_files/out5843.sol(2372)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoadRealty':
    |    /// @param _y The y coordinate of the road
    |    /// @param _direction The direction of the road
  > |    function purchaseRoad(uint _x, uint _y, uint8 _direction)
    |        public
    |        payable
  at /home/jiaming/slither_fp_files/out5843.sol(2396)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoadRealty':
    |    /// @param _y The y coordinate of the road
    |    /// @param _direction The direction of the road
  > |    function cancelRoadSale(uint _x, uint _y, uint8 _direction)
    |        public
    |        notPaused
  at /home/jiaming/slither_fp_files/out5843.sol(2445)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoadRealty':
    |contract GodMode {
    |    /// @dev Is the contract paused?
  > |    bool public isPaused;
    |
    |    /// @dev God's address
  at /home/jiaming/slither_fp_files/out5843.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoadRealty':
    |
    |    /// @dev God's address
  > |    address public god;
    |
    |    /// @dev Only God can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoadRealty':
    |
    |    /// @dev God can pause the game
  > |    function godPause() public onlyGod
    |    {
    |        isPaused = true;
  at /home/jiaming/slither_fp_files/out5843.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoadRealty':
    |
    |    /// @dev God can unpause the game
  > |    function godUnpause() public onlyGod
    |    {
    |        isPaused = false;
  at /home/jiaming/slither_fp_files/out5843.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoadRealty':
    |contract KingOfEthReferencer is GodMode {
    |    /// @dev The address of the king contract
  > |    address public kingOfEthContract;
    |
    |    /// @dev Only the king contract can run this
  at /home/jiaming/slither_fp_files/out5843.sol(268)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoadRealty':
    |contract KingOfEthRoadsReferencer is GodMode {
    |    /// @dev The roads contract's address
  > |    address public roadsContract;
    |
    |    /// @dev Only the roads contract can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(1000)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoadRealty':
    |    /// @dev The number that divides the amount payed for any sale to produce
    |    ///  the amount payed in taxes
  > |    uint public constant taxDivisor = 25;
    |
    |    /// @dev Mapping from the x, y coordinates and the direction (0 for right and
  at /home/jiaming/slither_fp_files/out5843.sol(2242)

[31mViolation[0m for TODReceiver in contract 'KingOfEthRoadRealty':
    |
    |        // Pay the taxes
  > |        KingOfEthAbstractInterface(kingOfEthContract).payTaxes.value(taxCut)();
    |
    |        KingOfEthRoadsAbstractInterface _roadsContract = KingOfEthRoadsAbstractInterface(roadsContract);
  at /home/jiaming/slither_fp_files/out5843.sol(2412)

[33mWarning[0m for TODReceiver in contract 'KingOfEthRoadRealty':
    |
    |        // Send the previous owner his share
  > |        _oldOwner.transfer(msg.value - taxCut);
    |
    |        emit RoadSold(
  at /home/jiaming/slither_fp_files/out5843.sol(2429)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoadRealty':
    |    modifier onlyRoadOwner(uint _x, uint _y, uint8 _direction)
    |    {
  > |        require(KingOfEthRoadsAbstractInterface(roadsContract).ownerOf(_x, _y, _direction) == msg.sender);
    |        _;
    |    }
  at /home/jiaming/slither_fp_files/out5843.sol(2289)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoadRealty':
    |
    |        // Pay the taxes
  > |        KingOfEthAbstractInterface(kingOfEthContract).payTaxes.value(taxCut)();
    |
    |        KingOfEthRoadsAbstractInterface _roadsContract = KingOfEthRoadsAbstractInterface(roadsContract);
  at /home/jiaming/slither_fp_files/out5843.sol(2412)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoadRealty':
    |
    |        // Determine the previous owner
  > |        address _oldOwner = _roadsContract.ownerOf(_x, _y, _direction);
    |
    |        // Send the buyer the house
  at /home/jiaming/slither_fp_files/out5843.sol(2417)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoadRealty':
    |
    |        // Send the buyer the house
  > |        _roadsContract.roadRealtyTransferOwnership(
    |              _x
    |            , _y
  at /home/jiaming/slither_fp_files/out5843.sol(2420)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoadRealty':
    |
    |        // Send the previous owner his share
  > |        _oldOwner.transfer(msg.value - taxCut);
    |
    |        emit RoadSold(
  at /home/jiaming/slither_fp_files/out5843.sol(2429)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoadRealty':
    |    modifier onlyRoadOwner(uint _x, uint _y, uint8 _direction)
    |    {
  > |        require(KingOfEthRoadsAbstractInterface(roadsContract).ownerOf(_x, _y, _direction) == msg.sender);
    |        _;
    |    }
  at /home/jiaming/slither_fp_files/out5843.sol(2289)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoadRealty':
    |
    |        // Determine the previous owner
  > |        address _oldOwner = _roadsContract.ownerOf(_x, _y, _direction);
    |
    |        // Send the buyer the house
  at /home/jiaming/slither_fp_files/out5843.sol(2417)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoadRealty':
    |
    |        // Send the buyer the house
  > |        _roadsContract.roadRealtyTransferOwnership(
    |              _x
    |            , _y
  at /home/jiaming/slither_fp_files/out5843.sol(2420)

[31mViolation[0m for UnrestrictedWrite in contract 'KingOfEthRoadRealty':
    |
    |        // End the sale
  > |        roadPrices[_x][_y][_direction] = 0;
    |
    |        // Calculate the taxes to be paid
  at /home/jiaming/slither_fp_files/out5843.sol(2406)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoadRealty':
    |    function godChangeGod(address _newGod) public onlyGod
    |    {
  > |        god = _newGod;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoadRealty':
    |    function godPause() public onlyGod
    |    {
  > |        isPaused = true;
    |
    |        emit GodPaused();
  at /home/jiaming/slither_fp_files/out5843.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoadRealty':
    |    function godUnpause() public onlyGod
    |    {
  > |        isPaused = false;
    |
    |        emit GodUnpaused();
  at /home/jiaming/slither_fp_files/out5843.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoadRealty':
    |        onlyGod
    |    {
  > |        kingOfEthContract = _kingOfEthContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoadRealty':
    |        onlyGod
    |    {
  > |        roadsContract = _roadsContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(1015)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoadRealty':
    |        {
    |            // Cancel the sale
  > |            roadPrices[_x][_y][_direction] = 0;
    |
    |            emit RoadSaleCancelled(_x, _y, _direction, msg.sender);
  at /home/jiaming/slither_fp_files/out5843.sol(2334)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoadRealty':
    |
    |        // Record the price
  > |        roadPrices[_x][_y][_direction] = _askingPrice;
    |
    |        emit RoadForSale(_x, _y, _direction, msg.sender, _askingPrice);
  at /home/jiaming/slither_fp_files/out5843.sol(2361)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoadRealty':
    |
    |        // Record the price
  > |        roadPrices[_x][_y][_direction] = _askingPrice;
    |
    |        emit RoadPriceChanged(_x, _y, _direction, _askingPrice);
  at /home/jiaming/slither_fp_files/out5843.sol(2387)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoadRealty':
    |    {
    |        // Cancel the sale
  > |        roadPrices[_x][_y][_direction] = 0;
    |
    |        emit RoadSaleCancelled(_x, _y, _direction, msg.sender);
  at /home/jiaming/slither_fp_files/out5843.sol(2452)

[33mWarning[0m for LockedEther in contract 'KingOfEthRoadRealtyReferencer':
    |/// @author Anthony Burzillo <[email protected]>
    |/// @dev Provides functionality to reference the road realty contract
  > |contract KingOfEthRoadRealtyReferencer is GodMode {
    |    /// @dev The realty contract's address
    |    address public roadRealtyContract;
  at /home/jiaming/slither_fp_files/out5843.sol(2477)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoadRealtyReferencer':
    |    /// @dev God can change the address of God
    |    /// @param _newGod The new address for God
  > |    function godChangeGod(address _newGod) public onlyGod
    |    {
    |        god = _newGod;
  at /home/jiaming/slither_fp_files/out5843.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoadRealtyReferencer':
    |    /// @dev God can set the road realty contract
    |    /// @param _roadRealtyContract The new address
  > |    function godSetRoadRealtyContract(address _roadRealtyContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(2490)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoadRealtyReferencer':
    |contract GodMode {
    |    /// @dev Is the contract paused?
  > |    bool public isPaused;
    |
    |    /// @dev God's address
  at /home/jiaming/slither_fp_files/out5843.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoadRealtyReferencer':
    |
    |    /// @dev God's address
  > |    address public god;
    |
    |    /// @dev Only God can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoadRealtyReferencer':
    |
    |    /// @dev God can pause the game
  > |    function godPause() public onlyGod
    |    {
    |        isPaused = true;
  at /home/jiaming/slither_fp_files/out5843.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoadRealtyReferencer':
    |
    |    /// @dev God can unpause the game
  > |    function godUnpause() public onlyGod
    |    {
    |        isPaused = false;
  at /home/jiaming/slither_fp_files/out5843.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoadRealtyReferencer':
    |contract KingOfEthRoadRealtyReferencer is GodMode {
    |    /// @dev The realty contract's address
  > |    address public roadRealtyContract;
    |
    |    /// @dev Only the road realty contract can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(2479)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoadRealtyReferencer':
    |    function godChangeGod(address _newGod) public onlyGod
    |    {
  > |        god = _newGod;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoadRealtyReferencer':
    |    function godPause() public onlyGod
    |    {
  > |        isPaused = true;
    |
    |        emit GodPaused();
  at /home/jiaming/slither_fp_files/out5843.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoadRealtyReferencer':
    |    function godUnpause() public onlyGod
    |    {
  > |        isPaused = false;
    |
    |        emit GodUnpaused();
  at /home/jiaming/slither_fp_files/out5843.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoadRealtyReferencer':
    |        onlyGod
    |    {
  > |        roadRealtyContract = _roadRealtyContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(2494)

[33mWarning[0m for DAO in contract 'KingOfEthRoads':
    |        // starting location, the road below it, the road to the
    |        // left of it, or the road above it
  > |        address _houseOwner = _housesContract.ownerOf(_x, _y);
    |        require(_houseOwner == msg.sender || (0x0 == _houseOwner && (
    |               owners[_x][_y][1] == msg.sender
  at /home/jiaming/slither_fp_files/out5843.sol(2632)

[33mWarning[0m for DAO in contract 'KingOfEthRoads':
    |            // that it is owned by the player
    |            require(
  > |                   _housesContract.ownerOf(_x + _i, _y) == 0x0
    |                || _housesContract.ownerOf(_x + _i, _y) == msg.sender
    |            );
  at /home/jiaming/slither_fp_files/out5843.sol(2650)

[33mWarning[0m for DAO in contract 'KingOfEthRoads':
    |            require(
    |                   _housesContract.ownerOf(_x + _i, _y) == 0x0
  > |                || _housesContract.ownerOf(_x + _i, _y) == msg.sender
    |            );
    |
  at /home/jiaming/slither_fp_files/out5843.sol(2651)

[33mWarning[0m for DAO in contract 'KingOfEthRoads':
    |        // starting location, the road to the right of it, the road to
    |        // the left of it, or the road above it
  > |        address _houseOwner = _housesContract.ownerOf(_x, _y);
    |        require(_houseOwner == msg.sender || (0x0 == _houseOwner && (
    |               owners[_x][_y][0] == msg.sender
  at /home/jiaming/slither_fp_files/out5843.sol(2673)

[33mWarning[0m for DAO in contract 'KingOfEthRoads':
    |            // that it is owned by the player
    |            require(
  > |                   _housesContract.ownerOf(_x, _y + _i) == 0x0
    |                || _housesContract.ownerOf(_x, _y + _i) == msg.sender
    |            );
  at /home/jiaming/slither_fp_files/out5843.sol(2691)

[33mWarning[0m for DAO in contract 'KingOfEthRoads':
    |            require(
    |                   _housesContract.ownerOf(_x, _y + _i) == 0x0
  > |                || _housesContract.ownerOf(_x, _y + _i) == msg.sender
    |            );
    |
  at /home/jiaming/slither_fp_files/out5843.sol(2692)

[33mWarning[0m for DAO in contract 'KingOfEthRoads':
    |        // starting location, the road to the right of it, the road
    |        // below it, or the road above it
  > |        address _houseOwner = _housesContract.ownerOf(_x, _y);
    |        require(_houseOwner == msg.sender || (0x0 == _houseOwner && (
    |               owners[_x][_y][0] == msg.sender
  at /home/jiaming/slither_fp_files/out5843.sol(2714)

[33mWarning[0m for DAO in contract 'KingOfEthRoads':
    |            // that it is owned by the player
    |            require(
  > |                   _housesContract.ownerOf(_x - _i, _y) == 0x0
    |                || _housesContract.ownerOf(_x - _i, _y) == msg.sender
    |            );
  at /home/jiaming/slither_fp_files/out5843.sol(2732)

[33mWarning[0m for DAO in contract 'KingOfEthRoads':
    |            require(
    |                   _housesContract.ownerOf(_x - _i, _y) == 0x0
  > |                || _housesContract.ownerOf(_x - _i, _y) == msg.sender
    |            );
    |
  at /home/jiaming/slither_fp_files/out5843.sol(2733)

[33mWarning[0m for DAO in contract 'KingOfEthRoads':
    |        // starting location, the road to the right of it, the road
    |        // below it, or the road to the left of it
  > |        address _houseOwner = _housesContract.ownerOf(_x, _y);
    |        require(_houseOwner == msg.sender || (0x0 == _houseOwner && (
    |               owners[_x][_y][0] == msg.sender
  at /home/jiaming/slither_fp_files/out5843.sol(2755)

[33mWarning[0m for DAO in contract 'KingOfEthRoads':
    |            // that it is owned by the player
    |            require(
  > |                   _housesContract.ownerOf(_x, _y - _i) == 0x0
    |                || _housesContract.ownerOf(_x, _y - _i) == msg.sender
    |            );
  at /home/jiaming/slither_fp_files/out5843.sol(2773)

[33mWarning[0m for DAO in contract 'KingOfEthRoads':
    |            require(
    |                   _housesContract.ownerOf(_x, _y - _i) == 0x0
  > |                || _housesContract.ownerOf(_x, _y - _i) == msg.sender
    |            );
    |
  at /home/jiaming/slither_fp_files/out5843.sol(2774)

[33mWarning[0m for DAO in contract 'KingOfEthRoads':
    |
    |        // Pay taxes
  > |        KingOfEthAbstractInterface(kingOfEthContract).payTaxes.value(msg.value)();
    |
    |        emit NewRoads(msg.sender, _x, _y, _direction, _length);
  at /home/jiaming/slither_fp_files/out5843.sol(2895)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |    /// @dev God can change the address of God
    |    /// @param _newGod The new address for God
  > |    function godChangeGod(address _newGod) public onlyGod
    |    {
    |        god = _newGod;
  at /home/jiaming/slither_fp_files/out5843.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |    /// @dev God can change the king contract
    |    /// @param _kingOfEthContract The new address
  > |    function godSetKingOfEthContract(address _kingOfEthContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(279)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |    /// @dev God can change the board contract
    |    /// @param _boardContract The new address
  > |    function godSetBoardContract(address _boardContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(579)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |    /// @dev God can set the realty contract
    |    /// @param _housesContract The new address
  > |    function godSetHousesContract(address _housesContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(669)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |    /// @dev God can set the realty contract
    |    /// @param _interfaceContract The new address
  > |    function godSetInterfaceContract(address _interfaceContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(1171)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |    /// @dev God can set the road realty contract
    |    /// @param _roadRealtyContract The new address
  > |    function godSetRoadRealtyContract(address _roadRealtyContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(2490)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |    ///  0 for right or 1 for down)
    |    /// @return The address of the owner
  > |    function ownerOf(uint _x, uint _y, uint8 _direction)
    |        public
    |        view
  at /home/jiaming/slither_fp_files/out5843.sol(2589)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |    /// @param _player The player's address
    |    /// @return The number of roads
  > |    function numberOfRoads(address _player) public view returns(uint)
    |    {
    |        return roadCounts[_player];
  at /home/jiaming/slither_fp_files/out5843.sol(2603)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |    /// @dev God can change the road cost
    |    /// @param _newRoadCost The new cost of a road
  > |    function godChangeRoadCost(uint _newRoadCost)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(2784)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |    /// @param _from The previous owner of road
    |    /// @param _to The new owner of road
  > |    function roadRealtyTransferOwnership(
    |          uint _x
    |        , uint _y
  at /home/jiaming/slither_fp_files/out5843.sol(2797)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |    /// @param _direction The direction of the road
    |    /// @param _to The recipient of the road
  > |    function sendRoad(uint _x, uint _y, uint8 _direction, address _to)
    |        public
    |        onlyRoadOwner(_x, _y, _direction)
  at /home/jiaming/slither_fp_files/out5843.sol(2905)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |contract GodMode {
    |    /// @dev Is the contract paused?
  > |    bool public isPaused;
    |
    |    /// @dev God's address
  at /home/jiaming/slither_fp_files/out5843.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |
    |    /// @dev God's address
  > |    address public god;
    |
    |    /// @dev Only God can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |
    |    /// @dev God can pause the game
  > |    function godPause() public onlyGod
    |    {
    |        isPaused = true;
  at /home/jiaming/slither_fp_files/out5843.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |
    |    /// @dev God can unpause the game
  > |    function godUnpause() public onlyGod
    |    {
    |        isPaused = false;
  at /home/jiaming/slither_fp_files/out5843.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |contract KingOfEthReferencer is GodMode {
    |    /// @dev The address of the king contract
  > |    address public kingOfEthContract;
    |
    |    /// @dev Only the king contract can run this
  at /home/jiaming/slither_fp_files/out5843.sol(268)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |contract KingOfEthBoardReferencer is GodMode {
    |    /// @dev The address of the board contract
  > |    address public boardContract;
    |
    |    /// @dev Only the board contract can run this
  at /home/jiaming/slither_fp_files/out5843.sol(568)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |contract KingOfEthHousesReferencer is GodMode {
    |    /// @dev The houses contract's address
  > |    address public housesContract;
    |
    |    /// @dev Only the houses contract can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(658)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |contract KingOfEthResourcesInterfaceReferencer is GodMode {
    |    /// @dev The interface contract's address
  > |    address public interfaceContract;
    |
    |    /// @dev Only the interface contract can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(1160)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |contract KingOfEthRoadRealtyReferencer is GodMode {
    |    /// @dev The realty contract's address
  > |    address public roadRealtyContract;
    |
    |    /// @dev Only the road realty contract can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(2479)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |{
    |    /// @dev ETH cost to build a road
  > |    uint public roadCost = 0.0002 ether;
    |
    |    /// @dev Mapping from the x, y, direction coordinate of the location to its owner
  at /home/jiaming/slither_fp_files/out5843.sol(2538)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |    /// @param _y The y coordinate of the starting point of the first road
    |    /// @param _length The length to build
  > |    function buildRight(uint _x, uint _y, uint _length) private
    |    {
    |        // Require that nobody currently owns the road
  at /home/jiaming/slither_fp_files/out5843.sol(2622)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |    /// @param _y The y coordinate of the starting point of the first road
    |    /// @param _length The length to build
  > |    function buildDown(uint _x, uint _y, uint _length) private
    |    {
    |        // Require that nobody currently owns the road
  at /home/jiaming/slither_fp_files/out5843.sol(2663)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |    /// @param _y The y coordinate of the starting point of the first road
    |    /// @param _length The length to build
  > |    function buildLeft(uint _x, uint _y, uint _length) private
    |    {
    |        // Require that nobody currently owns the road
  at /home/jiaming/slither_fp_files/out5843.sol(2704)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoads':
    |    /// @param _y The y coordinate of the starting point of the first road
    |    /// @param _length The length to build
  > |    function buildUp(uint _x, uint _y, uint _length) private
    |    {
    |        // Require that nobody currently owns the road
  at /home/jiaming/slither_fp_files/out5843.sol(2745)

[31mViolation[0m for TODReceiver in contract 'KingOfEthRoads':
    |
    |        // Pay taxes
  > |        KingOfEthAbstractInterface(kingOfEthContract).payTaxes.value(msg.value)();
    |
    |        emit NewRoads(msg.sender, _x, _y, _direction, _length);
  at /home/jiaming/slither_fp_files/out5843.sol(2895)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |        // starting location, the road below it, the road to the
    |        // left of it, or the road above it
  > |        address _houseOwner = _housesContract.ownerOf(_x, _y);
    |        require(_houseOwner == msg.sender || (0x0 == _houseOwner && (
    |               owners[_x][_y][1] == msg.sender
  at /home/jiaming/slither_fp_files/out5843.sol(2632)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |            // that it is owned by the player
    |            require(
  > |                   _housesContract.ownerOf(_x + _i, _y) == 0x0
    |                || _housesContract.ownerOf(_x + _i, _y) == msg.sender
    |            );
  at /home/jiaming/slither_fp_files/out5843.sol(2650)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |            require(
    |                   _housesContract.ownerOf(_x + _i, _y) == 0x0
  > |                || _housesContract.ownerOf(_x + _i, _y) == msg.sender
    |            );
    |
  at /home/jiaming/slither_fp_files/out5843.sol(2651)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |        // starting location, the road to the right of it, the road to
    |        // the left of it, or the road above it
  > |        address _houseOwner = _housesContract.ownerOf(_x, _y);
    |        require(_houseOwner == msg.sender || (0x0 == _houseOwner && (
    |               owners[_x][_y][0] == msg.sender
  at /home/jiaming/slither_fp_files/out5843.sol(2673)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |            // that it is owned by the player
    |            require(
  > |                   _housesContract.ownerOf(_x, _y + _i) == 0x0
    |                || _housesContract.ownerOf(_x, _y + _i) == msg.sender
    |            );
  at /home/jiaming/slither_fp_files/out5843.sol(2691)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |            require(
    |                   _housesContract.ownerOf(_x, _y + _i) == 0x0
  > |                || _housesContract.ownerOf(_x, _y + _i) == msg.sender
    |            );
    |
  at /home/jiaming/slither_fp_files/out5843.sol(2692)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |        // starting location, the road to the right of it, the road
    |        // below it, or the road above it
  > |        address _houseOwner = _housesContract.ownerOf(_x, _y);
    |        require(_houseOwner == msg.sender || (0x0 == _houseOwner && (
    |               owners[_x][_y][0] == msg.sender
  at /home/jiaming/slither_fp_files/out5843.sol(2714)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |            // that it is owned by the player
    |            require(
  > |                   _housesContract.ownerOf(_x - _i, _y) == 0x0
    |                || _housesContract.ownerOf(_x - _i, _y) == msg.sender
    |            );
  at /home/jiaming/slither_fp_files/out5843.sol(2732)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |            require(
    |                   _housesContract.ownerOf(_x - _i, _y) == 0x0
  > |                || _housesContract.ownerOf(_x - _i, _y) == msg.sender
    |            );
    |
  at /home/jiaming/slither_fp_files/out5843.sol(2733)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |        // starting location, the road to the right of it, the road
    |        // below it, or the road to the left of it
  > |        address _houseOwner = _housesContract.ownerOf(_x, _y);
    |        require(_houseOwner == msg.sender || (0x0 == _houseOwner && (
    |               owners[_x][_y][0] == msg.sender
  at /home/jiaming/slither_fp_files/out5843.sol(2755)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |            // that it is owned by the player
    |            require(
  > |                   _housesContract.ownerOf(_x, _y - _i) == 0x0
    |                || _housesContract.ownerOf(_x, _y - _i) == msg.sender
    |            );
  at /home/jiaming/slither_fp_files/out5843.sol(2773)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |            require(
    |                   _housesContract.ownerOf(_x, _y - _i) == 0x0
  > |                || _housesContract.ownerOf(_x, _y - _i) == msg.sender
    |            );
    |
  at /home/jiaming/slither_fp_files/out5843.sol(2774)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |
    |        // Require that the start is within bounds
  > |        require(_boardContract.boundX1() <= _x);
    |        require(_boardContract.boundY1() <= _y);
    |        require(_boardContract.boundX2() > _x);
  at /home/jiaming/slither_fp_files/out5843.sol(2842)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |        // Require that the start is within bounds
    |        require(_boardContract.boundX1() <= _x);
  > |        require(_boardContract.boundY1() <= _y);
    |        require(_boardContract.boundX2() > _x);
    |        require(_boardContract.boundY2() > _y);
  at /home/jiaming/slither_fp_files/out5843.sol(2843)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |        require(_boardContract.boundX1() <= _x);
    |        require(_boardContract.boundY1() <= _y);
  > |        require(_boardContract.boundX2() > _x);
    |        require(_boardContract.boundY2() > _y);
    |
  at /home/jiaming/slither_fp_files/out5843.sol(2844)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |        require(_boardContract.boundY1() <= _y);
    |        require(_boardContract.boundX2() > _x);
  > |        require(_boardContract.boundY2() > _y);
    |
    |        // Burn the resource costs for each road
  at /home/jiaming/slither_fp_files/out5843.sol(2845)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |
    |        // Burn the resource costs for each road
  > |        KingOfEthResourcesInterface(interfaceContract).burnRoadCosts(
    |              _length
    |            , msg.sender
  at /home/jiaming/slither_fp_files/out5843.sol(2848)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |        {
    |            // Require that the roads will be in bounds
  > |            require(_boardContract.boundX2() > _x + _length);
    |
    |            buildRight(_x, _y, _length);
  at /home/jiaming/slither_fp_files/out5843.sol(2857)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |        {
    |            // Require that the roads will be in bounds
  > |            require(_boardContract.boundY2() > _y + _length);
    |
    |            buildDown(_x, _y, _length);
  at /home/jiaming/slither_fp_files/out5843.sol(2865)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |        {
    |            // Require that the roads will be in bounds
  > |            require(_boardContract.boundX1() < _x - _length - 1);
    |
    |            buildLeft(_x, _y, _length);
  at /home/jiaming/slither_fp_files/out5843.sol(2873)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |        {
    |            // Require that the roads will be in bounds
  > |            require(_boardContract.boundY1() < _y - _length - 1);
    |
    |            buildUp(_x, _y, _length);
  at /home/jiaming/slither_fp_files/out5843.sol(2881)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |
    |        // Pay taxes
  > |        KingOfEthAbstractInterface(kingOfEthContract).payTaxes.value(msg.value)();
    |
    |        emit NewRoads(msg.sender, _x, _y, _direction, _length);
  at /home/jiaming/slither_fp_files/out5843.sol(2895)

[33mWarning[0m for UnhandledException in contract 'KingOfEthRoads':
    |
    |        // Cancel any sales that exist
  > |        KingOfEthRoadRealty(roadRealtyContract).roadsCancelRoadSale(
    |              _x
    |            , _y
  at /home/jiaming/slither_fp_files/out5843.sol(2917)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoads':
    |        // starting location, the road below it, the road to the
    |        // left of it, or the road above it
  > |        address _houseOwner = _housesContract.ownerOf(_x, _y);
    |        require(_houseOwner == msg.sender || (0x0 == _houseOwner && (
    |               owners[_x][_y][1] == msg.sender
  at /home/jiaming/slither_fp_files/out5843.sol(2632)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoads':
    |            // that it is owned by the player
    |            require(
  > |                   _housesContract.ownerOf(_x + _i, _y) == 0x0
    |                || _housesContract.ownerOf(_x + _i, _y) == msg.sender
    |            );
  at /home/jiaming/slither_fp_files/out5843.sol(2650)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoads':
    |            require(
    |                   _housesContract.ownerOf(_x + _i, _y) == 0x0
  > |                || _housesContract.ownerOf(_x + _i, _y) == msg.sender
    |            );
    |
  at /home/jiaming/slither_fp_files/out5843.sol(2651)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoads':
    |        // starting location, the road to the right of it, the road to
    |        // the left of it, or the road above it
  > |        address _houseOwner = _housesContract.ownerOf(_x, _y);
    |        require(_houseOwner == msg.sender || (0x0 == _houseOwner && (
    |               owners[_x][_y][0] == msg.sender
  at /home/jiaming/slither_fp_files/out5843.sol(2673)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoads':
    |            // that it is owned by the player
    |            require(
  > |                   _housesContract.ownerOf(_x, _y + _i) == 0x0
    |                || _housesContract.ownerOf(_x, _y + _i) == msg.sender
    |            );
  at /home/jiaming/slither_fp_files/out5843.sol(2691)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoads':
    |            require(
    |                   _housesContract.ownerOf(_x, _y + _i) == 0x0
  > |                || _housesContract.ownerOf(_x, _y + _i) == msg.sender
    |            );
    |
  at /home/jiaming/slither_fp_files/out5843.sol(2692)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoads':
    |        // starting location, the road to the right of it, the road
    |        // below it, or the road above it
  > |        address _houseOwner = _housesContract.ownerOf(_x, _y);
    |        require(_houseOwner == msg.sender || (0x0 == _houseOwner && (
    |               owners[_x][_y][0] == msg.sender
  at /home/jiaming/slither_fp_files/out5843.sol(2714)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoads':
    |            // that it is owned by the player
    |            require(
  > |                   _housesContract.ownerOf(_x - _i, _y) == 0x0
    |                || _housesContract.ownerOf(_x - _i, _y) == msg.sender
    |            );
  at /home/jiaming/slither_fp_files/out5843.sol(2732)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoads':
    |            require(
    |                   _housesContract.ownerOf(_x - _i, _y) == 0x0
  > |                || _housesContract.ownerOf(_x - _i, _y) == msg.sender
    |            );
    |
  at /home/jiaming/slither_fp_files/out5843.sol(2733)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoads':
    |        // starting location, the road to the right of it, the road
    |        // below it, or the road to the left of it
  > |        address _houseOwner = _housesContract.ownerOf(_x, _y);
    |        require(_houseOwner == msg.sender || (0x0 == _houseOwner && (
    |               owners[_x][_y][0] == msg.sender
  at /home/jiaming/slither_fp_files/out5843.sol(2755)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoads':
    |            // that it is owned by the player
    |            require(
  > |                   _housesContract.ownerOf(_x, _y - _i) == 0x0
    |                || _housesContract.ownerOf(_x, _y - _i) == msg.sender
    |            );
  at /home/jiaming/slither_fp_files/out5843.sol(2773)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoads':
    |            require(
    |                   _housesContract.ownerOf(_x, _y - _i) == 0x0
  > |                || _housesContract.ownerOf(_x, _y - _i) == msg.sender
    |            );
    |
  at /home/jiaming/slither_fp_files/out5843.sol(2774)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoads':
    |
    |        // Require that the start is within bounds
  > |        require(_boardContract.boundX1() <= _x);
    |        require(_boardContract.boundY1() <= _y);
    |        require(_boardContract.boundX2() > _x);
  at /home/jiaming/slither_fp_files/out5843.sol(2842)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoads':
    |        // Require that the start is within bounds
    |        require(_boardContract.boundX1() <= _x);
  > |        require(_boardContract.boundY1() <= _y);
    |        require(_boardContract.boundX2() > _x);
    |        require(_boardContract.boundY2() > _y);
  at /home/jiaming/slither_fp_files/out5843.sol(2843)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoads':
    |        require(_boardContract.boundX1() <= _x);
    |        require(_boardContract.boundY1() <= _y);
  > |        require(_boardContract.boundX2() > _x);
    |        require(_boardContract.boundY2() > _y);
    |
  at /home/jiaming/slither_fp_files/out5843.sol(2844)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoads':
    |        require(_boardContract.boundY1() <= _y);
    |        require(_boardContract.boundX2() > _x);
  > |        require(_boardContract.boundY2() > _y);
    |
    |        // Burn the resource costs for each road
  at /home/jiaming/slither_fp_files/out5843.sol(2845)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoads':
    |
    |        // Burn the resource costs for each road
  > |        KingOfEthResourcesInterface(interfaceContract).burnRoadCosts(
    |              _length
    |            , msg.sender
  at /home/jiaming/slither_fp_files/out5843.sol(2848)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoads':
    |        {
    |            // Require that the roads will be in bounds
  > |            require(_boardContract.boundX2() > _x + _length);
    |
    |            buildRight(_x, _y, _length);
  at /home/jiaming/slither_fp_files/out5843.sol(2857)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoads':
    |        {
    |            // Require that the roads will be in bounds
  > |            require(_boardContract.boundY2() > _y + _length);
    |
    |            buildDown(_x, _y, _length);
  at /home/jiaming/slither_fp_files/out5843.sol(2865)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoads':
    |        {
    |            // Require that the roads will be in bounds
  > |            require(_boardContract.boundX1() < _x - _length - 1);
    |
    |            buildLeft(_x, _y, _length);
  at /home/jiaming/slither_fp_files/out5843.sol(2873)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoads':
    |        {
    |            // Require that the roads will be in bounds
  > |            require(_boardContract.boundY1() < _y - _length - 1);
    |
    |            buildUp(_x, _y, _length);
  at /home/jiaming/slither_fp_files/out5843.sol(2881)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KingOfEthRoads':
    |
    |        // Cancel any sales that exist
  > |        KingOfEthRoadRealty(roadRealtyContract).roadsCancelRoadSale(
    |              _x
    |            , _y
  at /home/jiaming/slither_fp_files/out5843.sol(2917)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoads':
    |
    |        // Set the new owner
  > |        owners[_x][_y][0] = msg.sender;
    |
    |        for(uint _i = 1; _i < _length; ++_i)
  at /home/jiaming/slither_fp_files/out5843.sol(2640)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoads':
    |
    |        // Set the new owner
  > |        owners[_x][_y][1] = msg.sender;
    |
    |        for(uint _i = 1; _i < _length; ++_i)
  at /home/jiaming/slither_fp_files/out5843.sol(2681)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoads':
    |
    |        // Set the new owner
  > |        owners[_x - 1][_y][0] = msg.sender;
    |
    |        for(uint _i = 1; _i < _length; ++_i)
  at /home/jiaming/slither_fp_files/out5843.sol(2722)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoads':
    |
    |        // Set the new owner
  > |        owners[_x][_y - 1][1] = msg.sender;
    |
    |        for(uint _i = 1; _i < _length; ++_i)
  at /home/jiaming/slither_fp_files/out5843.sol(2763)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoads':
    |
    |        // Update the number of roads of the player
  > |        roadCounts[msg.sender] += _length;
    |
    |        // Pay taxes
  at /home/jiaming/slither_fp_files/out5843.sol(2892)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoads':
    |
    |        // Update road counts
  > |        --roadCounts[msg.sender];
    |        ++roadCounts[_to];
    |
  at /home/jiaming/slither_fp_files/out5843.sol(2913)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoads':
    |    function godChangeGod(address _newGod) public onlyGod
    |    {
  > |        god = _newGod;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoads':
    |    function godPause() public onlyGod
    |    {
  > |        isPaused = true;
    |
    |        emit GodPaused();
  at /home/jiaming/slither_fp_files/out5843.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoads':
    |    function godUnpause() public onlyGod
    |    {
  > |        isPaused = false;
    |
    |        emit GodUnpaused();
  at /home/jiaming/slither_fp_files/out5843.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoads':
    |        onlyGod
    |    {
  > |        kingOfEthContract = _kingOfEthContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoads':
    |        onlyGod
    |    {
  > |        boardContract = _boardContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(583)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoads':
    |        onlyGod
    |    {
  > |        housesContract = _housesContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(673)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoads':
    |        onlyGod
    |    {
  > |        interfaceContract = _interfaceContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(1175)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoads':
    |        onlyGod
    |    {
  > |        roadRealtyContract = _roadRealtyContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(2494)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoads':
    |        onlyGod
    |    {
  > |        roadCost = _newRoadCost;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(2788)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoads':
    |
    |        // Set the new owner
  > |        owners[_x][_y][_direction] = _to;
    |
    |        // Update the road counts
  at /home/jiaming/slither_fp_files/out5843.sol(2811)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoads':
    |
    |        // Update the road counts
  > |        --roadCounts[_from];
    |        ++roadCounts[_to];
    |    }
  at /home/jiaming/slither_fp_files/out5843.sol(2814)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoads':
    |        // Update the road counts
    |        --roadCounts[_from];
  > |        ++roadCounts[_to];
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(2815)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoads':
    |    {
    |        // Set the new owner
  > |        owners[_x][_y][_direction] = _to;
    |
    |        // Update road counts
  at /home/jiaming/slither_fp_files/out5843.sol(2910)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoads':
    |        // Update road counts
    |        --roadCounts[msg.sender];
  > |        ++roadCounts[_to];
    |
    |        // Cancel any sales that exist
  at /home/jiaming/slither_fp_files/out5843.sol(2914)

[33mWarning[0m for LockedEther in contract 'KingOfEthRoadsReferencer':
    |/// @author Anthony Burzillo <[email protected]>
    |/// @dev Provides functionality to reference the roads contract
  > |contract KingOfEthRoadsReferencer is GodMode {
    |    /// @dev The roads contract's address
    |    address public roadsContract;
  at /home/jiaming/slither_fp_files/out5843.sol(998)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoadsReferencer':
    |    /// @dev God can change the address of God
    |    /// @param _newGod The new address for God
  > |    function godChangeGod(address _newGod) public onlyGod
    |    {
    |        god = _newGod;
  at /home/jiaming/slither_fp_files/out5843.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'KingOfEthRoadsReferencer':
    |    /// @dev God can set the realty contract
    |    /// @param _roadsContract The new address
  > |    function godSetRoadsContract(address _roadsContract)
    |        public
    |        onlyGod
  at /home/jiaming/slither_fp_files/out5843.sol(1011)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoadsReferencer':
    |contract GodMode {
    |    /// @dev Is the contract paused?
  > |    bool public isPaused;
    |
    |    /// @dev God's address
  at /home/jiaming/slither_fp_files/out5843.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoadsReferencer':
    |
    |    /// @dev God's address
  > |    address public god;
    |
    |    /// @dev Only God can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoadsReferencer':
    |
    |    /// @dev God can pause the game
  > |    function godPause() public onlyGod
    |    {
    |        isPaused = true;
  at /home/jiaming/slither_fp_files/out5843.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoadsReferencer':
    |
    |    /// @dev God can unpause the game
  > |    function godUnpause() public onlyGod
    |    {
    |        isPaused = false;
  at /home/jiaming/slither_fp_files/out5843.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'KingOfEthRoadsReferencer':
    |contract KingOfEthRoadsReferencer is GodMode {
    |    /// @dev The roads contract's address
  > |    address public roadsContract;
    |
    |    /// @dev Only the roads contract can run this function
  at /home/jiaming/slither_fp_files/out5843.sol(1000)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoadsReferencer':
    |    function godChangeGod(address _newGod) public onlyGod
    |    {
  > |        god = _newGod;
    |    }
    |
  at /home/jiaming/slither_fp_files/out5843.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoadsReferencer':
    |    function godPause() public onlyGod
    |    {
  > |        isPaused = true;
    |
    |        emit GodPaused();
  at /home/jiaming/slither_fp_files/out5843.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoadsReferencer':
    |    function godUnpause() public onlyGod
    |    {
  > |        isPaused = false;
    |
    |        emit GodUnpaused();
  at /home/jiaming/slither_fp_files/out5843.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'KingOfEthRoadsReferencer':
    |        onlyGod
    |    {
  > |        roadsContract = _roadsContract;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out5843.sol(1015)


