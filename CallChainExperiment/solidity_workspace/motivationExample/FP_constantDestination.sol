interface HgInterface {
    function buy(address _player) payable external returns(uint256);
}
contract Richer3D {
    uint rID;
    HgInterface  constant p3d = HgInterface(0xB3775fB83F7D12A36E0475aBdD1FCA35c091efBe);
    function calculateTarget() public {
        if (rID > 10){}
        p3d.buy.value(10)(this); 
        rID++;
    }
}
