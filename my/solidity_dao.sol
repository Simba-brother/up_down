pragma solidity ^0.4.24;
contract SimpleDAO {
	mapping (address => uint) public credit;
	function donate(address to) payable public{
		credit[to] += msg.value;
	} 
	function queryCredit(address to) view public returns (uint){
		return credit[to];
	}
	function withdraw(uint amount) public{
		if (credit[msg.sender]>= amount){
			credit[msg.sender]-=amount;
			require(msg.sender.call.value(amount)());
		}
	}	
}
