contract A {
    function aaaa(){

    }
    function bbbb(address _addr){

    }
}
contract Victim {
    //A a = new A();
    A a;
    A aa = A(0x2bd2326c993dfaef84f696526064ff22eba5b362);
    A aaa;
    address ddv;
    address owner;
    address c;
    modifier onlyOwner(){
        require(owner == msg.sender);
        _;
    }

    modifier mamingliang(){
        require(msg.sender == owner);
        _;
    }
    constructor(address _addr){
        //a = A(msg.sender);
        owner = msg.sender;
    }
    function method_4(){
       // method_2();
    }
    function method_2(){
        require(msg.sender == owner);
        msg.sender.send(10);
       method_3();
    }
    function method_3(){
        
        //require(msg.sender == owner);
        a.aaaa();
    }
    function method_1(address _attack)  {
        
        a = A(_attack);  /// 这时不应该为taint
         
        //aa.bbbb(msg.sender);
       // a.aaaa();
        //msg.sender.call();
        // aa = A(_attack);
        // aa.aaaa();
        // A a = A(_attack);
        // a.aaaa();
        // // A(_attack).aaaa();
        // // _attack.call();
        // a = A()
        // aaa = a;
        // aaa.aaaa();
        // c.call.value(10)();
    }
    // function d_set(address _attack)  {
    //     ddv = _attack;
    // }
    // function calllll(address _attack) public returns(address){

    //    // d(ddv);
    // }
    // // function b(address _addr) private onlyOwner() {
    // //     a = A(_addr);
    // // }

    // // function c(address _addr) public {
    // //     a = A(_addr);
    // // }

    // function d(address dd) private{
	//      aa = A(dd);
    //      aa.aaaa();
    // }
}
