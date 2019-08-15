Processing contract: /home/jiaming/slither_fp_files/out18160.sol:Asset
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:AssetInterface
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:CanonicalPriceFeed
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:CanonicalRegistrar
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:Competition
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:CompetitionCompliance
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:CompetitionInterface
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:ComplianceInterface
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:DBC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:DSAuthority
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:DSExec
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:DSGroup
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:DSGroupFactory
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:DSNote
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:DSThing
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:ERC20Interface
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:Fund
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:FundInterface
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:GenericExchangeInterface
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:OperatorStaking
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:RiskMgmtInterface
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:Shares
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:SharesInterface
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:SimplePriceFeed
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:SimplePriceFeedInterface
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:StakingPriceFeed
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:Version
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out18160.sol:VersionInterface
[33mWarning[0m for LockedEther in contract 'Asset':
    |}
    |
  > |contract Asset is DSMath, ERC20Interface {
    |
    |    // DATA STRUCTURES
  at /home/jiaming/slither_fp_files/out18160.sol(431)

[31mViolation[0m for MissingInputValidation in contract 'Asset':
    |     * @return Returns success of function call
    |     */
  > |    function transfer(address _to, uint _value)
    |        public
    |        returns (bool success)
  at /home/jiaming/slither_fp_files/out18160.sol(449)

[31mViolation[0m for MissingInputValidation in contract 'Asset':
    |    /// @param _value Number of approved tokens.
    |    /// @return Returns success of function call.
  > |    function approve(address _spender, uint _value) public returns (bool) {
    |        require(_spender != address(0));
    |
  at /home/jiaming/slither_fp_files/out18160.sol(494)

[31mViolation[0m for MissingInputValidation in contract 'Asset':
    |    /// @param _spender Address of token spender.
    |    /// @return Returns remaining allowance for spender.
  > |    function allowance(address _owner, address _spender)
    |        constant
    |        public
  at /home/jiaming/slither_fp_files/out18160.sol(509)

[31mViolation[0m for MissingInputValidation in contract 'Asset':
    |    /// @param _owner Address of token owner.
    |    /// @return Returns balance of owner.
  > |    function balanceOf(address _owner) constant public returns (uint) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(520)

[33mWarning[0m for MissingInputValidation in contract 'Asset':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(364)

[33mWarning[0m for MissingInputValidation in contract 'Asset':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(367)

[33mWarning[0m for MissingInputValidation in contract 'Asset':
    |    mapping (address => uint) balances;
    |    mapping (address => mapping (address => uint)) allowed;
  > |    uint public _totalSupply;
    |
    |    // PUBLIC METHODS
  at /home/jiaming/slither_fp_files/out18160.sol(437)

[33mWarning[0m for MissingInputValidation in contract 'Asset':
    |    /// @param _value Number of tokens to transfer.
    |    /// @return Returns success of function call.
  > |    function transferFrom(address _from, address _to, uint _value)
    |        public
    |        returns (bool)
  at /home/jiaming/slither_fp_files/out18160.sol(469)

[33mWarning[0m for MissingInputValidation in contract 'Asset':
    |    }
    |
  > |    function totalSupply() view public returns (uint) {
    |        return _totalSupply;
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(524)

[31mViolation[0m for UnrestrictedWrite in contract 'Asset':
    |
    |        balances[msg.sender] = sub(balances[msg.sender], _value);
  > |        balances[_to] = add(balances[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out18160.sol(457)

[31mViolation[0m for UnrestrictedWrite in contract 'Asset':
    |        // require(_to == msg.sender); // can only use transferFrom to send to self
    |
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/slither_fp_files/out18160.sol(481)

[31mViolation[0m for UnrestrictedWrite in contract 'Asset':
    |
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |
  at /home/jiaming/slither_fp_files/out18160.sol(482)

[33mWarning[0m for UnrestrictedWrite in contract 'Asset':
    |        require(balances[_to] + _value >= balances[_to]);
    |
  > |        balances[msg.sender] = sub(balances[msg.sender], _value);
    |        balances[_to] = add(balances[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out18160.sol(456)

[33mWarning[0m for UnrestrictedWrite in contract 'Asset':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out18160.sol(483)

[33mWarning[0m for UnrestrictedWrite in contract 'Asset':
    |        require(_spender != address(0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out18160.sol(497)

[31mViolation[0m for LockedEther in contract 'CanonicalRegistrar':
    |}
    |
  > |contract CanonicalRegistrar is DSThing, DBC {
    |
    |    // TYPES
  at /home/jiaming/slither_fp_files/out18160.sol(1777)

[33mWarning[0m for UnhandledException in contract 'CanonicalRegistrar':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(318)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CanonicalRegistrar':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |pragma solidity ^0.4.13;
    |
  > |interface FundInterface {
    |
    |    // EVENTS
  at /home/jiaming/slither_fp_files/out18160.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |}
    |
  > |contract CanonicalRegistrar is DSThing, DBC {
    |
    |    // TYPES
  at /home/jiaming/slither_fp_files/out18160.sol(1777)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |        pre_cond(!assetInformation[ofAsset].exists)
    |    {
  > |        assetInformation[ofAsset].exists = true;
    |        registeredAssets.push(ofAsset);
    |        updateAsset(
  at /home/jiaming/slither_fp_files/out18160.sol(1845)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |    {
    |        assetInformation[ofAsset].exists = true;
  > |        registeredAssets.push(ofAsset);
    |        updateAsset(
    |            ofAsset,
  at /home/jiaming/slither_fp_files/out18160.sol(1846)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |        pre_cond(!exchangeInformation[ofExchange].exists)
    |    {
  > |        exchangeInformation[ofExchange].exists = true;
    |        registeredExchanges.push(ofExchange);
    |        updateExchange(
  at /home/jiaming/slither_fp_files/out18160.sol(1877)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |    {
    |        exchangeInformation[ofExchange].exists = true;
  > |        registeredExchanges.push(ofExchange);
    |        updateExchange(
    |            ofExchange,
  at /home/jiaming/slither_fp_files/out18160.sol(1878)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |    {
    |        Asset asset = assetInformation[ofAsset];
  > |        asset.name = inputName;
    |        asset.symbol = inputSymbol;
    |        asset.decimals = inputDecimals;
  at /home/jiaming/slither_fp_files/out18160.sol(1911)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |        Asset asset = assetInformation[ofAsset];
    |        asset.name = inputName;
  > |        asset.symbol = inputSymbol;
    |        asset.decimals = inputDecimals;
    |        asset.url = inputUrl;
  at /home/jiaming/slither_fp_files/out18160.sol(1912)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |        asset.name = inputName;
    |        asset.symbol = inputSymbol;
  > |        asset.decimals = inputDecimals;
    |        asset.url = inputUrl;
    |        asset.ipfsHash = inputIpfsHash;
  at /home/jiaming/slither_fp_files/out18160.sol(1913)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |    {
    |        Exchange exchange = exchangeInformation[ofExchange];
  > |        exchange.adapter = ofExchangeAdapter;
    |        exchange.takesCustody = inputTakesCustody;
    |        exchange.functionSignatures = inputFunctionSignatures;
  at /home/jiaming/slither_fp_files/out18160.sol(1932)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |        Exchange exchange = exchangeInformation[ofExchange];
    |        exchange.adapter = ofExchangeAdapter;
  > |        exchange.takesCustody = inputTakesCustody;
    |        exchange.functionSignatures = inputFunctionSignatures;
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(1933)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |    {
    |        require(registeredAssets[assetIndex] == ofAsset);
  > |        delete assetInformation[ofAsset]; // Sets exists boolean to false
    |        delete registeredAssets[assetIndex];
    |        for (uint i = assetIndex; i < registeredAssets.length-1; i++) {
  at /home/jiaming/slither_fp_files/out18160.sol(1949)

[33mWarning[0m for UnrestrictedWrite in contract 'CanonicalRegistrar':
    |    {
    |        require(registeredExchanges[exchangeIndex] == ofExchange);
  > |        delete exchangeInformation[ofExchange];
    |        delete registeredExchanges[exchangeIndex];
    |        for (uint i = exchangeIndex; i < registeredExchanges.length-1; i++) {
  at /home/jiaming/slither_fp_files/out18160.sol(1970)

[31mViolation[0m for DAOConstantGas in contract 'Competition':
    |        fundContract.requestInvestment(payoutQuantity, getEtherValue(payoutQuantity), MELON_ASSET);
    |        fundContract.executeRequest(fundContract.getLastRequestId());
  > |        custodian.transfer(msg.value);
    |
    |        // Emit Register event
  at /home/jiaming/slither_fp_files/out18160.sol(1496)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |    /// @return Whether or not terms and conditions have been read and understood
    |    function termsAndConditionsAreSigned(address byManager, uint8 v, bytes32 r, bytes32 s) view returns (bool) {
  > |        return ecrecover(
    |            // Parity does prepend \x19Ethereum Signed Message:\n{len(message)} before signing.
    |            //  Signature order has also been changed in 1.6.7 and upcoming 1.7.x,
  at /home/jiaming/slither_fp_files/out18160.sol(1380)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |    /// @return Get value of MLN amount in Ether
    |    function getEtherValue(uint amount) view returns (uint) {
  > |        address feedAddress = Version(COMPETITION_VERSION).CANONICAL_PRICEFEED();
    |        var (isRecent, price, ) = CanonicalPriceFeed(feedAddress).getPriceInfo(MELON_ASSET);
    |        if (!isRecent) {
  at /home/jiaming/slither_fp_files/out18160.sol(1422)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |    function getEtherValue(uint amount) view returns (uint) {
    |        address feedAddress = Version(COMPETITION_VERSION).CANONICAL_PRICEFEED();
  > |        var (isRecent, price, ) = CanonicalPriceFeed(feedAddress).getPriceInfo(MELON_ASSET);
    |        if (!isRecent) {
    |            revert();
  at /home/jiaming/slither_fp_files/out18160.sol(1423)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |    )
    |        payable
  > |        pre_cond(isCompetitionActive() && !Version(COMPETITION_VERSION).isShutDown())
    |        pre_cond(termsAndConditionsAreSigned(msg.sender, v, r, s) && isWhitelisted(msg.sender))
    |    {
  at /home/jiaming/slither_fp_files/out18160.sol(1477)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |        require(add(currentTotalBuyin, msg.value) <= totalMaxBuyin && registrants.length < maxRegistrants);
    |        require(msg.value <= whitelistantToMaxBuyin[msg.sender]);
  > |        require(Version(COMPETITION_VERSION).getFundByManager(msg.sender) == fund);
    |
    |        // Calculate Payout Quantity, invest the quantity in registrant's fund
  at /home/jiaming/slither_fp_files/out18160.sol(1483)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |        currentTotalBuyin = add(currentTotalBuyin, msg.value);
    |        FundInterface fundContract = FundInterface(fund);
  > |        MELON_CONTRACT.approve(fund, payoutQuantity);
    |
    |        // Give payoutRequest MLN in return for msg.value
  at /home/jiaming/slither_fp_files/out18160.sol(1491)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |
    |        // Give payoutRequest MLN in return for msg.value
  > |        fundContract.requestInvestment(payoutQuantity, getEtherValue(payoutQuantity), MELON_ASSET);
    |        fundContract.executeRequest(fundContract.getLastRequestId());
    |        custodian.transfer(msg.value);
  at /home/jiaming/slither_fp_files/out18160.sol(1494)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |        // Give payoutRequest MLN in return for msg.value
    |        fundContract.requestInvestment(payoutQuantity, getEtherValue(payoutQuantity), MELON_ASSET);
  > |        fundContract.executeRequest(fundContract.getLastRequestId());
    |        custodian.transfer(msg.value);
    |
  at /home/jiaming/slither_fp_files/out18160.sol(1495)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |        fundContract.requestInvestment(payoutQuantity, getEtherValue(payoutQuantity), MELON_ASSET);
    |        fundContract.executeRequest(fundContract.getLastRequestId());
  > |        custodian.transfer(msg.value);
    |
    |        // Emit Register event
  at /home/jiaming/slither_fp_files/out18160.sol(1496)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |        pre_cond(isOwner())
    |    {
  > |        MELON_CONTRACT.transfer(to, amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out18160.sol(1532)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |        pre_cond(getRegistrantFund(msg.sender) != address(0))
    |    {
  > |        require(block.timestamp >= endTime || Version(COMPETITION_VERSION).isShutDown());
    |        Registrant registrant  = registrants[getRegistrantId(msg.sender)];
    |        require(registrant.isRewarded == false);
  at /home/jiaming/slither_fp_files/out18160.sol(1539)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |        registrant.isRewarded = true;
    |        // Is this safe to assume this or should we transfer all the balance instead?
  > |        uint balance = AssetInterface(registrant.fund).balanceOf(address(this));
    |        require(AssetInterface(registrant.fund).transfer(registrant.registrant, balance));
    |
  at /home/jiaming/slither_fp_files/out18160.sol(1544)

[33mWarning[0m for UnhandledException in contract 'Competition':
    |        // Is this safe to assume this or should we transfer all the balance instead?
    |        uint balance = AssetInterface(registrant.fund).balanceOf(address(this));
  > |        require(AssetInterface(registrant.fund).transfer(registrant.registrant, balance));
    |
    |        // Emit ClaimedReward event
  at /home/jiaming/slither_fp_files/out18160.sol(1545)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |    /// @return Whether or not terms and conditions have been read and understood
    |    function termsAndConditionsAreSigned(address byManager, uint8 v, bytes32 r, bytes32 s) view returns (bool) {
  > |        return ecrecover(
    |            // Parity does prepend \x19Ethereum Signed Message:\n{len(message)} before signing.
    |            //  Signature order has also been changed in 1.6.7 and upcoming 1.7.x,
  at /home/jiaming/slither_fp_files/out18160.sol(1380)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |    /// @return Get value of MLN amount in Ether
    |    function getEtherValue(uint amount) view returns (uint) {
  > |        address feedAddress = Version(COMPETITION_VERSION).CANONICAL_PRICEFEED();
    |        var (isRecent, price, ) = CanonicalPriceFeed(feedAddress).getPriceInfo(MELON_ASSET);
    |        if (!isRecent) {
  at /home/jiaming/slither_fp_files/out18160.sol(1422)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |    function getEtherValue(uint amount) view returns (uint) {
    |        address feedAddress = Version(COMPETITION_VERSION).CANONICAL_PRICEFEED();
  > |        var (isRecent, price, ) = CanonicalPriceFeed(feedAddress).getPriceInfo(MELON_ASSET);
    |        if (!isRecent) {
    |            revert();
  at /home/jiaming/slither_fp_files/out18160.sol(1423)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |    )
    |        payable
  > |        pre_cond(isCompetitionActive() && !Version(COMPETITION_VERSION).isShutDown())
    |        pre_cond(termsAndConditionsAreSigned(msg.sender, v, r, s) && isWhitelisted(msg.sender))
    |    {
  at /home/jiaming/slither_fp_files/out18160.sol(1477)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |        require(add(currentTotalBuyin, msg.value) <= totalMaxBuyin && registrants.length < maxRegistrants);
    |        require(msg.value <= whitelistantToMaxBuyin[msg.sender]);
  > |        require(Version(COMPETITION_VERSION).getFundByManager(msg.sender) == fund);
    |
    |        // Calculate Payout Quantity, invest the quantity in registrant's fund
  at /home/jiaming/slither_fp_files/out18160.sol(1483)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |        currentTotalBuyin = add(currentTotalBuyin, msg.value);
    |        FundInterface fundContract = FundInterface(fund);
  > |        MELON_CONTRACT.approve(fund, payoutQuantity);
    |
    |        // Give payoutRequest MLN in return for msg.value
  at /home/jiaming/slither_fp_files/out18160.sol(1491)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |
    |        // Give payoutRequest MLN in return for msg.value
  > |        fundContract.requestInvestment(payoutQuantity, getEtherValue(payoutQuantity), MELON_ASSET);
    |        fundContract.executeRequest(fundContract.getLastRequestId());
    |        custodian.transfer(msg.value);
  at /home/jiaming/slither_fp_files/out18160.sol(1494)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |        // Give payoutRequest MLN in return for msg.value
    |        fundContract.requestInvestment(payoutQuantity, getEtherValue(payoutQuantity), MELON_ASSET);
  > |        fundContract.executeRequest(fundContract.getLastRequestId());
    |        custodian.transfer(msg.value);
    |
  at /home/jiaming/slither_fp_files/out18160.sol(1495)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |        pre_cond(isOwner())
    |    {
  > |        MELON_CONTRACT.transfer(to, amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out18160.sol(1532)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |        pre_cond(getRegistrantFund(msg.sender) != address(0))
    |    {
  > |        require(block.timestamp >= endTime || Version(COMPETITION_VERSION).isShutDown());
    |        Registrant registrant  = registrants[getRegistrantId(msg.sender)];
    |        require(registrant.isRewarded == false);
  at /home/jiaming/slither_fp_files/out18160.sol(1539)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |        registrant.isRewarded = true;
    |        // Is this safe to assume this or should we transfer all the balance instead?
  > |        uint balance = AssetInterface(registrant.fund).balanceOf(address(this));
    |        require(AssetInterface(registrant.fund).transfer(registrant.registrant, balance));
    |
  at /home/jiaming/slither_fp_files/out18160.sol(1544)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Competition':
    |        // Is this safe to assume this or should we transfer all the balance instead?
    |        uint balance = AssetInterface(registrant.fund).balanceOf(address(this));
  > |        require(AssetInterface(registrant.fund).transfer(registrant.registrant, balance));
    |
    |        // Emit ClaimedReward event
  at /home/jiaming/slither_fp_files/out18160.sol(1545)

[33mWarning[0m for UnrestrictedWrite in contract 'Competition':
    |    function Owned() { owner = msg.sender; }
    |
  > |    function changeOwner(address ofNewOwner) pre_cond(isOwner()) { owner = ofNewOwner; }
    |
    |    // PRE, POST, INVARIANT CONDITIONS
  at /home/jiaming/slither_fp_files/out18160.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'Competition':
    |        uint payoutQuantity = calculatePayout(msg.value);
    |        registeredFundToRegistrants[fund] = msg.sender;
  > |        registrantToRegistrantIds[msg.sender] = RegistrantId({id: registrants.length, exists: true});
    |        currentTotalBuyin = add(currentTotalBuyin, msg.value);
    |        FundInterface fundContract = FundInterface(fund);
  at /home/jiaming/slither_fp_files/out18160.sol(1488)

[33mWarning[0m for LockedEther in contract 'CompetitionCompliance':
    |}
    |
  > |contract CompetitionCompliance is ComplianceInterface, DBC, Owned {
    |
    |    address public competitionAddress;
  at /home/jiaming/slither_fp_files/out18160.sol(196)

[31mViolation[0m for MissingInputValidation in contract 'CompetitionCompliance':
    |    function Owned() { owner = msg.sender; }
    |
  > |    function changeOwner(address ofNewOwner) pre_cond(isOwner()) { owner = ofNewOwner; }
    |
    |    // PRE, POST, INVARIANT CONDITIONS
  at /home/jiaming/slither_fp_files/out18160.sol(188)

[31mViolation[0m for MissingInputValidation in contract 'CompetitionCompliance':
    |    /// @param x Address
    |    /// @return Whether the address is whitelisted
  > |    function isCompetitionAllowed(
    |        address x
    |    )
  at /home/jiaming/slither_fp_files/out18160.sol(245)

[31mViolation[0m for MissingInputValidation in contract 'CompetitionCompliance':
    |    /// @notice Changes the competition address
    |    /// @param ofCompetition Address of the competition contract
  > |    function changeCompetitionAddress(
    |        address ofCompetition
    |    )
  at /home/jiaming/slither_fp_files/out18160.sol(259)

[33mWarning[0m for MissingInputValidation in contract 'CompetitionCompliance':
    |    // FIELDS
    |
  > |    address public owner;
    |
    |    // NON-CONSTANT METHODS
  at /home/jiaming/slither_fp_files/out18160.sol(182)

[33mWarning[0m for MissingInputValidation in contract 'CompetitionCompliance':
    |    // PRE, POST, INVARIANT CONDITIONS
    |
  > |    function isOwner() internal returns (bool) { return msg.sender == owner; }
    |
    |}
  at /home/jiaming/slither_fp_files/out18160.sol(192)

[33mWarning[0m for MissingInputValidation in contract 'CompetitionCompliance':
    |contract CompetitionCompliance is ComplianceInterface, DBC, Owned {
    |
  > |    address public competitionAddress;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/slither_fp_files/out18160.sol(198)

[33mWarning[0m for MissingInputValidation in contract 'CompetitionCompliance':
    |    /// @param shareQuantity Quantity of shares times 10 ** 18 requested to be received
    |    /// @return Whether identity is eligible to invest in a Melon fund.
  > |    function isInvestmentPermitted(
    |        address ofParticipant,
    |        uint256 giveQuantity,
  at /home/jiaming/slither_fp_files/out18160.sol(215)

[33mWarning[0m for MissingInputValidation in contract 'CompetitionCompliance':
    |    /// @param receiveQuantity Quantity of Melon token times 10 ** 18 requested to receive for shareQuantity
    |    /// @return isEligible Whether identity is eligible to redeem from a Melon fund.
  > |    function isRedemptionPermitted(
    |        address ofParticipant,
    |        uint256 shareQuantity,
  at /home/jiaming/slither_fp_files/out18160.sol(231)

[33mWarning[0m for UnhandledException in contract 'CompetitionCompliance':
    |        returns (bool)
    |    {
  > |        return CompetitionInterface(competitionAddress).isWhitelisted(x) && CompetitionInterface(competitionAddress).isCompetitionActive();
    |    }
    |
  at /home/jiaming/slither_fp_files/out18160.sol(251)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CompetitionCompliance':
    |        returns (bool)
    |    {
  > |        return CompetitionInterface(competitionAddress).isWhitelisted(x) && CompetitionInterface(competitionAddress).isCompetitionActive();
    |    }
    |
  at /home/jiaming/slither_fp_files/out18160.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'CompetitionCompliance':
    |    function Owned() { owner = msg.sender; }
    |
  > |    function changeOwner(address ofNewOwner) pre_cond(isOwner()) { owner = ofNewOwner; }
    |
    |    // PRE, POST, INVARIANT CONDITIONS
  at /home/jiaming/slither_fp_files/out18160.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'CompetitionCompliance':
    |        pre_cond(isOwner())
    |    {
  > |        competitionAddress = ofCompetition;
    |    }
    |
  at /home/jiaming/slither_fp_files/out18160.sol(264)

[33mWarning[0m for LockedEther in contract 'DBC':
    |}
    |
  > |contract DBC {
    |
    |    // MODIFIERS
  at /home/jiaming/slither_fp_files/out18160.sol(157)

[33mWarning[0m for DAO in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(318)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |}
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/slither_fp_files/out18160.sol(280)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/slither_fp_files/out18160.sol(281)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/slither_fp_files/out18160.sol(282)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/slither_fp_files/out18160.sol(310)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(318)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(293)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(301)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |}
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/slither_fp_files/out18160.sol(275)

[33mWarning[0m for LockedEther in contract 'DSExec':
    |}
    |
  > |contract DSExec {
    |    function tryExec( address target, bytes calldata, uint value)
    |             internal
  at /home/jiaming/slither_fp_files/out18160.sol(323)

[33mWarning[0m for DAO in contract 'DSGroup':
    |             returns (bool call_ret)
    |    {
  > |        return target.call.value(value)(calldata);
    |    }
    |    function exec( address target, bytes calldata, uint value)
  at /home/jiaming/slither_fp_files/out18160.sol(328)

[33mWarning[0m for UnhandledException in contract 'DSGroup':
    |             returns (bool call_ret)
    |    {
  > |        return target.call.value(value)(calldata);
    |    }
    |    function exec( address target, bytes calldata, uint value)
  at /home/jiaming/slither_fp_files/out18160.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'DSGroup':
    |        assert(!confirmedBy[id][msg.sender]);
    |
  > |        confirmedBy[id][msg.sender] = true;
    |        actions[id].confirmations++;
    |
  at /home/jiaming/slither_fp_files/out18160.sol(1668)

[33mWarning[0m for LockedEther in contract 'DSGroupFactory':
    |}
    |
  > |contract DSGroupFactory is DSNote {
    |    mapping (address => bool)  public  isGroup;
    |
  at /home/jiaming/slither_fp_files/out18160.sol(1724)

[31mViolation[0m for MissingInputValidation in contract 'DSGroupFactory':
    |
    |contract DSGroupFactory is DSNote {
  > |    mapping (address => bool)  public  isGroup;
    |
    |    function newGroup(
  at /home/jiaming/slither_fp_files/out18160.sol(1725)

[31mViolation[0m for MissingInputValidation in contract 'DSGroupFactory':
    |    mapping (address => bool)  public  isGroup;
    |
  > |    function newGroup(
    |        address[]  members,
    |        uint       quorum,
  at /home/jiaming/slither_fp_files/out18160.sol(1727)

[33mWarning[0m for MissingInputValidation in contract 'DSGroupFactory':
    |}
    |
  > |contract DSGroupFactory is DSNote {
    |    mapping (address => bool)  public  isGroup;
    |
  at /home/jiaming/slither_fp_files/out18160.sol(1724)

[31mViolation[0m for UnrestrictedWrite in contract 'DSGroupFactory':
    |    ) note returns (DSGroup group) {
    |        group = new DSGroup(members, quorum, window);
  > |        isGroup[group] = true;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out18160.sol(1733)

[33mWarning[0m for LockedEther in contract 'DSMath':
    |}
    |
  > |contract DSMath {
    |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
  at /home/jiaming/slither_fp_files/out18160.sol(363)

[33mWarning[0m for LockedEther in contract 'DSNote':
    |}
    |
  > |contract DSNote {
    |    event LogNote(
    |        bytes4   indexed  sig,
  at /home/jiaming/slither_fp_files/out18160.sol(1552)

[33mWarning[0m for DAO in contract 'DSThing':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(318)

[33mWarning[0m for LockedEther in contract 'DSThing':
    |}
    |
  > |contract DSThing is DSAuth, DSNote, DSMath {
    |
    |    function S(string s) internal pure returns (bytes4) {
  at /home/jiaming/slither_fp_files/out18160.sol(1737)

[33mWarning[0m for MissingInputValidation in contract 'DSThing':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/slither_fp_files/out18160.sol(281)

[33mWarning[0m for MissingInputValidation in contract 'DSThing':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/slither_fp_files/out18160.sol(282)

[33mWarning[0m for MissingInputValidation in contract 'DSThing':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/slither_fp_files/out18160.sol(310)

[33mWarning[0m for UnhandledException in contract 'DSThing':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(318)

[31mViolation[0m for UnrestrictedWrite in contract 'DSThing':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(293)

[31mViolation[0m for UnrestrictedWrite in contract 'DSThing':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(301)

[31mViolation[0m for LockedEther in contract 'OperatorStaking':
    |}
    |
  > |contract OperatorStaking is DBC {
    |
    |    // EVENTS
  at /home/jiaming/slither_fp_files/out18160.sol(2267)

[33mWarning[0m for UnhandledException in contract 'OperatorStaking':
    |        stakedAmounts[msg.sender] += amount;
    |        updateStakerRanking(msg.sender);
  > |        require(stakingToken.transferFrom(msg.sender, address(this), amount));
    |    }
    |
  at /home/jiaming/slither_fp_files/out18160.sol(2335)

[33mWarning[0m for UnhandledException in contract 'OperatorStaking':
    |        uint amount = stakeToWithdraw[msg.sender];
    |        stakeToWithdraw[msg.sender] = 0;
  > |        require(stakingToken.transfer(msg.sender, amount));
    |    }
    |
  at /home/jiaming/slither_fp_files/out18160.sol(2362)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OperatorStaking':
    |        stakedAmounts[msg.sender] += amount;
    |        updateStakerRanking(msg.sender);
  > |        require(stakingToken.transferFrom(msg.sender, address(this), amount));
    |    }
    |
  at /home/jiaming/slither_fp_files/out18160.sol(2335)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OperatorStaking':
    |        uint amount = stakeToWithdraw[msg.sender];
    |        stakeToWithdraw[msg.sender] = 0;
  > |        require(stakingToken.transfer(msg.sender, amount));
    |    }
    |
  at /home/jiaming/slither_fp_files/out18160.sol(2362)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |pragma solidity ^0.4.13;
    |
  > |interface FundInterface {
    |
    |    // EVENTS
  at /home/jiaming/slither_fp_files/out18160.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |        pre_cond(amount >= minimumStake)
    |    {
  > |        stakedAmounts[msg.sender] += amount;
    |        updateStakerRanking(msg.sender);
    |        require(stakingToken.transferFrom(msg.sender, address(this), amount));
  at /home/jiaming/slither_fp_files/out18160.sol(2333)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |        require(postStake >= minimumStake || postStake == 0);
    |        require(stakedAmounts[msg.sender] >= amount);
  > |        latestUnstakeTime[msg.sender] = block.timestamp;
    |        stakedAmounts[msg.sender] -= amount;
    |        stakeToWithdraw[msg.sender] += amount;
  at /home/jiaming/slither_fp_files/out18160.sol(2348)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |        require(stakedAmounts[msg.sender] >= amount);
    |        latestUnstakeTime[msg.sender] = block.timestamp;
  > |        stakedAmounts[msg.sender] -= amount;
    |        stakeToWithdraw[msg.sender] += amount;
    |        updateStakerRanking(msg.sender);
  at /home/jiaming/slither_fp_files/out18160.sol(2349)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |        latestUnstakeTime[msg.sender] = block.timestamp;
    |        stakedAmounts[msg.sender] -= amount;
  > |        stakeToWithdraw[msg.sender] += amount;
    |        updateStakerRanking(msg.sender);
    |        emit Unstaked(msg.sender, amount, stakedAmounts[msg.sender], data);
  at /home/jiaming/slither_fp_files/out18160.sol(2350)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |    {
    |        uint amount = stakeToWithdraw[msg.sender];
  > |        stakeToWithdraw[msg.sender] = 0;
    |        require(stakingToken.transfer(msg.sender, amount));
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(2361)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |        Node storage node = stakeNodes[id];
    |
  > |        stakeNodes.push(Node({
    |            data: StakeData(amount, staker),
    |            prev: id,
  at /home/jiaming/slither_fp_files/out18160.sol(2455)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |        newID = stakeNodes.length - 1;
    |
  > |        stakeNodes[node.next].prev = newID;
    |        node.next = newID;
    |        numStakers++;
  at /home/jiaming/slither_fp_files/out18160.sol(2463)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |
    |        stakeNodes[node.next].prev = newID;
  > |        node.next = newID;
    |        numStakers++;
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(2464)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |        stakeNodes[node.next].prev = newID;
    |        node.next = newID;
  > |        numStakers++;
    |    }
    |
  at /home/jiaming/slither_fp_files/out18160.sol(2465)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |        Node storage node = stakeNodes[id];
    |
  > |        stakeNodes[node.next].prev = node.prev;
    |        stakeNodes[node.prev].next = node.next;
    |
  at /home/jiaming/slither_fp_files/out18160.sol(2477)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |
    |        stakeNodes[node.next].prev = node.prev;
  > |        stakeNodes[node.prev].next = node.next;
    |
    |        delete stakeNodes[id];
  at /home/jiaming/slither_fp_files/out18160.sol(2478)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |        stakeNodes[node.prev].next = node.next;
    |
  > |        delete stakeNodes[id];
    |        numStakers--;
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(2480)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |
    |        delete stakeNodes[id];
  > |        numStakers--;
    |    }
    |
  at /home/jiaming/slither_fp_files/out18160.sol(2481)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |        uint newStakedAmount = stakedAmounts[_staker];
    |        if (newStakedAmount == 0) {
  > |            isRanked[_staker] = false;
    |            removeStakerFromArray(_staker);
    |        } else if (isRanked[_staker]) {
  at /home/jiaming/slither_fp_files/out18160.sol(2489)

[33mWarning[0m for UnrestrictedWrite in contract 'OperatorStaking':
    |            insertNodeSorted(newStakedAmount, _staker);
    |        } else {
  > |            isRanked[_staker] = true;
    |            insertNodeSorted(newStakedAmount, _staker);
    |        }
  at /home/jiaming/slither_fp_files/out18160.sol(2495)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned is DBC {
    |
    |    // FIELDS
  at /home/jiaming/slither_fp_files/out18160.sol(178)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    function Owned() { owner = msg.sender; }
    |
  > |    function changeOwner(address ofNewOwner) pre_cond(isOwner()) { owner = ofNewOwner; }
    |
    |    // PRE, POST, INVARIANT CONDITIONS
  at /home/jiaming/slither_fp_files/out18160.sol(188)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    // FIELDS
    |
  > |    address public owner;
    |
    |    // NON-CONSTANT METHODS
  at /home/jiaming/slither_fp_files/out18160.sol(182)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    // PRE, POST, INVARIANT CONDITIONS
    |
  > |    function isOwner() internal returns (bool) { return msg.sender == owner; }
    |
    |}
  at /home/jiaming/slither_fp_files/out18160.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function Owned() { owner = msg.sender; }
    |
  > |    function changeOwner(address ofNewOwner) pre_cond(isOwner()) { owner = ofNewOwner; }
    |
    |    // PRE, POST, INVARIANT CONDITIONS
  at /home/jiaming/slither_fp_files/out18160.sol(188)

[33mWarning[0m for LockedEther in contract 'Shares':
    |}
    |
  > |contract Shares is SharesInterface, Asset {
    |
    |    // FIELDS
  at /home/jiaming/slither_fp_files/out18160.sol(529)

[31mViolation[0m for UnrestrictedWrite in contract 'Shares':
    |        // require(_to == msg.sender); // can only use transferFrom to send to self
    |
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/slither_fp_files/out18160.sol(481)

[31mViolation[0m for UnrestrictedWrite in contract 'Shares':
    |
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |
  at /home/jiaming/slither_fp_files/out18160.sol(482)

[31mViolation[0m for UnrestrictedWrite in contract 'Shares':
    |
    |        balances[msg.sender] = sub(balances[msg.sender], _value);
  > |        balances[_to] = add(balances[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out18160.sol(572)

[33mWarning[0m for UnrestrictedWrite in contract 'Shares':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/slither_fp_files/out18160.sol(483)

[33mWarning[0m for UnrestrictedWrite in contract 'Shares':
    |        require(_spender != address(0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/slither_fp_files/out18160.sol(497)

[33mWarning[0m for UnrestrictedWrite in contract 'Shares':
    |        require(balances[_to] + _value >= balances[_to]);
    |
  > |        balances[msg.sender] = sub(balances[msg.sender], _value);
    |        balances[_to] = add(balances[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/slither_fp_files/out18160.sol(571)

[31mViolation[0m for DAO in contract 'SimplePriceFeed':
    |        updateId++;
    |        for (uint i = 0; i < ofAssets.length; ++i) {
  > |            require(registrar.assetIsRegistered(ofAssets[i]));
    |            require(assetsToPrices[ofAssets[i]].timestamp != now); // prevent two updates in one block
    |            assetsToPrices[ofAssets[i]].timestamp = now;
  at /home/jiaming/slither_fp_files/out18160.sol(2165)

[33mWarning[0m for DAO in contract 'SimplePriceFeed':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(318)

[33mWarning[0m for DAO in contract 'SimplePriceFeed':
    |        updateId++;
    |        for (uint i = 0; i < ofAssets.length; ++i) {
  > |            require(registrar.assetIsRegistered(ofAssets[i]));
    |            require(assetsToPrices[ofAssets[i]].timestamp != now); // prevent two updates in one block
    |            assetsToPrices[ofAssets[i]].timestamp = now;
  at /home/jiaming/slither_fp_files/out18160.sol(2165)

[33mWarning[0m for LockedEther in contract 'SimplePriceFeed':
    |}
    |
  > |contract SimplePriceFeed is SimplePriceFeedInterface, DSThing, DBC {
    |
    |    // TYPES
  at /home/jiaming/slither_fp_files/out18160.sol(2055)

[31mViolation[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |
    |    // FIELDS
  > |    mapping(address => Data) public assetsToPrices;
    |
    |    // Constructor fields
  at /home/jiaming/slither_fp_files/out18160.sol(2064)

[31mViolation[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |    }
    |    */
  > |    function getPrice(address ofAsset)
    |        view
    |        returns (uint price, uint timestamp)
  at /home/jiaming/slither_fp_files/out18160.sol(2125)

[33mWarning[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/slither_fp_files/out18160.sol(281)

[33mWarning[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/slither_fp_files/out18160.sol(282)

[33mWarning[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/slither_fp_files/out18160.sol(310)

[33mWarning[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |
    |    // Constructor fields
  > |    address public QUOTE_ASSET; // Asset of a portfolio against which all other assets are priced
    |
    |    // Contract-level variables
  at /home/jiaming/slither_fp_files/out18160.sol(2067)

[33mWarning[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |
    |    // Contract-level variables
  > |    uint public updateId;        // Update counter for this pricefeed; used as a check during investment
    |    CanonicalRegistrar public registrar;
    |    CanonicalPriceFeed public superFeed;
  at /home/jiaming/slither_fp_files/out18160.sol(2070)

[33mWarning[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |    // Contract-level variables
    |    uint public updateId;        // Update counter for this pricefeed; used as a check during investment
  > |    CanonicalRegistrar public registrar;
    |    CanonicalPriceFeed public superFeed;
    |
  at /home/jiaming/slither_fp_files/out18160.sol(2071)

[33mWarning[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |    uint public updateId;        // Update counter for this pricefeed; used as a check during investment
    |    CanonicalRegistrar public registrar;
  > |    CanonicalPriceFeed public superFeed;
    |
    |    // METHODS
  at /home/jiaming/slither_fp_files/out18160.sol(2072)

[33mWarning[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |
    |    // Get pricefeed specific information
  > |    function getQuoteAsset() view returns (address) { return QUOTE_ASSET; }
    |    function getLastUpdateId() view returns (uint) { return updateId; }
    |
  at /home/jiaming/slither_fp_files/out18160.sol(2113)

[33mWarning[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |    // Get pricefeed specific information
    |    function getQuoteAsset() view returns (address) { return QUOTE_ASSET; }
  > |    function getLastUpdateId() view returns (uint) { return updateId; }
    |
    |    /**
  at /home/jiaming/slither_fp_files/out18160.sol(2114)

[33mWarning[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |    }
    |    */
  > |    function getPrices(address[] ofAssets)
    |        view
    |        returns (uint[], uint[])
  at /home/jiaming/slither_fp_files/out18160.sol(2142)

[33mWarning[0m for MissingInputValidation in contract 'SimplePriceFeed':
    |
    |    /// @dev Internal so that feeds inheriting this one are not obligated to have an exposed update(...) method, but can still perform updates
  > |    function _updatePrices(address[] ofAssets, uint[] newPrices)
    |        internal
    |        pre_cond(ofAssets.length == newPrices.length)
  at /home/jiaming/slither_fp_files/out18160.sol(2159)

[33mWarning[0m for UnhandledException in contract 'SimplePriceFeed':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(318)

[33mWarning[0m for UnhandledException in contract 'SimplePriceFeed':
    |        updateId++;
    |        for (uint i = 0; i < ofAssets.length; ++i) {
  > |            require(registrar.assetIsRegistered(ofAssets[i]));
    |            require(assetsToPrices[ofAssets[i]].timestamp != now); // prevent two updates in one block
    |            assetsToPrices[ofAssets[i]].timestamp = now;
  at /home/jiaming/slither_fp_files/out18160.sol(2165)

[31mViolation[0m for UnrestrictedWrite in contract 'SimplePriceFeed':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(293)

[31mViolation[0m for UnrestrictedWrite in contract 'SimplePriceFeed':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(301)

[31mViolation[0m for UnrestrictedWrite in contract 'SimplePriceFeed':
    |        pre_cond(ofAssets.length == newPrices.length)
    |    {
  > |        updateId++;
    |        for (uint i = 0; i < ofAssets.length; ++i) {
    |            require(registrar.assetIsRegistered(ofAssets[i]));
  at /home/jiaming/slither_fp_files/out18160.sol(2163)

[31mViolation[0m for UnrestrictedWrite in contract 'SimplePriceFeed':
    |            require(registrar.assetIsRegistered(ofAssets[i]));
    |            require(assetsToPrices[ofAssets[i]].timestamp != now); // prevent two updates in one block
  > |            assetsToPrices[ofAssets[i]].timestamp = now;
    |            assetsToPrices[ofAssets[i]].price = newPrices[i];
    |        }
  at /home/jiaming/slither_fp_files/out18160.sol(2167)

[31mViolation[0m for UnrestrictedWrite in contract 'SimplePriceFeed':
    |            require(assetsToPrices[ofAssets[i]].timestamp != now); // prevent two updates in one block
    |            assetsToPrices[ofAssets[i]].timestamp = now;
  > |            assetsToPrices[ofAssets[i]].price = newPrices[i];
    |        }
    |        emit PriceUpdated(keccak256(ofAssets, newPrices));
  at /home/jiaming/slither_fp_files/out18160.sol(2168)

[31mViolation[0m for DAO in contract 'StakingPriceFeed':
    |        updateId++;
    |        for (uint i = 0; i < ofAssets.length; ++i) {
  > |            require(registrar.assetIsRegistered(ofAssets[i]));
    |            require(assetsToPrices[ofAssets[i]].timestamp != now); // prevent two updates in one block
    |            assetsToPrices[ofAssets[i]].timestamp = now;
  at /home/jiaming/slither_fp_files/out18160.sol(2165)

[33mWarning[0m for DAO in contract 'StakingPriceFeed':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(318)

[33mWarning[0m for DAO in contract 'StakingPriceFeed':
    |        updateId++;
    |        for (uint i = 0; i < ofAssets.length; ++i) {
  > |            require(registrar.assetIsRegistered(ofAssets[i]));
    |            require(assetsToPrices[ofAssets[i]].timestamp != now); // prevent two updates in one block
    |            assetsToPrices[ofAssets[i]].timestamp = now;
  at /home/jiaming/slither_fp_files/out18160.sol(2165)

[33mWarning[0m for DAO in contract 'StakingPriceFeed':
    |        auth
    |    {
  > |        require(stakingToken.transferFrom(msg.sender, address(this), amount));
    |        require(stakingToken.approve(stakingContract, amount));
    |        stakingContract.stake(amount, data);
  at /home/jiaming/slither_fp_files/out18160.sol(2203)

[33mWarning[0m for DAO in contract 'StakingPriceFeed':
    |    {
    |        require(stakingToken.transferFrom(msg.sender, address(this), amount));
  > |        require(stakingToken.approve(stakingContract, amount));
    |        stakingContract.stake(amount, data);
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(2204)

[33mWarning[0m for DAO in contract 'StakingPriceFeed':
    |        require(stakingToken.transferFrom(msg.sender, address(this), amount));
    |        require(stakingToken.approve(stakingContract, amount));
  > |        stakingContract.stake(amount, data);
    |    }
    |
  at /home/jiaming/slither_fp_files/out18160.sol(2205)

[33mWarning[0m for DAO in contract 'StakingPriceFeed':
    |        auth
    |    {
  > |        stakingContract.unstake(amount, data);
    |    }
    |
  at /home/jiaming/slither_fp_files/out18160.sol(2214)

[33mWarning[0m for DAO in contract 'StakingPriceFeed':
    |        auth
    |    {
  > |        uint amountToWithdraw = stakingContract.stakeToWithdraw(address(this));
    |        stakingContract.withdrawStake();
    |        require(stakingToken.transfer(msg.sender, amountToWithdraw));
  at /home/jiaming/slither_fp_files/out18160.sol(2221)

[33mWarning[0m for DAO in contract 'StakingPriceFeed':
    |    {
    |        uint amountToWithdraw = stakingContract.stakeToWithdraw(address(this));
  > |        stakingContract.withdrawStake();
    |        require(stakingToken.transfer(msg.sender, amountToWithdraw));
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(2222)

[33mWarning[0m for DAO in contract 'StakingPriceFeed':
    |        uint amountToWithdraw = stakingContract.stakeToWithdraw(address(this));
    |        stakingContract.withdrawStake();
  > |        require(stakingToken.transfer(msg.sender, amountToWithdraw));
    |    }
    |}
  at /home/jiaming/slither_fp_files/out18160.sol(2223)

[33mWarning[0m for LockedEther in contract 'StakingPriceFeed':
    |}
    |
  > |contract StakingPriceFeed is SimplePriceFeed {
    |
    |    OperatorStaking public stakingContract;
  at /home/jiaming/slither_fp_files/out18160.sol(2174)

[31mViolation[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |
    |    // FIELDS
  > |    mapping(address => Data) public assetsToPrices;
    |
    |    // Constructor fields
  at /home/jiaming/slither_fp_files/out18160.sol(2064)

[31mViolation[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |    }
    |    */
  > |    function getPrice(address ofAsset)
    |        view
    |        returns (uint price, uint timestamp)
  at /home/jiaming/slither_fp_files/out18160.sol(2125)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/slither_fp_files/out18160.sol(281)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/slither_fp_files/out18160.sol(282)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/slither_fp_files/out18160.sol(310)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |
    |    // Constructor fields
  > |    address public QUOTE_ASSET; // Asset of a portfolio against which all other assets are priced
    |
    |    // Contract-level variables
  at /home/jiaming/slither_fp_files/out18160.sol(2067)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |
    |    // Contract-level variables
  > |    uint public updateId;        // Update counter for this pricefeed; used as a check during investment
    |    CanonicalRegistrar public registrar;
    |    CanonicalPriceFeed public superFeed;
  at /home/jiaming/slither_fp_files/out18160.sol(2070)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |    // Contract-level variables
    |    uint public updateId;        // Update counter for this pricefeed; used as a check during investment
  > |    CanonicalRegistrar public registrar;
    |    CanonicalPriceFeed public superFeed;
    |
  at /home/jiaming/slither_fp_files/out18160.sol(2071)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |    uint public updateId;        // Update counter for this pricefeed; used as a check during investment
    |    CanonicalRegistrar public registrar;
  > |    CanonicalPriceFeed public superFeed;
    |
    |    // METHODS
  at /home/jiaming/slither_fp_files/out18160.sol(2072)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |
    |    // Get pricefeed specific information
  > |    function getQuoteAsset() view returns (address) { return QUOTE_ASSET; }
    |    function getLastUpdateId() view returns (uint) { return updateId; }
    |
  at /home/jiaming/slither_fp_files/out18160.sol(2113)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |    // Get pricefeed specific information
    |    function getQuoteAsset() view returns (address) { return QUOTE_ASSET; }
  > |    function getLastUpdateId() view returns (uint) { return updateId; }
    |
    |    /**
  at /home/jiaming/slither_fp_files/out18160.sol(2114)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |    }
    |    */
  > |    function getPrices(address[] ofAssets)
    |        view
    |        returns (uint[], uint[])
  at /home/jiaming/slither_fp_files/out18160.sol(2142)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |
    |    /// @dev Internal so that feeds inheriting this one are not obligated to have an exposed update(...) method, but can still perform updates
  > |    function _updatePrices(address[] ofAssets, uint[] newPrices)
    |        internal
    |        pre_cond(ofAssets.length == newPrices.length)
  at /home/jiaming/slither_fp_files/out18160.sol(2159)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |contract StakingPriceFeed is SimplePriceFeed {
    |
  > |    OperatorStaking public stakingContract;
    |    AssetInterface public stakingToken;
    |
  at /home/jiaming/slither_fp_files/out18160.sol(2176)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |
    |    OperatorStaking public stakingContract;
  > |    AssetInterface public stakingToken;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/slither_fp_files/out18160.sol(2177)

[33mWarning[0m for MissingInputValidation in contract 'StakingPriceFeed':
    |    }
    |
  > |    function withdrawStake()
    |        external
    |        auth
  at /home/jiaming/slither_fp_files/out18160.sol(2217)

[33mWarning[0m for UnhandledException in contract 'StakingPriceFeed':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(318)

[33mWarning[0m for UnhandledException in contract 'StakingPriceFeed':
    |        updateId++;
    |        for (uint i = 0; i < ofAssets.length; ++i) {
  > |            require(registrar.assetIsRegistered(ofAssets[i]));
    |            require(assetsToPrices[ofAssets[i]].timestamp != now); // prevent two updates in one block
    |            assetsToPrices[ofAssets[i]].timestamp = now;
  at /home/jiaming/slither_fp_files/out18160.sol(2165)

[33mWarning[0m for UnhandledException in contract 'StakingPriceFeed':
    |        auth
    |    {
  > |        require(stakingToken.transferFrom(msg.sender, address(this), amount));
    |        require(stakingToken.approve(stakingContract, amount));
    |        stakingContract.stake(amount, data);
  at /home/jiaming/slither_fp_files/out18160.sol(2203)

[33mWarning[0m for UnhandledException in contract 'StakingPriceFeed':
    |    {
    |        require(stakingToken.transferFrom(msg.sender, address(this), amount));
  > |        require(stakingToken.approve(stakingContract, amount));
    |        stakingContract.stake(amount, data);
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(2204)

[33mWarning[0m for UnhandledException in contract 'StakingPriceFeed':
    |        require(stakingToken.transferFrom(msg.sender, address(this), amount));
    |        require(stakingToken.approve(stakingContract, amount));
  > |        stakingContract.stake(amount, data);
    |    }
    |
  at /home/jiaming/slither_fp_files/out18160.sol(2205)

[33mWarning[0m for UnhandledException in contract 'StakingPriceFeed':
    |        auth
    |    {
  > |        stakingContract.unstake(amount, data);
    |    }
    |
  at /home/jiaming/slither_fp_files/out18160.sol(2214)

[33mWarning[0m for UnhandledException in contract 'StakingPriceFeed':
    |        auth
    |    {
  > |        uint amountToWithdraw = stakingContract.stakeToWithdraw(address(this));
    |        stakingContract.withdrawStake();
    |        require(stakingToken.transfer(msg.sender, amountToWithdraw));
  at /home/jiaming/slither_fp_files/out18160.sol(2221)

[33mWarning[0m for UnhandledException in contract 'StakingPriceFeed':
    |    {
    |        uint amountToWithdraw = stakingContract.stakeToWithdraw(address(this));
  > |        stakingContract.withdrawStake();
    |        require(stakingToken.transfer(msg.sender, amountToWithdraw));
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(2222)

[33mWarning[0m for UnhandledException in contract 'StakingPriceFeed':
    |        uint amountToWithdraw = stakingContract.stakeToWithdraw(address(this));
    |        stakingContract.withdrawStake();
  > |        require(stakingToken.transfer(msg.sender, amountToWithdraw));
    |    }
    |}
  at /home/jiaming/slither_fp_files/out18160.sol(2223)

[31mViolation[0m for UnrestrictedWrite in contract 'StakingPriceFeed':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(293)

[31mViolation[0m for UnrestrictedWrite in contract 'StakingPriceFeed':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(301)

[31mViolation[0m for UnrestrictedWrite in contract 'StakingPriceFeed':
    |        pre_cond(ofAssets.length == newPrices.length)
    |    {
  > |        updateId++;
    |        for (uint i = 0; i < ofAssets.length; ++i) {
    |            require(registrar.assetIsRegistered(ofAssets[i]));
  at /home/jiaming/slither_fp_files/out18160.sol(2163)

[31mViolation[0m for UnrestrictedWrite in contract 'StakingPriceFeed':
    |            require(registrar.assetIsRegistered(ofAssets[i]));
    |            require(assetsToPrices[ofAssets[i]].timestamp != now); // prevent two updates in one block
  > |            assetsToPrices[ofAssets[i]].timestamp = now;
    |            assetsToPrices[ofAssets[i]].price = newPrices[i];
    |        }
  at /home/jiaming/slither_fp_files/out18160.sol(2167)

[31mViolation[0m for UnrestrictedWrite in contract 'StakingPriceFeed':
    |            require(assetsToPrices[ofAssets[i]].timestamp != now); // prevent two updates in one block
    |            assetsToPrices[ofAssets[i]].timestamp = now;
  > |            assetsToPrices[ofAssets[i]].price = newPrices[i];
    |        }
    |        emit PriceUpdated(keccak256(ofAssets, newPrices));
  at /home/jiaming/slither_fp_files/out18160.sol(2168)

[33mWarning[0m for LockedEther in contract 'Version':
    |}
    |
  > |contract Version is DBC, Owned, VersionInterface {
    |    // FIELDS
    |
  at /home/jiaming/slither_fp_files/out18160.sol(2929)

[31mViolation[0m for MissingInputValidation in contract 'Version':
    |    function Owned() { owner = msg.sender; }
    |
  > |    function changeOwner(address ofNewOwner) pre_cond(isOwner()) { owner = ofNewOwner; }
    |
    |    // PRE, POST, INVARIANT CONDITIONS
  at /home/jiaming/slither_fp_files/out18160.sol(188)

[31mViolation[0m for MissingInputValidation in contract 'Version':
    |    address public COMPLIANCE; // restrict to Competition compliance module for this version
    |    address[] public listOfFunds; // A complete list of fund addresses created using this version
  > |    mapping (address => address) public managerToFunds; // Links manager address to fund address created using this version
    |
    |    // EVENTS
  at /home/jiaming/slither_fp_files/out18160.sol(2945)

[31mViolation[0m for MissingInputValidation in contract 'Version':
    |    /// @param r ellipitc curve parameter r
    |    /// @param s ellipitc curve parameter s
  > |    function setupFund(
    |        bytes32 ofFundName,
    |        address ofQuoteAsset,
  at /home/jiaming/slither_fp_files/out18160.sol(2991)

[31mViolation[0m for MissingInputValidation in contract 'Version':
    |    /// @param s ellipitc curve parameter s
    |    /// @return signed Whether or not terms and conditions have been read and understood
  > |    function termsAndConditionsAreSigned(uint8 v, bytes32 r, bytes32 s) view returns (bool signed) {
    |        return ecrecover(
    |            // Parity does prepend \x19Ethereum Signed Message:\n{len(message)} before signing.
  at /home/jiaming/slither_fp_files/out18160.sol(3045)

[31mViolation[0m for MissingInputValidation in contract 'Version':
    |    function getFundById(uint withId) view returns (address) { return listOfFunds[withId]; }
    |    function getLastFundId() view returns (uint) { return listOfFunds.length - 1; }
  > |    function getFundByManager(address ofManager) view returns (address) { return managerToFunds[ofManager]; }
    |}
  at /home/jiaming/slither_fp_files/out18160.sol(3064)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    // FIELDS
    |
  > |    address public owner;
    |
    |    // NON-CONSTANT METHODS
  at /home/jiaming/slither_fp_files/out18160.sol(182)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    // PRE, POST, INVARIANT CONDITIONS
    |
  > |    function isOwner() internal returns (bool) { return msg.sender == owner; }
    |
    |}
  at /home/jiaming/slither_fp_files/out18160.sol(192)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |}
    |
  > |contract Version is DBC, Owned, VersionInterface {
    |    // FIELDS
    |
  at /home/jiaming/slither_fp_files/out18160.sol(2929)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    // FIELDS
    |
  > |    bytes32 public constant TERMS_AND_CONDITIONS = 0xAA9C907B0D6B4890E7225C09CBC16A01CB97288840201AA7CDCB27F4ED7BF159; // Hashed terms and conditions as displayed on IPFS, decoded from base 58
    |
    |    // Constructor fields
  at /home/jiaming/slither_fp_files/out18160.sol(2932)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |
    |    // Constructor fields
  > |    string public VERSION_NUMBER; // SemVer of Melon protocol version
    |    address public MELON_ASSET; // Address of Melon asset contract
    |    address public NATIVE_ASSET; // Address of Fixed quote asset
  at /home/jiaming/slither_fp_files/out18160.sol(2935)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    // Constructor fields
    |    string public VERSION_NUMBER; // SemVer of Melon protocol version
  > |    address public MELON_ASSET; // Address of Melon asset contract
    |    address public NATIVE_ASSET; // Address of Fixed quote asset
    |    address public GOVERNANCE; // Address of Melon protocol governance contract
  at /home/jiaming/slither_fp_files/out18160.sol(2936)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    string public VERSION_NUMBER; // SemVer of Melon protocol version
    |    address public MELON_ASSET; // Address of Melon asset contract
  > |    address public NATIVE_ASSET; // Address of Fixed quote asset
    |    address public GOVERNANCE; // Address of Melon protocol governance contract
    |    address public CANONICAL_PRICEFEED; // Address of the canonical pricefeed
  at /home/jiaming/slither_fp_files/out18160.sol(2937)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    address public MELON_ASSET; // Address of Melon asset contract
    |    address public NATIVE_ASSET; // Address of Fixed quote asset
  > |    address public GOVERNANCE; // Address of Melon protocol governance contract
    |    address public CANONICAL_PRICEFEED; // Address of the canonical pricefeed
    |
  at /home/jiaming/slither_fp_files/out18160.sol(2938)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    address public NATIVE_ASSET; // Address of Fixed quote asset
    |    address public GOVERNANCE; // Address of Melon protocol governance contract
  > |    address public CANONICAL_PRICEFEED; // Address of the canonical pricefeed
    |
    |    // Methods fields
  at /home/jiaming/slither_fp_files/out18160.sol(2939)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |
    |    // Methods fields
  > |    bool public isShutDown; // Governance feature, if yes than setupFund gets blocked and shutDownFund gets opened
    |    address public COMPLIANCE; // restrict to Competition compliance module for this version
    |    address[] public listOfFunds; // A complete list of fund addresses created using this version
  at /home/jiaming/slither_fp_files/out18160.sol(2942)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    // Methods fields
    |    bool public isShutDown; // Governance feature, if yes than setupFund gets blocked and shutDownFund gets opened
  > |    address public COMPLIANCE; // restrict to Competition compliance module for this version
    |    address[] public listOfFunds; // A complete list of fund addresses created using this version
    |    mapping (address => address) public managerToFunds; // Links manager address to fund address created using this version
  at /home/jiaming/slither_fp_files/out18160.sol(2943)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    bool public isShutDown; // Governance feature, if yes than setupFund gets blocked and shutDownFund gets opened
    |    address public COMPLIANCE; // restrict to Competition compliance module for this version
  > |    address[] public listOfFunds; // A complete list of fund addresses created using this version
    |    mapping (address => address) public managerToFunds; // Links manager address to fund address created using this version
    |
  at /home/jiaming/slither_fp_files/out18160.sol(2944)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    // EXTERNAL METHODS
    |
  > |    function shutDown() external pre_cond(msg.sender == GOVERNANCE) { isShutDown = true; }
    |
    |    // PUBLIC METHODS
  at /home/jiaming/slither_fp_files/out18160.sol(2976)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    }
    |
  > |    function getNativeAsset() view returns (address) { return NATIVE_ASSET; }
    |    function getFundById(uint withId) view returns (address) { return listOfFunds[withId]; }
    |    function getLastFundId() view returns (uint) { return listOfFunds.length - 1; }
  at /home/jiaming/slither_fp_files/out18160.sol(3061)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |
    |    function getNativeAsset() view returns (address) { return NATIVE_ASSET; }
  > |    function getFundById(uint withId) view returns (address) { return listOfFunds[withId]; }
    |    function getLastFundId() view returns (uint) { return listOfFunds.length - 1; }
    |    function getFundByManager(address ofManager) view returns (address) { return managerToFunds[ofManager]; }
  at /home/jiaming/slither_fp_files/out18160.sol(3062)

[33mWarning[0m for MissingInputValidation in contract 'Version':
    |    function getNativeAsset() view returns (address) { return NATIVE_ASSET; }
    |    function getFundById(uint withId) view returns (address) { return listOfFunds[withId]; }
  > |    function getLastFundId() view returns (uint) { return listOfFunds.length - 1; }
    |    function getFundByManager(address ofManager) view returns (address) { return managerToFunds[ofManager]; }
    |}
  at /home/jiaming/slither_fp_files/out18160.sol(3063)

[33mWarning[0m for UnhandledException in contract 'Version':
    |        require(!isShutDown);
    |        require(termsAndConditionsAreSigned(v, r, s));
  > |        require(CompetitionCompliance(COMPLIANCE).isCompetitionAllowed(msg.sender));
    |        require(managerToFunds[msg.sender] == address(0)); // Add limitation for simpler migration process of shutting down and setting up fund
    |        address[] memory melonAsDefaultAsset = new address[](1);
  at /home/jiaming/slither_fp_files/out18160.sol(3006)

[33mWarning[0m for UnhandledException in contract 'Version':
    |        Fund fund = Fund(ofFund);
    |        delete managerToFunds[msg.sender];
  > |        fund.shutDown();
    |        emit FundUpdated(ofFund);
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(3034)

[33mWarning[0m for UnhandledException in contract 'Version':
    |    /// @return signed Whether or not terms and conditions have been read and understood
    |    function termsAndConditionsAreSigned(uint8 v, bytes32 r, bytes32 s) view returns (bool signed) {
  > |        return ecrecover(
    |            // Parity does prepend \x19Ethereum Signed Message:\n{len(message)} before signing.
    |            //  Signature order has also been changed in 1.6.7 and upcoming 1.7.x,
  at /home/jiaming/slither_fp_files/out18160.sol(3046)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Version':
    |        require(!isShutDown);
    |        require(termsAndConditionsAreSigned(v, r, s));
  > |        require(CompetitionCompliance(COMPLIANCE).isCompetitionAllowed(msg.sender));
    |        require(managerToFunds[msg.sender] == address(0)); // Add limitation for simpler migration process of shutting down and setting up fund
    |        address[] memory melonAsDefaultAsset = new address[](1);
  at /home/jiaming/slither_fp_files/out18160.sol(3006)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Version':
    |        Fund fund = Fund(ofFund);
    |        delete managerToFunds[msg.sender];
  > |        fund.shutDown();
    |        emit FundUpdated(ofFund);
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(3034)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Version':
    |    /// @return signed Whether or not terms and conditions have been read and understood
    |    function termsAndConditionsAreSigned(uint8 v, bytes32 r, bytes32 s) view returns (bool signed) {
  > |        return ecrecover(
    |            // Parity does prepend \x19Ethereum Signed Message:\n{len(message)} before signing.
    |            //  Signature order has also been changed in 1.6.7 and upcoming 1.7.x,
  at /home/jiaming/slither_fp_files/out18160.sol(3046)

[33mWarning[0m for UnrestrictedWrite in contract 'Version':
    |        );
    |        listOfFunds.push(ofFund);
  > |        managerToFunds[msg.sender] = ofFund;
    |        emit FundUpdated(ofFund);
    |    }
  at /home/jiaming/slither_fp_files/out18160.sol(3023)

[33mWarning[0m for UnrestrictedWrite in contract 'Version':
    |    {
    |        Fund fund = Fund(ofFund);
  > |        delete managerToFunds[msg.sender];
    |        fund.shutDown();
    |        emit FundUpdated(ofFund);
  at /home/jiaming/slither_fp_files/out18160.sol(3033)

[33mWarning[0m for UnrestrictedWrite in contract 'Version':
    |    function Owned() { owner = msg.sender; }
    |
  > |    function changeOwner(address ofNewOwner) pre_cond(isOwner()) { owner = ofNewOwner; }
    |
    |    // PRE, POST, INVARIANT CONDITIONS
  at /home/jiaming/slither_fp_files/out18160.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'Version':
    |    // EXTERNAL METHODS
    |
  > |    function shutDown() external pre_cond(msg.sender == GOVERNANCE) { isShutDown = true; }
    |
    |    // PUBLIC METHODS
  at /home/jiaming/slither_fp_files/out18160.sol(2976)


