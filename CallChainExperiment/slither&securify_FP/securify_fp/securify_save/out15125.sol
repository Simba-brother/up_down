Processing contract: /home/jiaming/slither_fp_files/out15125.sol:Asset
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:AssetInterface
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:CanonicalPriceFeed
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:CanonicalRegistrar
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:Competition
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:CompetitionCompliance
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:CompetitionInterface
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:ComplianceInterface
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:DBC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:DSAuthority
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:DSExec
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:DSGroup
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:DSGroupFactory
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:DSNote
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:DSThing
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:ERC20Interface
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:Fund
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:FundInterface
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:GenericExchangeInterface
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:OperatorStaking
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:RiskMgmtInterface
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:Shares
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:SharesInterface
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:SimplePriceFeed
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:SimplePriceFeedInterface
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:StakingPriceFeed
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:Version
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:VersionInterface
Processing contract: /home/jiaming/slither_fp_files/out15125.sol:WETH9_
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Asset':
    |}
    |
  > |contract Asset is DSMath, ERC20Interface {
    |
    |    // DATA STRUCTURES
  at /home/jiaming/slither_fp_files/out15125.sol(498)

[31mViolation[0m for MissingInputValidation in contract 'Asset':
    |     * @return Returns success of function call
    |     */
  > |    function transfer(address _to, uint _value)
    |        public
    |        returns (bool success)
  at /home/jiaming/slither_fp_files/out15125.sol(516)

[31mViolation[0m for MissingInputValidation in contract 'Asset':
    |    /// @param _value Number of approved tokens.
    |    /// @return Returns success of function call.
  > |    function approve(address _spender, uint _value) public returns (bool) {
    |        require(_spender != address(0));
    |
  at /home/jiaming/slither_fp_files/out15125.sol(561)

[31mViolation[0m for MissingInputValidation in contract 'Asset':
    |    /// @param _spender Address of token spender.
    |    /// @return Returns remaining allowance for spender.
  > |    function allowance(address _owner, address _spender)
    |        constant
    |        public
  at /home/jiaming/slither_fp_files/out15125.sol(576)

[31mViolation[0m for MissingInputValidation in contract 'Asset':
    |    /// @param _owner Address of token owner.
    |    /// @return Returns balance of owner.
  > |    function balanceOf(address _owner) constant public returns (uint) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(587)

[33mWarning[0m for MissingInputValidation in contract 'Asset':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(283)

[33mWarning[0m for MissingInputValidation in contract 'Asset':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(286)

[33mWarning[0m for MissingInputValidation in contract 'Asset':
    |    mapping (address => uint) balances;
    |    mapping (address => mapping (address => uint)) allowed;
  > |    uint public _totalSupply;
    |
    |    // PUBLIC METHODS
  at /home/jiaming/slither_fp_files/out15125.sol(504)

[33mWarning[0m for MissingInputValidation in contract 'Asset':
    |    /// @param _value Number of tokens to transfer.
    |    /// @return Returns success of function call.
  > |    function transferFrom(address _from, address _to, uint _value)
    |        public
    |        returns (bool)
  at /home/jiaming/slither_fp_files/out15125.sol(536)

[33mWarning[0m for MissingInputValidation in contract 'Asset':
    |    }
    |
  > |    function totalSupply() view public returns (uint) {
    |        return _totalSupply;
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(591)

[31mViolation[0m for UnrestrictedWrite in contract 'Asset':
    |
    |        balances[msg.sender] = sub(balances[msg.sender], _value);
  > |        balances[_to] = add(balances[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out15125.sol(524)

[31mViolation[0m for UnrestrictedWrite in contract 'Asset':
    |        // require(_to == msg.sender); // can only use transferFrom to send to self
    |
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/slither_fp_files/out15125.sol(548)

[31mViolation[0m for UnrestrictedWrite in contract 'Asset':
    |
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |
  at /home/jiaming/slither_fp_files/out15125.sol(549)

[33mWarning[0m for UnrestrictedWrite in contract 'Asset':
    |        require(balances[_to] + _value >= balances[_to]);
    |
  > |        balances[msg.sender] = sub(balances[msg.sender], _value);
    |        balances[_to] = add(balances[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out15125.sol(523)

[33mWarning[0m for UnrestrictedWrite in contract 'Asset':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out15125.sol(550)

[33mWarning[0m for UnrestrictedWrite in contract 'Asset':
    |        require(_spender != address(0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out15125.sol(564)

[31mViolation[0m for LockedEther in contract 'CanonicalRegistrar':
    |}
    |
  > |contract CanonicalRegistrar is DSThing, DBC {
    |
    |    // TYPES
  at /home/jiaming/slither_fp_files/out15125.sol(1834)

[33mWarning[0m for UnhandledException in contract 'CanonicalRegistrar':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(52)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CanonicalRegistrar':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |pragma solidity ^0.4.13;
    |
  > |contract DSAuthority {
    |    function canCall(
    |        address src, address dst, bytes4 sig
  at /home/jiaming/slither_fp_files/out15125.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |}
    |
  > |contract CanonicalRegistrar is DSThing, DBC {
    |
    |    // TYPES
  at /home/jiaming/slither_fp_files/out15125.sol(1834)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |        pre_cond(!assetInformation[ofAsset].exists)
    |    {
  > |        assetInformation[ofAsset].exists = true;
    |        registeredAssets.push(ofAsset);
    |        updateAsset(
  at /home/jiaming/slither_fp_files/out15125.sol(1902)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |    {
    |        assetInformation[ofAsset].exists = true;
  > |        registeredAssets.push(ofAsset);
    |        updateAsset(
    |            ofAsset,
  at /home/jiaming/slither_fp_files/out15125.sol(1903)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |        pre_cond(!exchangeInformation[ofExchange].exists)
    |    {
  > |        exchangeInformation[ofExchange].exists = true;
    |        registeredExchanges.push(ofExchange);
    |        updateExchange(
  at /home/jiaming/slither_fp_files/out15125.sol(1934)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |    {
    |        exchangeInformation[ofExchange].exists = true;
  > |        registeredExchanges.push(ofExchange);
    |        updateExchange(
    |            ofExchange,
  at /home/jiaming/slither_fp_files/out15125.sol(1935)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |    {
    |        Asset asset = assetInformation[ofAsset];
  > |        asset.name = inputName;
    |        asset.symbol = inputSymbol;
    |        asset.decimals = inputDecimals;
  at /home/jiaming/slither_fp_files/out15125.sol(1968)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |        Asset asset = assetInformation[ofAsset];
    |        asset.name = inputName;
  > |        asset.symbol = inputSymbol;
    |        asset.decimals = inputDecimals;
    |        asset.url = inputUrl;
  at /home/jiaming/slither_fp_files/out15125.sol(1969)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |        asset.name = inputName;
    |        asset.symbol = inputSymbol;
  > |        asset.decimals = inputDecimals;
    |        asset.url = inputUrl;
    |        asset.ipfsHash = inputIpfsHash;
  at /home/jiaming/slither_fp_files/out15125.sol(1970)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |    {
    |        Exchange exchange = exchangeInformation[ofExchange];
  > |        exchange.adapter = ofExchangeAdapter;
    |        exchange.takesCustody = inputTakesCustody;
    |        exchange.functionSignatures = inputFunctionSignatures;
  at /home/jiaming/slither_fp_files/out15125.sol(1989)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |        Exchange exchange = exchangeInformation[ofExchange];
    |        exchange.adapter = ofExchangeAdapter;
  > |        exchange.takesCustody = inputTakesCustody;
    |        exchange.functionSignatures = inputFunctionSignatures;
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(1990)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |    {
    |        require(registeredAssets[assetIndex] == ofAsset);
  > |        delete assetInformation[ofAsset]; // Sets exists boolean to false
    |        delete registeredAssets[assetIndex];
    |        for (uint i = assetIndex; i < registeredAssets.length-1; i++) {
  at /home/jiaming/slither_fp_files/out15125.sol(2006)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |    {
    |        require(registeredExchanges[exchangeIndex] == ofExchange);
  > |        delete exchangeInformation[ofExchange];
    |        delete registeredExchanges[exchangeIndex];
    |        for (uint i = exchangeIndex; i < registeredExchanges.length-1; i++) {
  at /home/jiaming/slither_fp_files/out15125.sol(2027)

[31mViolation[0m for DAOConstantGas in contract 'Competition':
    |        fundContract.requestInvestment(payoutQuantity, getEtherValue(payoutQuantity), MELON_ASSET);
    |        fundContract.executeRequest(fundContract.getLastRequestId());
  > |        custodian.transfer(msg.value);
    |
    |        // Emit Register event
  at /home/jiaming/slither_fp_files/out15125.sol(1673)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |    /// @return Whether or not terms and conditions have been read and understood
    |    function termsAndConditionsAreSigned(address byManager, uint8 v, bytes32 r, bytes32 s) view returns (bool) {
  > |        return ecrecover(
    |            // Parity does prepend \x19Ethereum Signed Message:\n{len(message)} before signing.
    |            //  Signature order has also been changed in 1.6.7 and upcoming 1.7.x,
  at /home/jiaming/slither_fp_files/out15125.sol(1557)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |    /// @return Get value of MLN amount in Ether
    |    function getEtherValue(uint amount) view returns (uint) {
  > |        address feedAddress = Version(COMPETITION_VERSION).CANONICAL_PRICEFEED();
    |        var (isRecent, price, ) = CanonicalPriceFeed(feedAddress).getPriceInfo(MELON_ASSET);
    |        if (!isRecent) {
  at /home/jiaming/slither_fp_files/out15125.sol(1599)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |    function getEtherValue(uint amount) view returns (uint) {
    |        address feedAddress = Version(COMPETITION_VERSION).CANONICAL_PRICEFEED();
  > |        var (isRecent, price, ) = CanonicalPriceFeed(feedAddress).getPriceInfo(MELON_ASSET);
    |        if (!isRecent) {
    |            revert();
  at /home/jiaming/slither_fp_files/out15125.sol(1600)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |    )
    |        payable
  > |        pre_cond(isCompetitionActive() && !Version(COMPETITION_VERSION).isShutDown())
    |        pre_cond(termsAndConditionsAreSigned(msg.sender, v, r, s) && isWhitelisted(msg.sender))
    |    {
  at /home/jiaming/slither_fp_files/out15125.sol(1654)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |        require(add(currentTotalBuyin, msg.value) <= totalMaxBuyin && registrants.length < maxRegistrants);
    |        require(msg.value <= whitelistantToMaxBuyin[msg.sender]);
  > |        require(Version(COMPETITION_VERSION).getFundByManager(msg.sender) == fund);
    |
    |        // Calculate Payout Quantity, invest the quantity in registrant's fund
  at /home/jiaming/slither_fp_files/out15125.sol(1660)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |        currentTotalBuyin = add(currentTotalBuyin, msg.value);
    |        FundInterface fundContract = FundInterface(fund);
  > |        MELON_CONTRACT.approve(fund, payoutQuantity);
    |
    |        // Give payoutRequest MLN in return for msg.value
  at /home/jiaming/slither_fp_files/out15125.sol(1668)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |
    |        // Give payoutRequest MLN in return for msg.value
  > |        fundContract.requestInvestment(payoutQuantity, getEtherValue(payoutQuantity), MELON_ASSET);
    |        fundContract.executeRequest(fundContract.getLastRequestId());
    |        custodian.transfer(msg.value);
  at /home/jiaming/slither_fp_files/out15125.sol(1671)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |        // Give payoutRequest MLN in return for msg.value
    |        fundContract.requestInvestment(payoutQuantity, getEtherValue(payoutQuantity), MELON_ASSET);
  > |        fundContract.executeRequest(fundContract.getLastRequestId());
    |        custodian.transfer(msg.value);
    |
  at /home/jiaming/slither_fp_files/out15125.sol(1672)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |        fundContract.requestInvestment(payoutQuantity, getEtherValue(payoutQuantity), MELON_ASSET);
    |        fundContract.executeRequest(fundContract.getLastRequestId());
  > |        custodian.transfer(msg.value);
    |
    |        // Emit Register event
  at /home/jiaming/slither_fp_files/out15125.sol(1673)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |        pre_cond(isOwner())
    |    {
  > |        MELON_CONTRACT.transfer(to, amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out15125.sol(1709)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |        pre_cond(getRegistrantFund(msg.sender) != address(0))
    |    {
  > |        require(block.timestamp >= endTime || Version(COMPETITION_VERSION).isShutDown());
    |        Registrant registrant  = registrants[getRegistrantId(msg.sender)];
    |        require(registrant.isRewarded == false);
  at /home/jiaming/slither_fp_files/out15125.sol(1716)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |        registrant.isRewarded = true;
    |        // Is this safe to assume this or should we transfer all the balance instead?
  > |        uint balance = AssetInterface(registrant.fund).balanceOf(address(this));
    |        require(AssetInterface(registrant.fund).transfer(registrant.registrant, balance));
    |
  at /home/jiaming/slither_fp_files/out15125.sol(1721)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |        // Is this safe to assume this or should we transfer all the balance instead?
    |        uint balance = AssetInterface(registrant.fund).balanceOf(address(this));
  > |        require(AssetInterface(registrant.fund).transfer(registrant.registrant, balance));
    |
    |        // Emit ClaimedReward event
  at /home/jiaming/slither_fp_files/out15125.sol(1722)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |    /// @return Whether or not terms and conditions have been read and understood
    |    function termsAndConditionsAreSigned(address byManager, uint8 v, bytes32 r, bytes32 s) view returns (bool) {
  > |        return ecrecover(
    |            // Parity does prepend \x19Ethereum Signed Message:\n{len(message)} before signing.
    |            //  Signature order has also been changed in 1.6.7 and upcoming 1.7.x,
  at /home/jiaming/slither_fp_files/out15125.sol(1557)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |    /// @return Get value of MLN amount in Ether
    |    function getEtherValue(uint amount) view returns (uint) {
  > |        address feedAddress = Version(COMPETITION_VERSION).CANONICAL_PRICEFEED();
    |        var (isRecent, price, ) = CanonicalPriceFeed(feedAddress).getPriceInfo(MELON_ASSET);
    |        if (!isRecent) {
  at /home/jiaming/slither_fp_files/out15125.sol(1599)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |    function getEtherValue(uint amount) view returns (uint) {
    |        address feedAddress = Version(COMPETITION_VERSION).CANONICAL_PRICEFEED();
  > |        var (isRecent, price, ) = CanonicalPriceFeed(feedAddress).getPriceInfo(MELON_ASSET);
    |        if (!isRecent) {
    |            revert();
  at /home/jiaming/slither_fp_files/out15125.sol(1600)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |    )
    |        payable
  > |        pre_cond(isCompetitionActive() && !Version(COMPETITION_VERSION).isShutDown())
    |        pre_cond(termsAndConditionsAreSigned(msg.sender, v, r, s) && isWhitelisted(msg.sender))
    |    {
  at /home/jiaming/slither_fp_files/out15125.sol(1654)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |        require(add(currentTotalBuyin, msg.value) <= totalMaxBuyin && registrants.length < maxRegistrants);
    |        require(msg.value <= whitelistantToMaxBuyin[msg.sender]);
  > |        require(Version(COMPETITION_VERSION).getFundByManager(msg.sender) == fund);
    |
    |        // Calculate Payout Quantity, invest the quantity in registrant's fund
  at /home/jiaming/slither_fp_files/out15125.sol(1660)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |        currentTotalBuyin = add(currentTotalBuyin, msg.value);
    |        FundInterface fundContract = FundInterface(fund);
  > |        MELON_CONTRACT.approve(fund, payoutQuantity);
    |
    |        // Give payoutRequest MLN in return for msg.value
  at /home/jiaming/slither_fp_files/out15125.sol(1668)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |
    |        // Give payoutRequest MLN in return for msg.value
  > |        fundContract.requestInvestment(payoutQuantity, getEtherValue(payoutQuantity), MELON_ASSET);
    |        fundContract.executeRequest(fundContract.getLastRequestId());
    |        custodian.transfer(msg.value);
  at /home/jiaming/slither_fp_files/out15125.sol(1671)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |        // Give payoutRequest MLN in return for msg.value
    |        fundContract.requestInvestment(payoutQuantity, getEtherValue(payoutQuantity), MELON_ASSET);
  > |        fundContract.executeRequest(fundContract.getLastRequestId());
    |        custodian.transfer(msg.value);
    |
  at /home/jiaming/slither_fp_files/out15125.sol(1672)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |        pre_cond(isOwner())
    |    {
  > |        MELON_CONTRACT.transfer(to, amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out15125.sol(1709)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |        pre_cond(getRegistrantFund(msg.sender) != address(0))
    |    {
  > |        require(block.timestamp >= endTime || Version(COMPETITION_VERSION).isShutDown());
    |        Registrant registrant  = registrants[getRegistrantId(msg.sender)];
    |        require(registrant.isRewarded == false);
  at /home/jiaming/slither_fp_files/out15125.sol(1716)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |        registrant.isRewarded = true;
    |        // Is this safe to assume this or should we transfer all the balance instead?
  > |        uint balance = AssetInterface(registrant.fund).balanceOf(address(this));
    |        require(AssetInterface(registrant.fund).transfer(registrant.registrant, balance));
    |
  at /home/jiaming/slither_fp_files/out15125.sol(1721)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |        // Is this safe to assume this or should we transfer all the balance instead?
    |        uint balance = AssetInterface(registrant.fund).balanceOf(address(this));
  > |        require(AssetInterface(registrant.fund).transfer(registrant.registrant, balance));
    |
    |        // Emit ClaimedReward event
  at /home/jiaming/slither_fp_files/out15125.sol(1722)

[33mWarning[0m for UnrestrictedWrite in contract 'Competition':
    |    function Owned() { owner = msg.sender; }
    |
  > |    function changeOwner(address ofNewOwner) pre_cond(isOwner()) { owner = ofNewOwner; }
    |
    |    // PRE, POST, INVARIANT CONDITIONS
  at /home/jiaming/slither_fp_files/out15125.sol(780)

[33mWarning[0m for UnrestrictedWrite in contract 'Competition':
    |        uint payoutQuantity = calculatePayout(msg.value);
    |        registeredFundToRegistrants[fund] = msg.sender;
  > |        registrantToRegistrantIds[msg.sender] = RegistrantId({id: registrants.length, exists: true});
    |        currentTotalBuyin = add(currentTotalBuyin, msg.value);
    |        FundInterface fundContract = FundInterface(fund);
  at /home/jiaming/slither_fp_files/out15125.sol(1665)

[33mWarning[0m for LockedEther in contract 'CompetitionCompliance':
    |}
    |
  > |contract CompetitionCompliance is ComplianceInterface, DBC, Owned {
    |
    |    address public competitionAddress;
  at /home/jiaming/slither_fp_files/out15125.sol(1729)

[31mViolation[0m for MissingInputValidation in contract 'CompetitionCompliance':
    |    function Owned() { owner = msg.sender; }
    |
  > |    function changeOwner(address ofNewOwner) pre_cond(isOwner()) { owner = ofNewOwner; }
    |
    |    // PRE, POST, INVARIANT CONDITIONS
  at /home/jiaming/slither_fp_files/out15125.sol(780)

[31mViolation[0m for MissingInputValidation in contract 'CompetitionCompliance':
    |    /// @param x Address
    |    /// @return Whether the address is whitelisted
  > |    function isCompetitionAllowed(
    |        address x
    |    )
  at /home/jiaming/slither_fp_files/out15125.sol(1778)

[31mViolation[0m for MissingInputValidation in contract 'CompetitionCompliance':
    |    /// @notice Changes the competition address
    |    /// @param ofCompetition Address of the competition contract
  > |    function changeCompetitionAddress(
    |        address ofCompetition
    |    )
  at /home/jiaming/slither_fp_files/out15125.sol(1792)

[33mWarning[0m for MissingInputValidation in contract 'CompetitionCompliance':
    |    // FIELDS
    |
  > |    address public owner;
    |
    |    // NON-CONSTANT METHODS
  at /home/jiaming/slither_fp_files/out15125.sol(774)

[33mWarning[0m for MissingInputValidation in contract 'CompetitionCompliance':
    |    // PRE, POST, INVARIANT CONDITIONS
    |
  > |    function isOwner() internal returns (bool) { return msg.sender == owner; }
    |
    |}
  at /home/jiaming/slither_fp_files/out15125.sol(784)

[33mWarning[0m for MissingInputValidation in contract 'CompetitionCompliance':
    |contract CompetitionCompliance is ComplianceInterface, DBC, Owned {
    |
  > |    address public competitionAddress;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/slither_fp_files/out15125.sol(1731)

[33mWarning[0m for MissingInputValidation in contract 'CompetitionCompliance':
    |    /// @param shareQuantity Quantity of shares times 10 ** 18 requested to be received
    |    /// @return Whether identity is eligible to invest in a Melon fund.
  > |    function isInvestmentPermitted(
    |        address ofParticipant,
    |        uint256 giveQuantity,
  at /home/jiaming/slither_fp_files/out15125.sol(1748)

[33mWarning[0m for MissingInputValidation in contract 'CompetitionCompliance':
    |    /// @param receiveQuantity Quantity of Melon token times 10 ** 18 requested to receive for shareQuantity
    |    /// @return isEligible Whether identity is eligible to redeem from a Melon fund.
  > |    function isRedemptionPermitted(
    |        address ofParticipant,
    |        uint256 shareQuantity,
  at /home/jiaming/slither_fp_files/out15125.sol(1764)

[33mWarning[0m for UnhandledException in contract 'CompetitionCompliance':
    |        returns (bool)
    |    {
  > |        return CompetitionInterface(competitionAddress).isWhitelisted(x) && CompetitionInterface(competitionAddress).isCompetitionActive();
    |    }
    |
  at /home/jiaming/slither_fp_files/out15125.sol(1784)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CompetitionCompliance':
    |        returns (bool)
    |    {
  > |        return CompetitionInterface(competitionAddress).isWhitelisted(x) && CompetitionInterface(competitionAddress).isCompetitionActive();
    |    }
    |
  at /home/jiaming/slither_fp_files/out15125.sol(1784)

[33mWarning[0m for UnrestrictedWrite in contract 'CompetitionCompliance':
    |    function Owned() { owner = msg.sender; }
    |
  > |    function changeOwner(address ofNewOwner) pre_cond(isOwner()) { owner = ofNewOwner; }
    |
    |    // PRE, POST, INVARIANT CONDITIONS
  at /home/jiaming/slither_fp_files/out15125.sol(780)

[33mWarning[0m for UnrestrictedWrite in contract 'CompetitionCompliance':
    |        pre_cond(isOwner())
    |    {
  > |        competitionAddress = ofCompetition;
    |    }
    |
  at /home/jiaming/slither_fp_files/out15125.sol(1797)

[33mWarning[0m for LockedEther in contract 'DBC':
    |}
    |
  > |contract DBC {
    |
    |    // MODIFIERS
  at /home/jiaming/slither_fp_files/out15125.sol(749)

[33mWarning[0m for DAO in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(52)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |}
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/slither_fp_files/out15125.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/slither_fp_files/out15125.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/slither_fp_files/out15125.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/slither_fp_files/out15125.sol(44)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(35)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |}
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/slither_fp_files/out15125.sol(9)

[33mWarning[0m for LockedEther in contract 'DSExec':
    |}
    |
  > |contract DSExec {
    |    function tryExec( address target, bytes calldata, uint value)
    |             internal
  at /home/jiaming/slither_fp_files/out15125.sol(57)

[33mWarning[0m for DAO in contract 'DSGroup':
    |             returns (bool call_ret)
    |    {
  > |        return target.call.value(value)(calldata);
    |    }
    |    function exec( address target, bytes calldata, uint value)
  at /home/jiaming/slither_fp_files/out15125.sol(62)

[33mWarning[0m for UnhandledException in contract 'DSGroup':
    |             returns (bool call_ret)
    |    {
  > |        return target.call.value(value)(calldata);
    |    }
    |    function exec( address target, bytes calldata, uint value)
  at /home/jiaming/slither_fp_files/out15125.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'DSGroup':
    |        assert(!confirmedBy[id][msg.sender]);
    |
  > |        confirmedBy[id][msg.sender] = true;
    |        actions[id].confirmations++;
    |
  at /home/jiaming/slither_fp_files/out15125.sol(213)

[33mWarning[0m for LockedEther in contract 'DSGroupFactory':
    |}
    |
  > |contract DSGroupFactory is DSNote {
    |    mapping (address => bool)  public  isGroup;
    |
  at /home/jiaming/slither_fp_files/out15125.sol(269)

[31mViolation[0m for MissingInputValidation in contract 'DSGroupFactory':
    |
    |contract DSGroupFactory is DSNote {
  > |    mapping (address => bool)  public  isGroup;
    |
    |    function newGroup(
  at /home/jiaming/slither_fp_files/out15125.sol(270)

[31mViolation[0m for MissingInputValidation in contract 'DSGroupFactory':
    |    mapping (address => bool)  public  isGroup;
    |
  > |    function newGroup(
    |        address[]  members,
    |        uint       quorum,
  at /home/jiaming/slither_fp_files/out15125.sol(272)

[33mWarning[0m for MissingInputValidation in contract 'DSGroupFactory':
    |}
    |
  > |contract DSGroupFactory is DSNote {
    |    mapping (address => bool)  public  isGroup;
    |
  at /home/jiaming/slither_fp_files/out15125.sol(269)

[31mViolation[0m for UnrestrictedWrite in contract 'DSGroupFactory':
    |    ) note returns (DSGroup group) {
    |        group = new DSGroup(members, quorum, window);
  > |        isGroup[group] = true;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out15125.sol(278)

[33mWarning[0m for LockedEther in contract 'DSMath':
    |}
    |
  > |contract DSMath {
    |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
  at /home/jiaming/slither_fp_files/out15125.sol(282)

[33mWarning[0m for LockedEther in contract 'DSNote':
    |}
    |
  > |contract DSNote {
    |    event LogNote(
    |        bytes4   indexed  sig,
  at /home/jiaming/slither_fp_files/out15125.sol(97)

[33mWarning[0m for DAO in contract 'DSThing':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(52)

[33mWarning[0m for LockedEther in contract 'DSThing':
    |}
    |
  > |contract DSThing is DSAuth, DSNote, DSMath {
    |
    |    function S(string s) internal pure returns (bytes4) {
  at /home/jiaming/slither_fp_files/out15125.sol(350)

[33mWarning[0m for MissingInputValidation in contract 'DSThing':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/slither_fp_files/out15125.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'DSThing':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/slither_fp_files/out15125.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'DSThing':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/slither_fp_files/out15125.sol(44)

[33mWarning[0m for UnhandledException in contract 'DSThing':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'DSThing':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'DSThing':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(35)

[31mViolation[0m for LockedEther in contract 'OperatorStaking':
    |}
    |
  > |contract OperatorStaking is DBC {
    |
    |    // EVENTS
  at /home/jiaming/slither_fp_files/out15125.sol(2321)

[33mWarning[0m for UnhandledException in contract 'OperatorStaking':
    |        stakedAmounts[msg.sender] += amount;
    |        updateStakerRanking(msg.sender);
  > |        require(stakingToken.transferFrom(msg.sender, address(this), amount));
    |    }
    |
  at /home/jiaming/slither_fp_files/out15125.sol(2390)

[33mWarning[0m for UnhandledException in contract 'OperatorStaking':
    |        uint amount = stakeToWithdraw[msg.sender];
    |        stakeToWithdraw[msg.sender] = 0;
  > |        require(stakingToken.transfer(msg.sender, amount));
    |    }
    |
  at /home/jiaming/slither_fp_files/out15125.sol(2417)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OperatorStaking':
    |        stakedAmounts[msg.sender] += amount;
    |        updateStakerRanking(msg.sender);
  > |        require(stakingToken.transferFrom(msg.sender, address(this), amount));
    |    }
    |
  at /home/jiaming/slither_fp_files/out15125.sol(2390)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OperatorStaking':
    |        uint amount = stakeToWithdraw[msg.sender];
    |        stakeToWithdraw[msg.sender] = 0;
  > |        require(stakingToken.transfer(msg.sender, amount));
    |    }
    |
  at /home/jiaming/slither_fp_files/out15125.sol(2417)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |pragma solidity ^0.4.13;
    |
  > |contract DSAuthority {
    |    function canCall(
    |        address src, address dst, bytes4 sig
  at /home/jiaming/slither_fp_files/out15125.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |    {
    |        uint tailNodeId = stakeNodes[0].prev;
  > |        stakedAmounts[msg.sender] += amount;
    |        updateStakerRanking(msg.sender);
    |        require(stakingToken.transferFrom(msg.sender, address(this), amount));
  at /home/jiaming/slither_fp_files/out15125.sol(2388)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |        require(postStake >= minimumStake || postStake == 0);
    |        require(stakedAmounts[msg.sender] >= amount);
  > |        latestUnstakeTime[msg.sender] = block.timestamp;
    |        stakedAmounts[msg.sender] -= amount;
    |        stakeToWithdraw[msg.sender] += amount;
  at /home/jiaming/slither_fp_files/out15125.sol(2403)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |        require(stakedAmounts[msg.sender] >= amount);
    |        latestUnstakeTime[msg.sender] = block.timestamp;
  > |        stakedAmounts[msg.sender] -= amount;
    |        stakeToWithdraw[msg.sender] += amount;
    |        updateStakerRanking(msg.sender);
  at /home/jiaming/slither_fp_files/out15125.sol(2404)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |        latestUnstakeTime[msg.sender] = block.timestamp;
    |        stakedAmounts[msg.sender] -= amount;
  > |        stakeToWithdraw[msg.sender] += amount;
    |        updateStakerRanking(msg.sender);
    |        emit Unstaked(msg.sender, amount, stakedAmounts[msg.sender], data);
  at /home/jiaming/slither_fp_files/out15125.sol(2405)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |    {
    |        uint amount = stakeToWithdraw[msg.sender];
  > |        stakeToWithdraw[msg.sender] = 0;
    |        require(stakingToken.transfer(msg.sender, amount));
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(2416)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |        Node storage node = stakeNodes[id];
    |
  > |        stakeNodes.push(Node({
    |            data: StakeData(amount, staker),
    |            prev: id,
  at /home/jiaming/slither_fp_files/out15125.sol(2510)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |        newID = stakeNodes.length - 1;
    |
  > |        stakeNodes[node.next].prev = newID;
    |        node.next = newID;
    |        numStakers++;
  at /home/jiaming/slither_fp_files/out15125.sol(2518)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |
    |        stakeNodes[node.next].prev = newID;
  > |        node.next = newID;
    |        numStakers++;
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(2519)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |        stakeNodes[node.next].prev = newID;
    |        node.next = newID;
  > |        numStakers++;
    |    }
    |
  at /home/jiaming/slither_fp_files/out15125.sol(2520)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |        Node storage node = stakeNodes[id];
    |
  > |        stakeNodes[node.next].prev = node.prev;
    |        stakeNodes[node.prev].next = node.next;
    |
  at /home/jiaming/slither_fp_files/out15125.sol(2532)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |
    |        stakeNodes[node.next].prev = node.prev;
  > |        stakeNodes[node.prev].next = node.next;
    |
    |        delete stakeNodes[id];
  at /home/jiaming/slither_fp_files/out15125.sol(2533)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |        stakeNodes[node.prev].next = node.next;
    |
  > |        delete stakeNodes[id];
    |        numStakers--;
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(2535)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |
    |        delete stakeNodes[id];
  > |        numStakers--;
    |    }
    |
  at /home/jiaming/slither_fp_files/out15125.sol(2536)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |        uint newStakedAmount = stakedAmounts[_staker];
    |        if (newStakedAmount == 0) {
  > |            isRanked[_staker] = false;
    |            removeStakerFromArray(_staker);
    |        } else if (isRanked[_staker]) {
  at /home/jiaming/slither_fp_files/out15125.sol(2544)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |            insertNodeSorted(newStakedAmount, _staker);
    |        } else {
  > |            isRanked[_staker] = true;
    |            insertNodeSorted(newStakedAmount, _staker);
    |        }
  at /home/jiaming/slither_fp_files/out15125.sol(2550)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned is DBC {
    |
    |    // FIELDS
  at /home/jiaming/slither_fp_files/out15125.sol(770)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    function Owned() { owner = msg.sender; }
    |
  > |    function changeOwner(address ofNewOwner) pre_cond(isOwner()) { owner = ofNewOwner; }
    |
    |    // PRE, POST, INVARIANT CONDITIONS
  at /home/jiaming/slither_fp_files/out15125.sol(780)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    // FIELDS
    |
  > |    address public owner;
    |
    |    // NON-CONSTANT METHODS
  at /home/jiaming/slither_fp_files/out15125.sol(774)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    // PRE, POST, INVARIANT CONDITIONS
    |
  > |    function isOwner() internal returns (bool) { return msg.sender == owner; }
    |
    |}
  at /home/jiaming/slither_fp_files/out15125.sol(784)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function Owned() { owner = msg.sender; }
    |
  > |    function changeOwner(address ofNewOwner) pre_cond(isOwner()) { owner = ofNewOwner; }
    |
    |    // PRE, POST, INVARIANT CONDITIONS
  at /home/jiaming/slither_fp_files/out15125.sol(780)

[33mWarning[0m for LockedEther in contract 'Shares':
    |}
    |
  > |contract Shares is SharesInterface, Asset {
    |
    |    // FIELDS
  at /home/jiaming/slither_fp_files/out15125.sol(612)

[31mViolation[0m for UnrestrictedWrite in contract 'Shares':
    |        // require(_to == msg.sender); // can only use transferFrom to send to self
    |
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/slither_fp_files/out15125.sol(548)

[31mViolation[0m for UnrestrictedWrite in contract 'Shares':
    |
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |
  at /home/jiaming/slither_fp_files/out15125.sol(549)

[31mViolation[0m for UnrestrictedWrite in contract 'Shares':
    |
    |        balances[msg.sender] = sub(balances[msg.sender], _value);
  > |        balances[_to] = add(balances[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out15125.sol(655)

[33mWarning[0m for UnrestrictedWrite in contract 'Shares':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out15125.sol(550)

[33mWarning[0m for UnrestrictedWrite in contract 'Shares':
    |        require(_spender != address(0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out15125.sol(564)

[33mWarning[0m for UnrestrictedWrite in contract 'Shares':
    |        require(balances[_to] + _value >= balances[_to]);
    |
  > |        balances[msg.sender] = sub(balances[msg.sender], _value);
    |        balances[_to] = add(balances[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out15125.sol(654)

[31mViolation[0m for DAO in contract 'SimplePriceFeed':
    |        updateId++;
    |        for (uint i = 0; i < ofAssets.length; ++i) {
  > |            require(registrar.assetIsRegistered(ofAssets[i]));
    |            require(assetsToPrices[ofAssets[i]].timestamp != now); // prevent two updates in one block
    |            assetsToPrices[ofAssets[i]].timestamp = now;
  at /home/jiaming/slither_fp_files/out15125.sol(2222)

[33mWarning[0m for DAO in contract 'SimplePriceFeed':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(52)

[33mWarning[0m for DAO in contract 'SimplePriceFeed':
    |        updateId++;
    |        for (uint i = 0; i < ofAssets.length; ++i) {
  > |            require(registrar.assetIsRegistered(ofAssets[i]));
    |            require(assetsToPrices[ofAssets[i]].timestamp != now); // prevent two updates in one block
    |            assetsToPrices[ofAssets[i]].timestamp = now;
  at /home/jiaming/slither_fp_files/out15125.sol(2222)

[33mWarning[0m for LockedEther in contract 'SimplePriceFeed':
    |}
    |
  > |contract SimplePriceFeed is SimplePriceFeedInterface, DSThing, DBC {
    |
    |    // TYPES
  at /home/jiaming/slither_fp_files/out15125.sol(2112)

[31mViolation[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |
    |    // FIELDS
  > |    mapping(address => Data) public assetsToPrices;
    |
    |    // Constructor fields
  at /home/jiaming/slither_fp_files/out15125.sol(2121)

[31mViolation[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |    }
    |    */
  > |    function getPrice(address ofAsset)
    |        view
    |        returns (uint price, uint timestamp)
  at /home/jiaming/slither_fp_files/out15125.sol(2182)

[33mWarning[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/slither_fp_files/out15125.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/slither_fp_files/out15125.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/slither_fp_files/out15125.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |
    |    // Constructor fields
  > |    address public QUOTE_ASSET; // Asset of a portfolio against which all other assets are priced
    |
    |    // Contract-level variables
  at /home/jiaming/slither_fp_files/out15125.sol(2124)

[33mWarning[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |
    |    // Contract-level variables
  > |    uint public updateId;        // Update counter for this pricefeed; used as a check during investment
    |    CanonicalRegistrar public registrar;
    |    CanonicalPriceFeed public superFeed;
  at /home/jiaming/slither_fp_files/out15125.sol(2127)

[33mWarning[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |    // Contract-level variables
    |    uint public updateId;        // Update counter for this pricefeed; used as a check during investment
  > |    CanonicalRegistrar public registrar;
    |    CanonicalPriceFeed public superFeed;
    |
  at /home/jiaming/slither_fp_files/out15125.sol(2128)

[33mWarning[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |    uint public updateId;        // Update counter for this pricefeed; used as a check during investment
    |    CanonicalRegistrar public registrar;
  > |    CanonicalPriceFeed public superFeed;
    |
    |    // METHODS
  at /home/jiaming/slither_fp_files/out15125.sol(2129)

[33mWarning[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |
    |    // Get pricefeed specific information
  > |    function getQuoteAsset() view returns (address) { return QUOTE_ASSET; }
    |    function getLastUpdateId() view returns (uint) { return updateId; }
    |
  at /home/jiaming/slither_fp_files/out15125.sol(2170)

[33mWarning[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |    // Get pricefeed specific information
    |    function getQuoteAsset() view returns (address) { return QUOTE_ASSET; }
  > |    function getLastUpdateId() view returns (uint) { return updateId; }
    |
    |    /**
  at /home/jiaming/slither_fp_files/out15125.sol(2171)

[33mWarning[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |    }
    |    */
  > |    function getPrices(address[] ofAssets)
    |        view
    |        returns (uint[], uint[])
  at /home/jiaming/slither_fp_files/out15125.sol(2199)

[33mWarning[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |
    |    /// @dev Internal so that feeds inheriting this one are not obligated to have an exposed update(...) method, but can still perform updates
  > |    function _updatePrices(address[] ofAssets, uint[] newPrices)
    |        internal
    |        pre_cond(ofAssets.length == newPrices.length)
  at /home/jiaming/slither_fp_files/out15125.sol(2216)

[33mWarning[0m for UnhandledException in contract 'SimplePriceFeed':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(52)

[33mWarning[0m for UnhandledException in contract 'SimplePriceFeed':
    |        updateId++;
    |        for (uint i = 0; i < ofAssets.length; ++i) {
  > |            require(registrar.assetIsRegistered(ofAssets[i]));
    |            require(assetsToPrices[ofAssets[i]].timestamp != now); // prevent two updates in one block
    |            assetsToPrices[ofAssets[i]].timestamp = now;
  at /home/jiaming/slither_fp_files/out15125.sol(2222)

[31mViolation[0m for UnrestrictedWrite in contract 'SimplePriceFeed':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'SimplePriceFeed':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'SimplePriceFeed':
    |        pre_cond(ofAssets.length == newPrices.length)
    |    {
  > |        updateId++;
    |        for (uint i = 0; i < ofAssets.length; ++i) {
    |            require(registrar.assetIsRegistered(ofAssets[i]));
  at /home/jiaming/slither_fp_files/out15125.sol(2220)

[31mViolation[0m for UnrestrictedWrite in contract 'SimplePriceFeed':
    |            require(registrar.assetIsRegistered(ofAssets[i]));
    |            require(assetsToPrices[ofAssets[i]].timestamp != now); // prevent two updates in one block
  > |            assetsToPrices[ofAssets[i]].timestamp = now;
    |            assetsToPrices[ofAssets[i]].price = newPrices[i];
    |        }
  at /home/jiaming/slither_fp_files/out15125.sol(2224)

[31mViolation[0m for UnrestrictedWrite in contract 'SimplePriceFeed':
    |            require(assetsToPrices[ofAssets[i]].timestamp != now); // prevent two updates in one block
    |            assetsToPrices[ofAssets[i]].timestamp = now;
  > |            assetsToPrices[ofAssets[i]].price = newPrices[i];
    |        }
    |        emit PriceUpdated(keccak256(ofAssets, newPrices));
  at /home/jiaming/slither_fp_files/out15125.sol(2225)

[31mViolation[0m for DAO in contract 'StakingPriceFeed':
    |        updateId++;
    |        for (uint i = 0; i < ofAssets.length; ++i) {
  > |            require(registrar.assetIsRegistered(ofAssets[i]));
    |            require(assetsToPrices[ofAssets[i]].timestamp != now); // prevent two updates in one block
    |            assetsToPrices[ofAssets[i]].timestamp = now;
  at /home/jiaming/slither_fp_files/out15125.sol(2222)

[33mWarning[0m for DAO in contract 'StakingPriceFeed':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(52)

[33mWarning[0m for DAO in contract 'StakingPriceFeed':
    |        updateId++;
    |        for (uint i = 0; i < ofAssets.length; ++i) {
  > |            require(registrar.assetIsRegistered(ofAssets[i]));
    |            require(assetsToPrices[ofAssets[i]].timestamp != now); // prevent two updates in one block
    |            assetsToPrices[ofAssets[i]].timestamp = now;
  at /home/jiaming/slither_fp_files/out15125.sol(2222)

[33mWarning[0m for DAO in contract 'StakingPriceFeed':
    |        auth
    |    {
  > |        require(stakingToken.transferFrom(msg.sender, address(this), amount));
    |        require(stakingToken.approve(stakingContract, amount));
    |        stakingContract.stake(amount, data);
  at /home/jiaming/slither_fp_files/out15125.sol(2260)

[33mWarning[0m for DAO in contract 'StakingPriceFeed':
    |    {
    |        require(stakingToken.transferFrom(msg.sender, address(this), amount));
  > |        require(stakingToken.approve(stakingContract, amount));
    |        stakingContract.stake(amount, data);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(2261)

[33mWarning[0m for DAO in contract 'StakingPriceFeed':
    |        require(stakingToken.transferFrom(msg.sender, address(this), amount));
    |        require(stakingToken.approve(stakingContract, amount));
  > |        stakingContract.stake(amount, data);
    |    }
    |
  at /home/jiaming/slither_fp_files/out15125.sol(2262)

[33mWarning[0m for DAO in contract 'StakingPriceFeed':
    |        auth
    |    {
  > |        uint amountToWithdraw = stakingContract.stakeToWithdraw(address(this));
    |        stakingContract.withdrawStake();
    |        require(stakingToken.transfer(msg.sender, amountToWithdraw));
  at /home/jiaming/slither_fp_files/out15125.sol(2275)

[33mWarning[0m for DAO in contract 'StakingPriceFeed':
    |    {
    |        uint amountToWithdraw = stakingContract.stakeToWithdraw(address(this));
  > |        stakingContract.withdrawStake();
    |        require(stakingToken.transfer(msg.sender, amountToWithdraw));
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(2276)

[33mWarning[0m for DAO in contract 'StakingPriceFeed':
    |        uint amountToWithdraw = stakingContract.stakeToWithdraw(address(this));
    |        stakingContract.withdrawStake();
  > |        require(stakingToken.transfer(msg.sender, amountToWithdraw));
    |    }
    |}
  at /home/jiaming/slither_fp_files/out15125.sol(2277)

[33mWarning[0m for LockedEther in contract 'StakingPriceFeed':
    |}
    |
  > |contract StakingPriceFeed is SimplePriceFeed {
    |
    |    OperatorStaking public stakingContract;
  at /home/jiaming/slither_fp_files/out15125.sol(2231)

[31mViolation[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |
    |    // FIELDS
  > |    mapping(address => Data) public assetsToPrices;
    |
    |    // Constructor fields
  at /home/jiaming/slither_fp_files/out15125.sol(2121)

[31mViolation[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |    }
    |    */
  > |    function getPrice(address ofAsset)
    |        view
    |        returns (uint price, uint timestamp)
  at /home/jiaming/slither_fp_files/out15125.sol(2182)

[31mViolation[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |    /// @param amount Number of tokens to unstake for this feed
    |    /// @param data Data may be needed for some future applications (can be empty for now)
  > |    function unstake(uint amount, bytes data) {
    |        stakingContract.unstake(amount, data);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(2267)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/slither_fp_files/out15125.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/slither_fp_files/out15125.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/slither_fp_files/out15125.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |
    |    // Constructor fields
  > |    address public QUOTE_ASSET; // Asset of a portfolio against which all other assets are priced
    |
    |    // Contract-level variables
  at /home/jiaming/slither_fp_files/out15125.sol(2124)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |
    |    // Contract-level variables
  > |    uint public updateId;        // Update counter for this pricefeed; used as a check during investment
    |    CanonicalRegistrar public registrar;
    |    CanonicalPriceFeed public superFeed;
  at /home/jiaming/slither_fp_files/out15125.sol(2127)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |    // Contract-level variables
    |    uint public updateId;        // Update counter for this pricefeed; used as a check during investment
  > |    CanonicalRegistrar public registrar;
    |    CanonicalPriceFeed public superFeed;
    |
  at /home/jiaming/slither_fp_files/out15125.sol(2128)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |    uint public updateId;        // Update counter for this pricefeed; used as a check during investment
    |    CanonicalRegistrar public registrar;
  > |    CanonicalPriceFeed public superFeed;
    |
    |    // METHODS
  at /home/jiaming/slither_fp_files/out15125.sol(2129)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |
    |    // Get pricefeed specific information
  > |    function getQuoteAsset() view returns (address) { return QUOTE_ASSET; }
    |    function getLastUpdateId() view returns (uint) { return updateId; }
    |
  at /home/jiaming/slither_fp_files/out15125.sol(2170)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |    // Get pricefeed specific information
    |    function getQuoteAsset() view returns (address) { return QUOTE_ASSET; }
  > |    function getLastUpdateId() view returns (uint) { return updateId; }
    |
    |    /**
  at /home/jiaming/slither_fp_files/out15125.sol(2171)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |    }
    |    */
  > |    function getPrices(address[] ofAssets)
    |        view
    |        returns (uint[], uint[])
  at /home/jiaming/slither_fp_files/out15125.sol(2199)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |
    |    /// @dev Internal so that feeds inheriting this one are not obligated to have an exposed update(...) method, but can still perform updates
  > |    function _updatePrices(address[] ofAssets, uint[] newPrices)
    |        internal
    |        pre_cond(ofAssets.length == newPrices.length)
  at /home/jiaming/slither_fp_files/out15125.sol(2216)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |contract StakingPriceFeed is SimplePriceFeed {
    |
  > |    OperatorStaking public stakingContract;
    |    AssetInterface public stakingToken;
    |
  at /home/jiaming/slither_fp_files/out15125.sol(2233)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |
    |    OperatorStaking public stakingContract;
  > |    AssetInterface public stakingToken;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/slither_fp_files/out15125.sol(2234)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |    }
    |
  > |    function withdrawStake()
    |        external
    |        auth
  at /home/jiaming/slither_fp_files/out15125.sol(2271)

[33mWarning[0m for UnhandledException in contract 'StakingPriceFeed':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(52)

[33mWarning[0m for UnhandledException in contract 'StakingPriceFeed':
    |        updateId++;
    |        for (uint i = 0; i < ofAssets.length; ++i) {
  > |            require(registrar.assetIsRegistered(ofAssets[i]));
    |            require(assetsToPrices[ofAssets[i]].timestamp != now); // prevent two updates in one block
    |            assetsToPrices[ofAssets[i]].timestamp = now;
  at /home/jiaming/slither_fp_files/out15125.sol(2222)

[33mWarning[0m for UnhandledException in contract 'StakingPriceFeed':
    |        auth
    |    {
  > |        require(stakingToken.transferFrom(msg.sender, address(this), amount));
    |        require(stakingToken.approve(stakingContract, amount));
    |        stakingContract.stake(amount, data);
  at /home/jiaming/slither_fp_files/out15125.sol(2260)

[33mWarning[0m for UnhandledException in contract 'StakingPriceFeed':
    |    {
    |        require(stakingToken.transferFrom(msg.sender, address(this), amount));
  > |        require(stakingToken.approve(stakingContract, amount));
    |        stakingContract.stake(amount, data);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(2261)

[33mWarning[0m for UnhandledException in contract 'StakingPriceFeed':
    |        require(stakingToken.transferFrom(msg.sender, address(this), amount));
    |        require(stakingToken.approve(stakingContract, amount));
  > |        stakingContract.stake(amount, data);
    |    }
    |
  at /home/jiaming/slither_fp_files/out15125.sol(2262)

[33mWarning[0m for UnhandledException in contract 'StakingPriceFeed':
    |    /// @param data Data may be needed for some future applications (can be empty for now)
    |    function unstake(uint amount, bytes data) {
  > |        stakingContract.unstake(amount, data);
    |    }
    |
  at /home/jiaming/slither_fp_files/out15125.sol(2268)

[33mWarning[0m for UnhandledException in contract 'StakingPriceFeed':
    |        auth
    |    {
  > |        uint amountToWithdraw = stakingContract.stakeToWithdraw(address(this));
    |        stakingContract.withdrawStake();
    |        require(stakingToken.transfer(msg.sender, amountToWithdraw));
  at /home/jiaming/slither_fp_files/out15125.sol(2275)

[33mWarning[0m for UnhandledException in contract 'StakingPriceFeed':
    |    {
    |        uint amountToWithdraw = stakingContract.stakeToWithdraw(address(this));
  > |        stakingContract.withdrawStake();
    |        require(stakingToken.transfer(msg.sender, amountToWithdraw));
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(2276)

[33mWarning[0m for UnhandledException in contract 'StakingPriceFeed':
    |        uint amountToWithdraw = stakingContract.stakeToWithdraw(address(this));
    |        stakingContract.withdrawStake();
  > |        require(stakingToken.transfer(msg.sender, amountToWithdraw));
    |    }
    |}
  at /home/jiaming/slither_fp_files/out15125.sol(2277)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StakingPriceFeed':
    |    /// @param data Data may be needed for some future applications (can be empty for now)
    |    function unstake(uint amount, bytes data) {
  > |        stakingContract.unstake(amount, data);
    |    }
    |
  at /home/jiaming/slither_fp_files/out15125.sol(2268)

[31mViolation[0m for UnrestrictedWrite in contract 'StakingPriceFeed':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'StakingPriceFeed':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'StakingPriceFeed':
    |        pre_cond(ofAssets.length == newPrices.length)
    |    {
  > |        updateId++;
    |        for (uint i = 0; i < ofAssets.length; ++i) {
    |            require(registrar.assetIsRegistered(ofAssets[i]));
  at /home/jiaming/slither_fp_files/out15125.sol(2220)

[31mViolation[0m for UnrestrictedWrite in contract 'StakingPriceFeed':
    |            require(registrar.assetIsRegistered(ofAssets[i]));
    |            require(assetsToPrices[ofAssets[i]].timestamp != now); // prevent two updates in one block
  > |            assetsToPrices[ofAssets[i]].timestamp = now;
    |            assetsToPrices[ofAssets[i]].price = newPrices[i];
    |        }
  at /home/jiaming/slither_fp_files/out15125.sol(2224)

[31mViolation[0m for UnrestrictedWrite in contract 'StakingPriceFeed':
    |            require(assetsToPrices[ofAssets[i]].timestamp != now); // prevent two updates in one block
    |            assetsToPrices[ofAssets[i]].timestamp = now;
  > |            assetsToPrices[ofAssets[i]].price = newPrices[i];
    |        }
    |        emit PriceUpdated(keccak256(ofAssets, newPrices));
  at /home/jiaming/slither_fp_files/out15125.sol(2225)

[33mWarning[0m for LockedEther in contract 'Version':
    |}
    |
  > |contract Version is DBC, Owned, VersionInterface {
    |    // FIELDS
    |
  at /home/jiaming/slither_fp_files/out15125.sol(2984)

[31mViolation[0m for MissingInputValidation in contract 'Version':
    |    function Owned() { owner = msg.sender; }
    |
  > |    function changeOwner(address ofNewOwner) pre_cond(isOwner()) { owner = ofNewOwner; }
    |
    |    // PRE, POST, INVARIANT CONDITIONS
  at /home/jiaming/slither_fp_files/out15125.sol(780)

[31mViolation[0m for MissingInputValidation in contract 'Version':
    |    address public COMPLIANCE; // restrict to Competition compliance module for this version
    |    address[] public listOfFunds; // A complete list of fund addresses created using this version
  > |    mapping (address => address) public managerToFunds; // Links manager address to fund address created using this version
    |
    |    // EVENTS
  at /home/jiaming/slither_fp_files/out15125.sol(3000)

[31mViolation[0m for MissingInputValidation in contract 'Version':
    |    /// @param r ellipitc curve parameter r
    |    /// @param s ellipitc curve parameter s
  > |    function setupFund(
    |        bytes32 ofFundName,
    |        address ofQuoteAsset,
  at /home/jiaming/slither_fp_files/out15125.sol(3046)

[31mViolation[0m for MissingInputValidation in contract 'Version':
    |    /// @param s ellipitc curve parameter s
    |    /// @return signed Whether or not terms and conditions have been read and understood
  > |    function termsAndConditionsAreSigned(uint8 v, bytes32 r, bytes32 s) view returns (bool signed) {
    |        return ecrecover(
    |            // Parity does prepend \x19Ethereum Signed Message:\n{len(message)} before signing.
  at /home/jiaming/slither_fp_files/out15125.sol(3100)

[31mViolation[0m for MissingInputValidation in contract 'Version':
    |    function getFundById(uint withId) view returns (address) { return listOfFunds[withId]; }
    |    function getLastFundId() view returns (uint) { return listOfFunds.length - 1; }
  > |    function getFundByManager(address ofManager) view returns (address) { return managerToFunds[ofManager]; }
    |}
  at /home/jiaming/slither_fp_files/out15125.sol(3119)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    // FIELDS
    |
  > |    address public owner;
    |
    |    // NON-CONSTANT METHODS
  at /home/jiaming/slither_fp_files/out15125.sol(774)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    // PRE, POST, INVARIANT CONDITIONS
    |
  > |    function isOwner() internal returns (bool) { return msg.sender == owner; }
    |
    |}
  at /home/jiaming/slither_fp_files/out15125.sol(784)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |}
    |
  > |contract Version is DBC, Owned, VersionInterface {
    |    // FIELDS
    |
  at /home/jiaming/slither_fp_files/out15125.sol(2984)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    // FIELDS
    |
  > |    bytes32 public constant TERMS_AND_CONDITIONS = 0xD35EBA0B0FF284A240D50F43381D8A1E00F19FBFDBF5162224335251A7D6D154; // Hashed terms and conditions as displayed on IPFS, decoded from base 58
    |
    |    // Constructor fields
  at /home/jiaming/slither_fp_files/out15125.sol(2987)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |
    |    // Constructor fields
  > |    string public VERSION_NUMBER; // SemVer of Melon protocol version
    |    address public MELON_ASSET; // Address of Melon asset contract
    |    address public NATIVE_ASSET; // Address of Fixed quote asset
  at /home/jiaming/slither_fp_files/out15125.sol(2990)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    // Constructor fields
    |    string public VERSION_NUMBER; // SemVer of Melon protocol version
  > |    address public MELON_ASSET; // Address of Melon asset contract
    |    address public NATIVE_ASSET; // Address of Fixed quote asset
    |    address public GOVERNANCE; // Address of Melon protocol governance contract
  at /home/jiaming/slither_fp_files/out15125.sol(2991)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    string public VERSION_NUMBER; // SemVer of Melon protocol version
    |    address public MELON_ASSET; // Address of Melon asset contract
  > |    address public NATIVE_ASSET; // Address of Fixed quote asset
    |    address public GOVERNANCE; // Address of Melon protocol governance contract
    |    address public CANONICAL_PRICEFEED; // Address of the canonical pricefeed
  at /home/jiaming/slither_fp_files/out15125.sol(2992)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    address public MELON_ASSET; // Address of Melon asset contract
    |    address public NATIVE_ASSET; // Address of Fixed quote asset
  > |    address public GOVERNANCE; // Address of Melon protocol governance contract
    |    address public CANONICAL_PRICEFEED; // Address of the canonical pricefeed
    |
  at /home/jiaming/slither_fp_files/out15125.sol(2993)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    address public NATIVE_ASSET; // Address of Fixed quote asset
    |    address public GOVERNANCE; // Address of Melon protocol governance contract
  > |    address public CANONICAL_PRICEFEED; // Address of the canonical pricefeed
    |
    |    // Methods fields
  at /home/jiaming/slither_fp_files/out15125.sol(2994)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |
    |    // Methods fields
  > |    bool public isShutDown; // Governance feature, if yes than setupFund gets blocked and shutDownFund gets opened
    |    address public COMPLIANCE; // restrict to Competition compliance module for this version
    |    address[] public listOfFunds; // A complete list of fund addresses created using this version
  at /home/jiaming/slither_fp_files/out15125.sol(2997)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    // Methods fields
    |    bool public isShutDown; // Governance feature, if yes than setupFund gets blocked and shutDownFund gets opened
  > |    address public COMPLIANCE; // restrict to Competition compliance module for this version
    |    address[] public listOfFunds; // A complete list of fund addresses created using this version
    |    mapping (address => address) public managerToFunds; // Links manager address to fund address created using this version
  at /home/jiaming/slither_fp_files/out15125.sol(2998)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    bool public isShutDown; // Governance feature, if yes than setupFund gets blocked and shutDownFund gets opened
    |    address public COMPLIANCE; // restrict to Competition compliance module for this version
  > |    address[] public listOfFunds; // A complete list of fund addresses created using this version
    |    mapping (address => address) public managerToFunds; // Links manager address to fund address created using this version
    |
  at /home/jiaming/slither_fp_files/out15125.sol(2999)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    // EXTERNAL METHODS
    |
  > |    function shutDown() external pre_cond(msg.sender == GOVERNANCE) { isShutDown = true; }
    |
    |    // PUBLIC METHODS
  at /home/jiaming/slither_fp_files/out15125.sol(3031)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    }
    |
  > |    function getNativeAsset() view returns (address) { return NATIVE_ASSET; }
    |    function getFundById(uint withId) view returns (address) { return listOfFunds[withId]; }
    |    function getLastFundId() view returns (uint) { return listOfFunds.length - 1; }
  at /home/jiaming/slither_fp_files/out15125.sol(3116)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |
    |    function getNativeAsset() view returns (address) { return NATIVE_ASSET; }
  > |    function getFundById(uint withId) view returns (address) { return listOfFunds[withId]; }
    |    function getLastFundId() view returns (uint) { return listOfFunds.length - 1; }
    |    function getFundByManager(address ofManager) view returns (address) { return managerToFunds[ofManager]; }
  at /home/jiaming/slither_fp_files/out15125.sol(3117)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    function getNativeAsset() view returns (address) { return NATIVE_ASSET; }
    |    function getFundById(uint withId) view returns (address) { return listOfFunds[withId]; }
  > |    function getLastFundId() view returns (uint) { return listOfFunds.length - 1; }
    |    function getFundByManager(address ofManager) view returns (address) { return managerToFunds[ofManager]; }
    |}
  at /home/jiaming/slither_fp_files/out15125.sol(3118)

[33mWarning[0m for UnhandledException in contract 'Version':
    |        require(!isShutDown);
    |        require(termsAndConditionsAreSigned(v, r, s));
  > |        require(CompetitionCompliance(COMPLIANCE).isCompetitionAllowed(msg.sender));
    |        require(managerToFunds[msg.sender] == address(0)); // Add limitation for simpler migration process of shutting down and setting up fund
    |        address[] memory melonAsDefaultAsset = new address[](1);
  at /home/jiaming/slither_fp_files/out15125.sol(3061)

[33mWarning[0m for UnhandledException in contract 'Version':
    |        Fund fund = Fund(ofFund);
    |        delete managerToFunds[msg.sender];
  > |        fund.shutDown();
    |        emit FundUpdated(ofFund);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(3089)

[33mWarning[0m for UnhandledException in contract 'Version':
    |    /// @return signed Whether or not terms and conditions have been read and understood
    |    function termsAndConditionsAreSigned(uint8 v, bytes32 r, bytes32 s) view returns (bool signed) {
  > |        return ecrecover(
    |            // Parity does prepend \x19Ethereum Signed Message:\n{len(message)} before signing.
    |            //  Signature order has also been changed in 1.6.7 and upcoming 1.7.x,
  at /home/jiaming/slither_fp_files/out15125.sol(3101)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Version':
    |        require(!isShutDown);
    |        require(termsAndConditionsAreSigned(v, r, s));
  > |        require(CompetitionCompliance(COMPLIANCE).isCompetitionAllowed(msg.sender));
    |        require(managerToFunds[msg.sender] == address(0)); // Add limitation for simpler migration process of shutting down and setting up fund
    |        address[] memory melonAsDefaultAsset = new address[](1);
  at /home/jiaming/slither_fp_files/out15125.sol(3061)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Version':
    |        Fund fund = Fund(ofFund);
    |        delete managerToFunds[msg.sender];
  > |        fund.shutDown();
    |        emit FundUpdated(ofFund);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(3089)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Version':
    |    /// @return signed Whether or not terms and conditions have been read and understood
    |    function termsAndConditionsAreSigned(uint8 v, bytes32 r, bytes32 s) view returns (bool signed) {
  > |        return ecrecover(
    |            // Parity does prepend \x19Ethereum Signed Message:\n{len(message)} before signing.
    |            //  Signature order has also been changed in 1.6.7 and upcoming 1.7.x,
  at /home/jiaming/slither_fp_files/out15125.sol(3101)

[33mWarning[0m for UnrestrictedWrite in contract 'Version':
    |        );
    |        listOfFunds.push(ofFund);
  > |        managerToFunds[msg.sender] = ofFund;
    |        emit FundUpdated(ofFund);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(3078)

[33mWarning[0m for UnrestrictedWrite in contract 'Version':
    |    {
    |        Fund fund = Fund(ofFund);
  > |        delete managerToFunds[msg.sender];
    |        fund.shutDown();
    |        emit FundUpdated(ofFund);
  at /home/jiaming/slither_fp_files/out15125.sol(3088)

[33mWarning[0m for UnrestrictedWrite in contract 'Version':
    |    function Owned() { owner = msg.sender; }
    |
  > |    function changeOwner(address ofNewOwner) pre_cond(isOwner()) { owner = ofNewOwner; }
    |
    |    // PRE, POST, INVARIANT CONDITIONS
  at /home/jiaming/slither_fp_files/out15125.sol(780)

[33mWarning[0m for UnrestrictedWrite in contract 'Version':
    |    // EXTERNAL METHODS
    |
  > |    function shutDown() external pre_cond(msg.sender == GOVERNANCE) { isShutDown = true; }
    |
    |    // PUBLIC METHODS
  at /home/jiaming/slither_fp_files/out15125.sol(3031)

[33mWarning[0m for DAOConstantGas in contract 'WETH9_':
    |        require(balanceOf[msg.sender] >= wad);
    |        balanceOf[msg.sender] -= wad;
  > |        msg.sender.transfer(wad);
    |        Withdrawal(msg.sender, wad);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(381)

[33mWarning[0m for LockedEther in contract 'WETH9_':
    |}
    |
  > |contract WETH9_ {
    |    string public name     = "Wrapped Ether";
    |    string public symbol   = "WETH";
  at /home/jiaming/slither_fp_files/out15125.sol(358)

[31mViolation[0m for MissingInputValidation in contract 'WETH9_':
    |    event  Withdrawal(address indexed src, uint wad);
    |
  > |    mapping (address => uint)                       public  balanceOf;
    |    mapping (address => mapping (address => uint))  public  allowance;
    |
  at /home/jiaming/slither_fp_files/out15125.sol(368)

[31mViolation[0m for MissingInputValidation in contract 'WETH9_':
    |
    |    mapping (address => uint)                       public  balanceOf;
  > |    mapping (address => mapping (address => uint))  public  allowance;
    |
    |    function() public payable {
  at /home/jiaming/slither_fp_files/out15125.sol(369)

[31mViolation[0m for MissingInputValidation in contract 'WETH9_':
    |    }
    |
  > |    function approve(address guy, uint wad) public returns (bool) {
    |        allowance[msg.sender][guy] = wad;
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/slither_fp_files/out15125.sol(389)

[31mViolation[0m for MissingInputValidation in contract 'WETH9_':
    |    }
    |
  > |    function transfer(address dst, uint wad) public returns (bool) {
    |        return transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(395)

[31mViolation[0m for MissingInputValidation in contract 'WETH9_':
    |    }
    |
  > |    function transferFrom(address src, address dst, uint wad)
    |        public
    |        returns (bool)
  at /home/jiaming/slither_fp_files/out15125.sol(399)

[33mWarning[0m for MissingInputValidation in contract 'WETH9_':
    |
    |contract WETH9_ {
  > |    string public name     = "Wrapped Ether";
    |    string public symbol   = "WETH";
    |    uint8  public decimals = 18;
  at /home/jiaming/slither_fp_files/out15125.sol(359)

[33mWarning[0m for MissingInputValidation in contract 'WETH9_':
    |contract WETH9_ {
    |    string public name     = "Wrapped Ether";
  > |    string public symbol   = "WETH";
    |    uint8  public decimals = 18;
    |
  at /home/jiaming/slither_fp_files/out15125.sol(360)

[33mWarning[0m for MissingInputValidation in contract 'WETH9_':
    |    string public name     = "Wrapped Ether";
    |    string public symbol   = "WETH";
  > |    uint8  public decimals = 18;
    |
    |    event  Approval(address indexed src, address indexed guy, uint wad);
  at /home/jiaming/slither_fp_files/out15125.sol(361)

[33mWarning[0m for MissingInputValidation in contract 'WETH9_':
    |        deposit();
    |    }
  > |    function deposit() public payable {
    |        balanceOf[msg.sender] += msg.value;
    |        Deposit(msg.sender, msg.value);
  at /home/jiaming/slither_fp_files/out15125.sol(374)

[33mWarning[0m for MissingInputValidation in contract 'WETH9_':
    |        Deposit(msg.sender, msg.value);
    |    }
  > |    function withdraw(uint wad) public {
    |        require(balanceOf[msg.sender] >= wad);
    |        balanceOf[msg.sender] -= wad;
  at /home/jiaming/slither_fp_files/out15125.sol(378)

[33mWarning[0m for MissingInputValidation in contract 'WETH9_':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return this.balance;
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(385)

[33mWarning[0m for TODAmount in contract 'WETH9_':
    |        require(balanceOf[msg.sender] >= wad);
    |        balanceOf[msg.sender] -= wad;
  > |        msg.sender.transfer(wad);
    |        Withdrawal(msg.sender, wad);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(381)

[33mWarning[0m for TODReceiver in contract 'WETH9_':
    |        require(balanceOf[msg.sender] >= wad);
    |        balanceOf[msg.sender] -= wad;
  > |        msg.sender.transfer(wad);
    |        Withdrawal(msg.sender, wad);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(381)

[33mWarning[0m for UnhandledException in contract 'WETH9_':
    |        require(balanceOf[msg.sender] >= wad);
    |        balanceOf[msg.sender] -= wad;
  > |        msg.sender.transfer(wad);
    |        Withdrawal(msg.sender, wad);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(381)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'WETH9_':
    |        require(balanceOf[msg.sender] >= wad);
    |        balanceOf[msg.sender] -= wad;
  > |        msg.sender.transfer(wad);
    |        Withdrawal(msg.sender, wad);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(381)

[33mWarning[0m for UnrestrictedWrite in contract 'WETH9_':
    |    }
    |    function deposit() public payable {
  > |        balanceOf[msg.sender] += msg.value;
    |        Deposit(msg.sender, msg.value);
    |    }
  at /home/jiaming/slither_fp_files/out15125.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'WETH9_':
    |    function withdraw(uint wad) public {
    |        require(balanceOf[msg.sender] >= wad);
  > |        balanceOf[msg.sender] -= wad;
    |        msg.sender.transfer(wad);
    |        Withdrawal(msg.sender, wad);
  at /home/jiaming/slither_fp_files/out15125.sol(380)

[33mWarning[0m for UnrestrictedWrite in contract 'WETH9_':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        allowance[msg.sender][guy] = wad;
    |        Approval(msg.sender, guy, wad);
    |        return true;
  at /home/jiaming/slither_fp_files/out15125.sol(390)

[33mWarning[0m for UnrestrictedWrite in contract 'WETH9_':
    |        if (src != msg.sender && allowance[src][msg.sender] != uint(-1)) {
    |            require(allowance[src][msg.sender] >= wad);
  > |            allowance[src][msg.sender] -= wad;
    |        }
    |
  at /home/jiaming/slither_fp_files/out15125.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'WETH9_':
    |        }
    |
  > |        balanceOf[src] -= wad;
    |        balanceOf[dst] += wad;
    |
  at /home/jiaming/slither_fp_files/out15125.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'WETH9_':
    |
    |        balanceOf[src] -= wad;
  > |        balanceOf[dst] += wad;
    |
    |        Transfer(src, dst, wad);
  at /home/jiaming/slither_fp_files/out15125.sol(411)


