
pragma solidity 0.4.24;

contract OverflowVulnerableAndFixed {
	
	mapping (address => uint256) public balanceOf;

	function transfer1(address _to, uint256 _value) public {

	    require(balanceOf[msg.sender] >= _value);

	    balanceOf[msg.sender] -= _value;
	    balanceOf[_to] += _value;
	}

}

