contract A {
    function aaaa(){

    }
}
contract Victim {
    //A a = new A();
    A a;
    A aa;
    A aaa;
    address ddv;
    address owner;
    address c;
    modifier onlyOwner(){
        owner == msg.sender;
        _;
    }
    constructor(address _addr){
        a = A(_addr);
    }
    function method_1(address _attack) {
        a = A(_attack);
        // A a = A(_attack);
        a.aaaa();
        // A(_attack).aaaa();
        // _attack.call();
        aaa = a;
        aaa.aaaa();
        c.call.value(10)();
    }
    function d_set(address _attack)  {
        ddv = _attack;
    }
    function calllll(address _attack) public returns(address){

       // d(ddv);
    }
    // function b(address _addr) private onlyOwner() {
    //     a = A(_addr);
    // }

    // function c(address _addr) public {
    //     a = A(_addr);
    // }

    function d(address dd) private{
	     aa = A(dd);
         aa.aaaa();
    }
}
