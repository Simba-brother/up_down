contract A {
    uint num;
    function f1() {
        f2(num);
    }
    function f2(uint a) {
        
    }
    function f2() {
        //this.balance;
    }
    function f4() {
        msg.sender.call.value(10)();
    }
}

contract B {
    A a = new A();
    function f3() {
        a.f2();
    }
}