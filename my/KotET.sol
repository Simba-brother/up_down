pragma solidity ^0.4.10;

contract KotET {
    mapping (address => uint) public balances;
    
    address owner;
    
    function KotET(){
        owner = msg.sender;
       
    }
    
    function withdraw(uint256 _amount) public {
		require(balances[msg.sender] >= _amount);
		balances[msg.sender] -= _amount;
		msg.sender.send(_amount);  
    }
}
