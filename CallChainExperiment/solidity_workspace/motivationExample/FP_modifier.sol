contract RTB2 {
    mapping(address => uint256) balances;
    modifier onlyHuman() { 
        address _addr = msg.sender;
        uint256 _codeLength;
        assembly {_codeLength := extcodesize(_addr)}
        require(_codeLength == 0, "sorry humans only");
        _;
    }
    function buy(uint256 _amount) external onlyHuman payable{
        require(balances[msg.sender] >= _amount);
        require(msg.sender.call.value(_amount)());
        balances[msg.sender] -= _amount;
    }
}