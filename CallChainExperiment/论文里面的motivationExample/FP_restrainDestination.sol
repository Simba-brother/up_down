contract YumeriumManager {
    function getYumerium(address sender) external payable returns (uint256);
}
contract Sale {
    address public creator;
    uint balance;
    YumeriumManager public manager;
    constructor(address _manager_address) public {
        manager = YumeriumManager(_manager_address);
        creator = msg.sender;
    }
    function buy(uint amount) internal {
        require(amount < balance);
        manager.getYumerium.value(amount)(msg.sender);
        balance -= amount;
    }
    function changeManagerAddress(address _manager_address) external {
        require(msg.sender==creator, "You are not a creator!");
        manager = YumeriumManager(_manager_address);
    }
}