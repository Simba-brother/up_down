Processing contract: /home/jiaming/slither_fp_files/out2040.sol:ERC20_Interface
Processing contract: /home/jiaming/slither_fp_files/out2040.sol:Exchange
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out2040.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'Exchange':
    |        if(token.allowance(owner,address(this)) >= _amount){
    |            assert(token.transferFrom(owner,msg.sender, _amount));
  > |            owner.transfer(totalPrice);
    |            listing.amount= listing.amount.sub(_amount);
    |        }
  at /home/jiaming/slither_fp_files/out2040.sol(217)

[33mWarning[0m for LockedEther in contract 'Exchange':
    |*Exchange creates an exchange for the swaps.
    |*/
  > |contract Exchange{ 
    |    using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out2040.sol(53)

[33mWarning[0m for TODAmount in contract 'Exchange':
    |        if(token.allowance(owner,address(this)) >= _amount){
    |            assert(token.transferFrom(owner,msg.sender, _amount));
  > |            owner.transfer(totalPrice);
    |            listing.amount= listing.amount.sub(_amount);
    |        }
  at /home/jiaming/slither_fp_files/out2040.sol(217)

[31mViolation[0m for TODReceiver in contract 'Exchange':
    |        if(token.allowance(owner,address(this)) >= _amount){
    |            assert(token.transferFrom(owner,msg.sender, _amount));
  > |            owner.transfer(totalPrice);
    |            listing.amount= listing.amount.sub(_amount);
    |        }
  at /home/jiaming/slither_fp_files/out2040.sol(217)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |        require(_price > 0);
    |        ERC20_Interface token = ERC20_Interface(_tokenadd);
  > |        require(totalListed[msg.sender][_tokenadd] + _amount <= token.allowance(msg.sender,address(this)));
    |        if(forSale[_tokenadd].length == 0){
    |            forSale[_tokenadd].push(0);
  at /home/jiaming/slither_fp_files/out2040.sol(137)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |        require(msg.value == totalPrice);
    |        ERC20_Interface token = ERC20_Interface(_asset);
  > |        if(token.allowance(owner,address(this)) >= _amount){
    |            assert(token.transferFrom(owner,msg.sender, _amount));
    |            owner.transfer(totalPrice);
  at /home/jiaming/slither_fp_files/out2040.sol(215)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |        ERC20_Interface token = ERC20_Interface(_asset);
    |        if(token.allowance(owner,address(this)) >= _amount){
  > |            assert(token.transferFrom(owner,msg.sender, _amount));
    |            owner.transfer(totalPrice);
    |            listing.amount= listing.amount.sub(_amount);
  at /home/jiaming/slither_fp_files/out2040.sol(216)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |        if(token.allowance(owner,address(this)) >= _amount){
    |            assert(token.transferFrom(owner,msg.sender, _amount));
  > |            owner.transfer(totalPrice);
    |            listing.amount= listing.amount.sub(_amount);
    |        }
  at /home/jiaming/slither_fp_files/out2040.sol(217)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |        address maker = _order.maker;
    |        ERC20_Interface token = ERC20_Interface(_order.asset);
  > |        if(token.allowance(_order.maker,address(this)) >= _order.amount){
    |            assert(token.transferFrom(_order.maker,msg.sender, _order.amount));
    |            maker.transfer(_order.price);
  at /home/jiaming/slither_fp_files/out2040.sol(246)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |        ERC20_Interface token = ERC20_Interface(_order.asset);
    |        if(token.allowance(_order.maker,address(this)) >= _order.amount){
  > |            assert(token.transferFrom(_order.maker,msg.sender, _order.amount));
    |            maker.transfer(_order.price);
    |        }
  at /home/jiaming/slither_fp_files/out2040.sol(247)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |        if(token.allowance(_order.maker,address(this)) >= _order.amount){
    |            assert(token.transferFrom(_order.maker,msg.sender, _order.amount));
  > |            maker.transfer(_order.price);
    |        }
    |        unLister(_orderId,_order);
  at /home/jiaming/slither_fp_files/out2040.sol(248)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exchange':
    |        require(_price > 0);
    |        ERC20_Interface token = ERC20_Interface(_tokenadd);
  > |        require(totalListed[msg.sender][_tokenadd] + _amount <= token.allowance(msg.sender,address(this)));
    |        if(forSale[_tokenadd].length == 0){
    |            forSale[_tokenadd].push(0);
  at /home/jiaming/slither_fp_files/out2040.sol(137)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exchange':
    |        require(msg.value == totalPrice);
    |        ERC20_Interface token = ERC20_Interface(_asset);
  > |        if(token.allowance(owner,address(this)) >= _amount){
    |            assert(token.transferFrom(owner,msg.sender, _amount));
    |            owner.transfer(totalPrice);
  at /home/jiaming/slither_fp_files/out2040.sol(215)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exchange':
    |        ERC20_Interface token = ERC20_Interface(_asset);
    |        if(token.allowance(owner,address(this)) >= _amount){
  > |            assert(token.transferFrom(owner,msg.sender, _amount));
    |            owner.transfer(totalPrice);
    |            listing.amount= listing.amount.sub(_amount);
  at /home/jiaming/slither_fp_files/out2040.sol(216)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exchange':
    |        address maker = _order.maker;
    |        ERC20_Interface token = ERC20_Interface(_order.asset);
  > |        if(token.allowance(_order.maker,address(this)) >= _order.amount){
    |            assert(token.transferFrom(_order.maker,msg.sender, _order.amount));
    |            maker.transfer(_order.price);
  at /home/jiaming/slither_fp_files/out2040.sol(246)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exchange':
    |        ERC20_Interface token = ERC20_Interface(_order.asset);
    |        if(token.allowance(_order.maker,address(this)) >= _order.amount){
  > |            assert(token.transferFrom(_order.maker,msg.sender, _order.amount));
    |            maker.transfer(_order.price);
    |        }
  at /home/jiaming/slither_fp_files/out2040.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |pragma solidity ^0.4.24;
    |
  > |// File: contracts\interfaces\ERC20_Interface.sol
    |
    |//ERC20 function interface
  at /home/jiaming/slither_fp_files/out2040.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |*Exchange creates an exchange for the swaps.
    |*/
  > |contract Exchange{ 
    |    using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out2040.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |        }
    |        userOrderIndex[order_nonce] = userOrders[msg.sender].length;
  > |        userOrders[msg.sender].push(order_nonce);
    |        totalListed[msg.sender][_tokenadd] += _amount;
    |        order_nonce += 1;
  at /home/jiaming/slither_fp_files/out2040.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |        userOrderIndex[order_nonce] = userOrders[msg.sender].length;
    |        userOrders[msg.sender].push(order_nonce);
  > |        totalListed[msg.sender][_tokenadd] += _amount;
    |        order_nonce += 1;
    |    }
  at /home/jiaming/slither_fp_files/out2040.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |        require(blacklist[msg.sender] == false);
    |        ListAsset storage listing = listOfAssets[_asset];
  > |        listing.price = _price;
    |        listing.amount= _amount;
    |        listing.isLong= _isLong;
  at /home/jiaming/slither_fp_files/out2040.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |        ListAsset storage listing = listOfAssets[_asset];
    |        listing.price = _price;
  > |        listing.amount= _amount;
    |        listing.isLong= _isLong;
    |        openDdaListIndex[_asset] = openDdaListAssets.length;
  at /home/jiaming/slither_fp_files/out2040.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |        listing.price = _price;
    |        listing.amount= _amount;
  > |        listing.isLong= _isLong;
    |        openDdaListIndex[_asset] = openDdaListAssets.length;
    |        openDdaListAssets.push(_asset);
  at /home/jiaming/slither_fp_files/out2040.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |        listing.amount= _amount;
    |        listing.isLong= _isLong;
  > |        openDdaListIndex[_asset] = openDdaListAssets.length;
    |        openDdaListAssets.push(_asset);
    |        emit ListDDA(_asset,_amount,_price,_isLong);
  at /home/jiaming/slither_fp_files/out2040.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |        listing.isLong= _isLong;
    |        openDdaListIndex[_asset] = openDdaListAssets.length;
  > |        openDdaListAssets.push(_asset);
    |        emit ListDDA(_asset,_amount,_price,_isLong);
    |        
  at /home/jiaming/slither_fp_files/out2040.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |        address lastAdd;
    |        ListAsset storage listing = listOfAssets[_asset];
  > |        listing.price = 0;
    |        listing.amount= 0;
    |        listing.isLong= false;
  at /home/jiaming/slither_fp_files/out2040.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |        ListAsset storage listing = listOfAssets[_asset];
    |        listing.price = 0;
  > |        listing.amount= 0;
    |        listing.isLong= false;
    |        indexToDelete = openDdaListIndex[_asset];
  at /home/jiaming/slither_fp_files/out2040.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |        listing.price = 0;
    |        listing.amount= 0;
  > |        listing.isLong= false;
    |        indexToDelete = openDdaListIndex[_asset];
    |        lastAcctIndex = openDdaListAssets.length.sub(1);
  at /home/jiaming/slither_fp_files/out2040.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |        lastAcctIndex = openDdaListAssets.length.sub(1);
    |        lastAdd = openDdaListAssets[lastAcctIndex];
  > |        openDdaListAssets[indexToDelete]=lastAdd;
    |        openDdaListIndex[lastAdd]= indexToDelete;
    |        openDdaListAssets.length--;
  at /home/jiaming/slither_fp_files/out2040.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |        lastAdd = openDdaListAssets[lastAcctIndex];
    |        openDdaListAssets[indexToDelete]=lastAdd;
  > |        openDdaListIndex[lastAdd]= indexToDelete;
    |        openDdaListAssets.length--;
    |        openDdaListIndex[_asset] = 0;
  at /home/jiaming/slither_fp_files/out2040.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |        openDdaListIndex[lastAdd]= indexToDelete;
    |        openDdaListAssets.length--;
  > |        openDdaListIndex[_asset] = 0;
    |        emit UnlistDDA(_asset);
    |    }
  at /home/jiaming/slither_fp_files/out2040.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |            assert(token.transferFrom(owner,msg.sender, _amount));
    |            owner.transfer(totalPrice);
  > |            listing.amount= listing.amount.sub(_amount);
    |        }
    |        emit BuyDDA(_asset,msg.sender,_amount,totalPrice);
  at /home/jiaming/slither_fp_files/out2040.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |    */
    |    function setOwner(address _owner) public onlyOwner() {
  > |        owner = _owner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out2040.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |    */
    |    function blacklistParty(address _address, bool _motion) public onlyOwner() {
  > |        blacklist[_address] = _motion;
    |    }
    |
  at /home/jiaming/slither_fp_files/out2040.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |            address lastAdd;
    |            uint256  lastToken;
  > |        totalListed[_order.maker][_order.asset] -= _order.amount;
    |        if(forSale[_order.asset].length == 2){
    |            tokenIndex = openBookIndex[_order.asset];
  at /home/jiaming/slither_fp_files/out2040.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |            lastTokenIndex = openBooks.length.sub(1);
    |            lastAdd = openBooks[lastTokenIndex];
  > |            openBooks[tokenIndex] = lastAdd;
    |            openBookIndex[lastAdd] = tokenIndex;
    |            openBooks.length--;
  at /home/jiaming/slither_fp_files/out2040.sol(369)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |            lastAdd = openBooks[lastTokenIndex];
    |            openBooks[tokenIndex] = lastAdd;
  > |            openBookIndex[lastAdd] = tokenIndex;
    |            openBooks.length--;
    |            openBookIndex[_order.asset] = 0;
  at /home/jiaming/slither_fp_files/out2040.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |            openBookIndex[lastAdd] = tokenIndex;
    |            openBooks.length--;
  > |            openBookIndex[_order.asset] = 0;
    |            forSale[_order.asset].length -= 2;
    |        }
  at /home/jiaming/slither_fp_files/out2040.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |            lastTokenIndex = forSale[_order.asset].length.sub(1);
    |            lastToken = forSale[_order.asset][lastTokenIndex];
  > |            forSale[_order.asset][tokenIndex] = lastToken;
    |            forSaleIndex[lastToken] = tokenIndex;
    |            forSale[_order.asset].length--;
  at /home/jiaming/slither_fp_files/out2040.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |            lastToken = forSale[_order.asset][lastTokenIndex];
    |            forSale[_order.asset][tokenIndex] = lastToken;
  > |            forSaleIndex[lastToken] = tokenIndex;
    |            forSale[_order.asset].length--;
    |        }
  at /home/jiaming/slither_fp_files/out2040.sol(380)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |            forSale[_order.asset].length--;
    |        }
  > |        forSaleIndex[_orderId] = 0;
    |        orders[_orderId] = Order({
    |            maker: address(0),
  at /home/jiaming/slither_fp_files/out2040.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |        }
    |        forSaleIndex[_orderId] = 0;
  > |        orders[_orderId] = Order({
    |            maker: address(0),
    |            price: 0,
  at /home/jiaming/slither_fp_files/out2040.sol(384)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |            lastTokenIndex = userOrders[_order.maker].length.sub(1);
    |            lastToken = userOrders[_order.maker][lastTokenIndex];
  > |            userOrders[_order.maker][tokenIndex] = lastToken;
    |            userOrderIndex[lastToken] = tokenIndex;
    |        }
  at /home/jiaming/slither_fp_files/out2040.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |            lastToken = userOrders[_order.maker][lastTokenIndex];
    |            userOrders[_order.maker][tokenIndex] = lastToken;
  > |            userOrderIndex[lastToken] = tokenIndex;
    |        }
    |        userOrders[_order.maker].length--;
  at /home/jiaming/slither_fp_files/out2040.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |        }
    |        userOrders[_order.maker].length--;
  > |        userOrderIndex[_orderId] = 0;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out2040.sol(398)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |//Slightly modified SafeMath library - includes a min function
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/slither_fp_files/out2040.sol(18)


