Processing contract: /home/jiaming/slither_fp_files/out13982.sol:BitGuildAccessAdmin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out13982.sol:BitGuildFeeProvider
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out13982.sol:BitGuildMarketplace
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out13982.sol:BitGuildToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out13982.sol:BitGuildWhitelist
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out13982.sol:ERC721
Processing contract: /home/jiaming/slither_fp_files/out13982.sol:ERC721TokenReceiver
Processing contract: /home/jiaming/slither_fp_files/out13982.sol:tokenRecipient
[31mViolation[0m for LockedEther in contract 'BitGuildAccessAdmin':
    | *      - operator: can update configurations
    | */
  > |contract BitGuildAccessAdmin {
    |    address public owner;
    |    address[] public operators;
  at /home/jiaming/slither_fp_files/out13982.sol(154)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildAccessAdmin':
    | *      - operator: can update configurations
    | */
  > |contract BitGuildAccessAdmin {
    |    address public owner;
    |    address[] public operators;
  at /home/jiaming/slither_fp_files/out13982.sol(154)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildAccessAdmin':
    |        for (uint i = 0; i < operators.length; i++) {
    |            if (operators[i] == _operator) {
  > |                operators[i] = lastOperator;
    |            }
    |        }
  at /home/jiaming/slither_fp_files/out13982.sol(253)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildAccessAdmin':
    |        operators.length -= 1; // remove the last element
    |
  > |        isOperator[_operator] = false;
    |        emit OperatorRemoved(_operator);
    |    }
  at /home/jiaming/slither_fp_files/out13982.sol(258)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildAccessAdmin':
    |    function removeAllOps() public onlyOwner {
    |        for (uint i = 0; i < operators.length; i++) {
  > |            isOperator[operators[i]] = false;
    |        }
    |        operators.length = 0;
  at /home/jiaming/slither_fp_files/out13982.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildAccessAdmin':
    |
    |
  > |contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
    |contract BitGuildToken {
  at /home/jiaming/slither_fp_files/out13982.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildAccessAdmin':
    |        );
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out13982.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildAccessAdmin':
    |        );
    |
  > |        operators.push(_newOperator);
    |        isOperator[_newOperator] = true;
    |
  at /home/jiaming/slither_fp_files/out13982.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildAccessAdmin':
    |
    |        operators.push(_newOperator);
  > |        isOperator[_newOperator] = true;
    |
    |        emit OperatorAdded(_newOperator);
  at /home/jiaming/slither_fp_files/out13982.sol(225)

[31mViolation[0m for LockedEther in contract 'BitGuildFeeProvider':
    | * @dev Fee definition, supports custom fees by seller or buyer or token combinations
    | */
  > |contract BitGuildFeeProvider is BitGuildAccessAdmin {
    |    // @dev Since default uint value is zero, need to distinguish Default vs No Fee
    |    uint constant NO_FEE = 10000;
  at /home/jiaming/slither_fp_files/out13982.sol(363)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildFeeProvider':
    |        for (uint i = 0; i < operators.length; i++) {
    |            if (operators[i] == _operator) {
  > |                operators[i] = lastOperator;
    |            }
    |        }
  at /home/jiaming/slither_fp_files/out13982.sol(253)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildFeeProvider':
    |        operators.length -= 1; // remove the last element
    |
  > |        isOperator[_operator] = false;
    |        emit OperatorRemoved(_operator);
    |    }
  at /home/jiaming/slither_fp_files/out13982.sol(258)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildFeeProvider':
    |    function removeAllOps() public onlyOwner {
    |        for (uint i = 0; i < operators.length; i++) {
  > |            isOperator[operators[i]] = false;
    |        }
    |        operators.length = 0;
  at /home/jiaming/slither_fp_files/out13982.sol(265)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildFeeProvider':
    | * @dev Fee definition, supports custom fees by seller or buyer or token combinations
    | */
  > |contract BitGuildFeeProvider is BitGuildAccessAdmin {
    |    // @dev Since default uint value is zero, need to distinguish Default vs No Fee
    |    uint constant NO_FEE = 10000;
  at /home/jiaming/slither_fp_files/out13982.sol(363)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildFeeProvider':
    |
    |        uint oldPercentFee = defaultPercentFee;
  > |        defaultPercentFee = _newFee;
    |
    |        emit LogFeeChanged(_newFee, oldPercentFee, msg.sender);
  at /home/jiaming/slither_fp_files/out13982.sol(388)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildFeeProvider':
    |        bytes32 key = _getHash(_currency, _buyer, _seller, _token);
    |        uint oldPercentFee = customFee[key];
  > |        customFee[key] = _newFee;
    |
    |        emit LogCustomFeeChanged(_newFee, oldPercentFee, _buyer, _seller, _token, msg.sender);
  at /home/jiaming/slither_fp_files/out13982.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildFeeProvider':
    |
    |
  > |contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
    |contract BitGuildToken {
  at /home/jiaming/slither_fp_files/out13982.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildFeeProvider':
    |        );
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out13982.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildFeeProvider':
    |        );
    |
  > |        operators.push(_newOperator);
    |        isOperator[_newOperator] = true;
    |
  at /home/jiaming/slither_fp_files/out13982.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildFeeProvider':
    |
    |        operators.push(_newOperator);
  > |        isOperator[_newOperator] = true;
    |
    |        emit OperatorAdded(_newOperator);
  at /home/jiaming/slither_fp_files/out13982.sol(225)

[33mWarning[0m for DAOConstantGas in contract 'BitGuildMarketplace':
    |    // @dev Admin function: withdraw ETH balance
    |    function withdrawETH() public onlyOwner payable {
  > |        msg.sender.transfer(msg.value);
    |    }
    |
  at /home/jiaming/slither_fp_files/out13982.sol(722)

[33mWarning[0m for TODReceiver in contract 'BitGuildMarketplace':
    |    // @dev Admin function: withdraw ETH balance
    |    function withdrawETH() public onlyOwner payable {
  > |        msg.sender.transfer(msg.value);
    |    }
    |
  at /home/jiaming/slither_fp_files/out13982.sol(722)

[33mWarning[0m for UnhandledException in contract 'BitGuildMarketplace':
    |
    |    modifier onlyWhitelisted(address _contract) {
  > |        require(Whitelist.isWhitelisted(_contract), "Contract not in whitelist.");
    |        _;
    |    }
  at /home/jiaming/slither_fp_files/out13982.sol(597)

[33mWarning[0m for UnhandledException in contract 'BitGuildMarketplace':
    |    // @dev get fees
    |    function getFee(uint _price, address _currency, address _buyer, address _seller, address _token) public view returns(uint percent, uint fee) {
  > |        (percent, fee) = FeeProvider.getFee(_price, _currency, _buyer, _seller, _token);
    |    }
    |
  at /home/jiaming/slither_fp_files/out13982.sol(616)

[33mWarning[0m for UnhandledException in contract 'BitGuildMarketplace':
    |        // Transfer item back to the seller
    |        ERC721 gameToken = ERC721(_contract);
  > |        gameToken.safeTransferFrom(this, seller, _tokenId);
    |
    |        emit LogItemWithdrawn(seller, _contract, _tokenId, now);
  at /home/jiaming/slither_fp_files/out13982.sol(663)

[33mWarning[0m for UnhandledException in contract 'BitGuildMarketplace':
    |    // @dev Admin function: withdraw ETH balance
    |    function withdrawETH() public onlyOwner payable {
  > |        msg.sender.transfer(msg.value);
    |    }
    |
  at /home/jiaming/slither_fp_files/out13982.sol(722)

[33mWarning[0m for UnhandledException in contract 'BitGuildMarketplace':
    |    // @dev Admin function: withdraw PLAT balance
    |    function withdrawPLAT() public onlyOwner payable {
  > |        uint balance = PLAT.balanceOf(this);
    |        PLAT.transfer(msg.sender, balance);
    |    }
  at /home/jiaming/slither_fp_files/out13982.sol(727)

[33mWarning[0m for UnhandledException in contract 'BitGuildMarketplace':
    |    function withdrawPLAT() public onlyOwner payable {
    |        uint balance = PLAT.balanceOf(this);
  > |        PLAT.transfer(msg.sender, balance);
    |    }
    |
  at /home/jiaming/slither_fp_files/out13982.sol(728)

[33mWarning[0m for UnhandledException in contract 'BitGuildMarketplace':
    |
    |        ERC721 gameToken = ERC721(_token);
  > |        require(gameToken.ownerOf(_tokenId) == address(this), "Item is not available.");
    |
    |        if (_currency == Currency.PLAT) {
  at /home/jiaming/slither_fp_files/out13982.sol(780)

[33mWarning[0m for UnhandledException in contract 'BitGuildMarketplace':
    |        if (_currency == Currency.PLAT) {
    |            // Transfer PLAT to marketplace contract
  > |            require(PLAT.transferFrom(_buyer, address(this), _price), "PLAT payment transfer failed.");
    |        }
    |
  at /home/jiaming/slither_fp_files/out13982.sol(784)

[33mWarning[0m for UnhandledException in contract 'BitGuildMarketplace':
    |
    |        // Transfer item token to buyer
  > |        gameToken.safeTransferFrom(this, _buyer, _tokenId);
    |
    |        uint fee;
  at /home/jiaming/slither_fp_files/out13982.sol(788)

[33mWarning[0m for UnhandledException in contract 'BitGuildMarketplace':
    |
    |        if (_currency == Currency.PLAT) {
  > |            PLAT.transfer(seller, _price - fee);
    |        } else {
    |            require(seller.send(_price - fee) == true, "Transfer to seller failed.");
  at /home/jiaming/slither_fp_files/out13982.sol(794)

[33mWarning[0m for UnhandledException in contract 'BitGuildMarketplace':
    |            PLAT.transfer(seller, _price - fee);
    |        } else {
  > |            require(seller.send(_price - fee) == true, "Transfer to seller failed.");
    |        }
    |
  at /home/jiaming/slither_fp_files/out13982.sol(796)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitGuildMarketplace':
    |
    |    modifier onlyWhitelisted(address _contract) {
  > |        require(Whitelist.isWhitelisted(_contract), "Contract not in whitelist.");
    |        _;
    |    }
  at /home/jiaming/slither_fp_files/out13982.sol(597)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitGuildMarketplace':
    |    // @dev get fees
    |    function getFee(uint _price, address _currency, address _buyer, address _seller, address _token) public view returns(uint percent, uint fee) {
  > |        (percent, fee) = FeeProvider.getFee(_price, _currency, _buyer, _seller, _token);
    |    }
    |
  at /home/jiaming/slither_fp_files/out13982.sol(616)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitGuildMarketplace':
    |        // Transfer item back to the seller
    |        ERC721 gameToken = ERC721(_contract);
  > |        gameToken.safeTransferFrom(this, seller, _tokenId);
    |
    |        emit LogItemWithdrawn(seller, _contract, _tokenId, now);
  at /home/jiaming/slither_fp_files/out13982.sol(663)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitGuildMarketplace':
    |    // @dev Admin function: withdraw ETH balance
    |    function withdrawETH() public onlyOwner payable {
  > |        msg.sender.transfer(msg.value);
    |    }
    |
  at /home/jiaming/slither_fp_files/out13982.sol(722)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitGuildMarketplace':
    |    // @dev Admin function: withdraw PLAT balance
    |    function withdrawPLAT() public onlyOwner payable {
  > |        uint balance = PLAT.balanceOf(this);
    |        PLAT.transfer(msg.sender, balance);
    |    }
  at /home/jiaming/slither_fp_files/out13982.sol(727)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitGuildMarketplace':
    |    function withdrawPLAT() public onlyOwner payable {
    |        uint balance = PLAT.balanceOf(this);
  > |        PLAT.transfer(msg.sender, balance);
    |    }
    |
  at /home/jiaming/slither_fp_files/out13982.sol(728)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitGuildMarketplace':
    |
    |        ERC721 gameToken = ERC721(_token);
  > |        require(gameToken.ownerOf(_tokenId) == address(this), "Item is not available.");
    |
    |        if (_currency == Currency.PLAT) {
  at /home/jiaming/slither_fp_files/out13982.sol(780)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitGuildMarketplace':
    |        if (_currency == Currency.PLAT) {
    |            // Transfer PLAT to marketplace contract
  > |            require(PLAT.transferFrom(_buyer, address(this), _price), "PLAT payment transfer failed.");
    |        }
    |
  at /home/jiaming/slither_fp_files/out13982.sol(784)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitGuildMarketplace':
    |
    |        // Transfer item token to buyer
  > |        gameToken.safeTransferFrom(this, _buyer, _tokenId);
    |
    |        uint fee;
  at /home/jiaming/slither_fp_files/out13982.sol(788)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitGuildMarketplace':
    |
    |        if (_currency == Currency.PLAT) {
  > |            PLAT.transfer(seller, _price - fee);
    |        } else {
    |            require(seller.send(_price - fee) == true, "Transfer to seller failed.");
  at /home/jiaming/slither_fp_files/out13982.sol(794)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildMarketplace':
    |        for (uint i = 0; i < operators.length; i++) {
    |            if (operators[i] == _operator) {
  > |                operators[i] = lastOperator;
    |            }
    |        }
  at /home/jiaming/slither_fp_files/out13982.sol(253)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildMarketplace':
    |        operators.length -= 1; // remove the last element
    |
  > |        isOperator[_operator] = false;
    |        emit OperatorRemoved(_operator);
    |    }
  at /home/jiaming/slither_fp_files/out13982.sol(258)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildMarketplace':
    |    function removeAllOps() public onlyOwner {
    |        for (uint i = 0; i < operators.length; i++) {
  > |            isOperator[operators[i]] = false;
    |        }
    |        operators.length = 0;
  at /home/jiaming/slither_fp_files/out13982.sol(265)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildMarketplace':
    | * @dev: Marketplace smart contract for BitGuild.com
    | */
  > |contract BitGuildMarketplace is BitGuildAccessAdmin {
    |    // Callback values from zepellin ERC721Receiver.sol
    |    // Old ver: bytes4(keccak256("onERC721Received(address,uint256,bytes)")) = 0xf0b9e5ba;
  at /home/jiaming/slither_fp_files/out13982.sol(560)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildMarketplace':
    |    function updateFeeProvider(address _newAddr) public onlyOperator {
    |        require(_newAddr != address(0), "Invalid contract address.");
  > |        FeeProvider = BitGuildFeeProvider(_newAddr);
    |    }
    |
  at /home/jiaming/slither_fp_files/out13982.sol(705)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildMarketplace':
    |    function updateWhitelist(address _newAddr) public onlyOperator {
    |        require(_newAddr != address(0), "Invalid contract address.");
  > |        Whitelist = BitGuildWhitelist(_newAddr);
    |    }
    |
  at /home/jiaming/slither_fp_files/out13982.sol(711)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildMarketplace':
    |    function updateExpiry(uint _days) public onlyOperator {
    |        require(_days > 0, "Invalid number of days.");
  > |        defaultExpiry = _days * 1 days;
    |    }
    |
  at /home/jiaming/slither_fp_files/out13982.sol(717)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildMarketplace':
    |        require(listings[key].expiry > 0, "Item not listed.");
    |
  > |        listings[key].expiry = now + defaultExpiry;
    |
    |        emit LogListingExtended(seller, _contract, _tokenId, listings[key].createdAt, listings[key].expiry);
  at /home/jiaming/slither_fp_files/out13982.sol(645)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildMarketplace':
    |
    |        // remove listing
  > |        delete(listings[key]);
    |    }
    |
  at /home/jiaming/slither_fp_files/out13982.sol(668)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildMarketplace':
    |
    |
  > |contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
    |contract BitGuildToken {
  at /home/jiaming/slither_fp_files/out13982.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildMarketplace':
    |        );
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out13982.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildMarketplace':
    |        );
    |
  > |        operators.push(_newOperator);
    |        isOperator[_newOperator] = true;
    |
  at /home/jiaming/slither_fp_files/out13982.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildMarketplace':
    |
    |        operators.push(_newOperator);
  > |        isOperator[_newOperator] = true;
    |
    |        emit OperatorAdded(_newOperator);
  at /home/jiaming/slither_fp_files/out13982.sol(225)

[33mWarning[0m for LockedEther in contract 'BitGuildToken':
    |contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract BitGuildToken {
    |    // Public variables of the token
    |    string public name = "BitGuild PLAT";
  at /home/jiaming/slither_fp_files/out13982.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'BitGuildToken':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/slither_fp_files/out13982.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'BitGuildToken':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/slither_fp_files/out13982.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'BitGuildToken':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/slither_fp_files/out13982.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'BitGuildToken':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/slither_fp_files/out13982.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'BitGuildToken':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/slither_fp_files/out13982.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'BitGuildToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/slither_fp_files/out13982.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'BitGuildToken':
    |contract BitGuildToken {
    |    // Public variables of the token
  > |    string public name = "BitGuild PLAT";
    |    string public symbol = "PLAT";
    |    uint8 public decimals = 18;
  at /home/jiaming/slither_fp_files/out13982.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'BitGuildToken':
    |    // Public variables of the token
    |    string public name = "BitGuild PLAT";
  > |    string public symbol = "PLAT";
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 10000000000 * 10 ** uint256(decimals); // 10 billion tokens;
  at /home/jiaming/slither_fp_files/out13982.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'BitGuildToken':
    |    string public name = "BitGuild PLAT";
    |    string public symbol = "PLAT";
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 10000000000 * 10 ** uint256(decimals); // 10 billion tokens;
    |
  at /home/jiaming/slither_fp_files/out13982.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'BitGuildToken':
    |    string public symbol = "PLAT";
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply = 10000000000 * 10 ** uint256(decimals); // 10 billion tokens;
    |
    |    // This creates an array with all balances
  at /home/jiaming/slither_fp_files/out13982.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'BitGuildToken':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/slither_fp_files/out13982.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'BitGuildToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/slither_fp_files/out13982.sol(120)

[33mWarning[0m for UnhandledException in contract 'BitGuildToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/slither_fp_files/out13982.sol(108)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitGuildToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/slither_fp_files/out13982.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/slither_fp_files/out13982.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildToken':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/slither_fp_files/out13982.sol(46)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildToken':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out13982.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildToken':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/slither_fp_files/out13982.sol(139)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildToken':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out13982.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/slither_fp_files/out13982.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out13982.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildToken':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/slither_fp_files/out13982.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/slither_fp_files/out13982.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildToken':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/slither_fp_files/out13982.sol(140)

[31mViolation[0m for LockedEther in contract 'BitGuildWhitelist':
    | * @dev A small smart contract to provide whitelist functionality and storage
    | */
  > |contract BitGuildWhitelist is BitGuildAccessAdmin {
    |    uint public total = 0;
    |    mapping (address => bool) public isWhitelisted;
  at /home/jiaming/slither_fp_files/out13982.sol(276)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildWhitelist':
    |        for (uint i = 0; i < operators.length; i++) {
    |            if (operators[i] == _operator) {
  > |                operators[i] = lastOperator;
    |            }
    |        }
  at /home/jiaming/slither_fp_files/out13982.sol(253)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildWhitelist':
    |        operators.length -= 1; // remove the last element
    |
  > |        isOperator[_operator] = false;
    |        emit OperatorRemoved(_operator);
    |    }
  at /home/jiaming/slither_fp_files/out13982.sol(258)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildWhitelist':
    |    function removeAllOps() public onlyOwner {
    |        for (uint i = 0; i < operators.length; i++) {
  > |            isOperator[operators[i]] = false;
    |        }
    |        operators.length = 0;
  at /home/jiaming/slither_fp_files/out13982.sol(265)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildWhitelist':
    | * @dev A small smart contract to provide whitelist functionality and storage
    | */
  > |contract BitGuildWhitelist is BitGuildAccessAdmin {
    |    uint public total = 0;
    |    mapping (address => bool) public isWhitelisted;
  at /home/jiaming/slither_fp_files/out13982.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildWhitelist':
    |
    |
  > |contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
    |contract BitGuildToken {
  at /home/jiaming/slither_fp_files/out13982.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildWhitelist':
    |        );
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out13982.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildWhitelist':
    |        );
    |
  > |        operators.push(_newOperator);
    |        isOperator[_newOperator] = true;
    |
  at /home/jiaming/slither_fp_files/out13982.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildWhitelist':
    |
    |        operators.push(_newOperator);
  > |        isOperator[_newOperator] = true;
    |
    |        emit OperatorAdded(_newOperator);
  at /home/jiaming/slither_fp_files/out13982.sol(225)


