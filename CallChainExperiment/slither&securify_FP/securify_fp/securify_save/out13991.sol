Processing contract: /home/jiaming/slither_fp_files/out13991.sol:ERC20_Interface
Processing contract: /home/jiaming/slither_fp_files/out13991.sol:Exchange
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out13991.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Exchange':
    |*Exchange creates an exchange for the swaps.
    |*/
  > |contract Exchange{ 
    |    using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out13991.sol(48)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |        require(_price > 0);
    |        ERC20_Interface token = ERC20_Interface(_tokenadd);
  > |        require(token.allowance(msg.sender,address(this)) >= _amount);
    |        if(forSale[_tokenadd].length == 0){
    |            forSale[_tokenadd].push(0);
  at /home/jiaming/slither_fp_files/out13991.sol(122)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |        address maker = _order.maker;
    |        ERC20_Interface token = ERC20_Interface(_order.asset);
  > |        if(token.allowance(_order.maker,address(this)) >= _order.amount){
    |            assert(token.transferFrom(_order.maker,msg.sender, _order.amount));
    |            maker.transfer(_order.price);
  at /home/jiaming/slither_fp_files/out13991.sol(194)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |        ERC20_Interface token = ERC20_Interface(_order.asset);
    |        if(token.allowance(_order.maker,address(this)) >= _order.amount){
  > |            assert(token.transferFrom(_order.maker,msg.sender, _order.amount));
    |            maker.transfer(_order.price);
    |        }
  at /home/jiaming/slither_fp_files/out13991.sol(195)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |        if(token.allowance(_order.maker,address(this)) >= _order.amount){
    |            assert(token.transferFrom(_order.maker,msg.sender, _order.amount));
  > |            maker.transfer(_order.price);
    |        }
    |        unLister(_orderId,_order);
  at /home/jiaming/slither_fp_files/out13991.sol(196)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exchange':
    |        require(_price > 0);
    |        ERC20_Interface token = ERC20_Interface(_tokenadd);
  > |        require(token.allowance(msg.sender,address(this)) >= _amount);
    |        if(forSale[_tokenadd].length == 0){
    |            forSale[_tokenadd].push(0);
  at /home/jiaming/slither_fp_files/out13991.sol(122)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exchange':
    |        address maker = _order.maker;
    |        ERC20_Interface token = ERC20_Interface(_order.asset);
  > |        if(token.allowance(_order.maker,address(this)) >= _order.amount){
    |            assert(token.transferFrom(_order.maker,msg.sender, _order.amount));
    |            maker.transfer(_order.price);
  at /home/jiaming/slither_fp_files/out13991.sol(194)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exchange':
    |        ERC20_Interface token = ERC20_Interface(_order.asset);
    |        if(token.allowance(_order.maker,address(this)) >= _order.amount){
  > |            assert(token.transferFrom(_order.maker,msg.sender, _order.amount));
    |            maker.transfer(_order.price);
    |        }
  at /home/jiaming/slither_fp_files/out13991.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |pragma solidity ^0.4.24;
    |
  > |//Slightly modified SafeMath library - includes a min function
    |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/slither_fp_files/out13991.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |*Exchange creates an exchange for the swaps.
    |*/
  > |contract Exchange{ 
    |    using SafeMath for uint256;
    |
  at /home/jiaming/slither_fp_files/out13991.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |        }
    |        userOrderIndex[order_nonce] = userOrders[msg.sender].length;
  > |        userOrders[msg.sender].push(order_nonce);
    |        order_nonce += 1;
    |    }
  at /home/jiaming/slither_fp_files/out13991.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |        require(blacklist[msg.sender] == false);
    |        ListAsset storage listing = listOfAssets[_asset];
  > |        listing.price = _price;
    |        listing.amount= _amount;
    |    }
  at /home/jiaming/slither_fp_files/out13991.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |        ListAsset storage listing = listOfAssets[_asset];
    |        listing.price = _price;
  > |        listing.amount= _amount;
    |    }
    |
  at /home/jiaming/slither_fp_files/out13991.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |        require(_amount <= listing.amount);
    |        require(msg.value == _amount.mul(listing.price));
  > |        listing.amount= listing.amount.sub(_amount);
    |    }
    |
  at /home/jiaming/slither_fp_files/out13991.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |    */
    |    function setOwner(address _owner) public onlyOwner() {
  > |        owner = _owner;
    |    }
    |
  at /home/jiaming/slither_fp_files/out13991.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |    */
    |    function blacklistParty(address _address, bool _motion) public onlyOwner() {
  > |        blacklist[_address] = _motion;
    |    }
    |
  at /home/jiaming/slither_fp_files/out13991.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |            lastTokenIndex = openBooks.length.sub(1);
    |            lastAdd = openBooks[lastTokenIndex];
  > |            openBooks[tokenIndex] = lastAdd;
    |            openBookIndex[lastAdd] = tokenIndex;
    |            openBooks.length--;
  at /home/jiaming/slither_fp_files/out13991.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |            lastAdd = openBooks[lastTokenIndex];
    |            openBooks[tokenIndex] = lastAdd;
  > |            openBookIndex[lastAdd] = tokenIndex;
    |            openBooks.length--;
    |            openBookIndex[_order.asset] = 0;
  at /home/jiaming/slither_fp_files/out13991.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |            openBookIndex[lastAdd] = tokenIndex;
    |            openBooks.length--;
  > |            openBookIndex[_order.asset] = 0;
    |            forSale[_order.asset].length -= 2;
    |        }
  at /home/jiaming/slither_fp_files/out13991.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |            lastTokenIndex = forSale[_order.asset].length.sub(1);
    |            lastToken = forSale[_order.asset][lastTokenIndex];
  > |            forSale[_order.asset][tokenIndex] = lastToken;
    |            forSaleIndex[lastToken] = tokenIndex;
    |            forSale[_order.asset].length--;
  at /home/jiaming/slither_fp_files/out13991.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |            lastToken = forSale[_order.asset][lastTokenIndex];
    |            forSale[_order.asset][tokenIndex] = lastToken;
  > |            forSaleIndex[lastToken] = tokenIndex;
    |            forSale[_order.asset].length--;
    |        }
  at /home/jiaming/slither_fp_files/out13991.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |            forSale[_order.asset].length--;
    |        }
  > |        forSaleIndex[_orderId] = 0;
    |        orders[_orderId] = Order({
    |            maker: address(0),
  at /home/jiaming/slither_fp_files/out13991.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |        }
    |        forSaleIndex[_orderId] = 0;
  > |        orders[_orderId] = Order({
    |            maker: address(0),
    |            price: 0,
  at /home/jiaming/slither_fp_files/out13991.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |            lastTokenIndex = userOrders[_order.maker].length.sub(1);
    |            lastToken = userOrders[_order.maker][lastTokenIndex];
  > |            userOrders[_order.maker][tokenIndex] = lastToken;
    |            userOrderIndex[lastToken] = tokenIndex;
    |        }
  at /home/jiaming/slither_fp_files/out13991.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |            lastToken = userOrders[_order.maker][lastTokenIndex];
    |            userOrders[_order.maker][tokenIndex] = lastToken;
  > |            userOrderIndex[lastToken] = tokenIndex;
    |        }
    |        userOrders[_order.maker].length--;
  at /home/jiaming/slither_fp_files/out13991.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |        }
    |        userOrders[_order.maker].length--;
  > |        userOrderIndex[_orderId] = 0;
    |    }
    |}
  at /home/jiaming/slither_fp_files/out13991.sol(320)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |//Slightly modified SafeMath library - includes a min function
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/slither_fp_files/out13991.sol(4)


