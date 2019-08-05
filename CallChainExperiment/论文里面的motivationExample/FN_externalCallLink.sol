contract TokenSale {
    TokenOnSale tokenOnSale;
    address wallet;
    
    function set(address _add) {
        tokenOnSale = TokenOnSale(_add);
    }
    function buyTokens(address beneficiary) {

        TokenSale(this).buyTokensWithWei();
        tokenOnSale.mint();
    }
    function buyTokensWithWei() public {
    	wallet.transfer(11);
    }

}
contract TokenOnSale{
   function mint() {
       
   }
    
}