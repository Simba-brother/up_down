pragma solidity ^0.4.22;

// // contract father {
// //     Ma ma;
// //     // constructor(address _ma){
// //     //     Ma mammm = Ma(_ma);
// //     //     ma = mammm;
// //     //     address add = _ma;
// //     // }
// //     // function hello(address _q){
// //     //     address add = _q;
// //     //     Ma qqq = Ma(add);
// //     //     qqq.lala();
// //     // }
// // }
// contract victim_5 {
//     address attack;
//     Victim_4 v4 = new Victim_4();
//     function v5(){
//         v4.zhongzhongjiji_1();
//         v4.zhongzhongjiji_2(attack);
//     }
// }
// contract Victim_4 {
//     Victim_3 v3 = new  Victim_3();
//     // function zhongzhongjiji(address attack){
//     //     zhongzhongjiji_1();
//     //     zhongzhongjiji_2(attack);
//     // }
//     function zhongzhongjiji_1(){
//         v3.zhongji_1();
        
//     }
//     function zhongzhongjiji_2(address attack){
//         v3.zhongji_2(attack);
//     }
// }
// contract Victim_3 {
//     Victim_2 v2 = new Victim_2();
//     function zhongji_1(){

//         v2.testhhhh();
//         //v2.testjjjj();

//     }
//      function zhongji_2(address attack){
//          v2.testjjjj();

//      }
// }
// contract Victim_2 {
//     address destAddress;    
//     uint amount;
//     Victim v = new Victim();
//     // function testhahha(address money) {
//     //     address addr1 = money;
//     //     address addr2 = addr1;
//     //     address addr3 = addr2;
//     //     if(amount > 10){
//     //         v.method1();
//     //         method2();
//     //         amount = amount-1;
//     //     }
//     // }
//     // function method2(){
//     //    destAddress.call();
//     // }
//     function method_1(){
//         v.trans();
//     }
//     function testhhhh(){
//         v.trans();
//         ///v.zangExter();
//          //v.zangExter();
//         // v.method2();
//        // destAddress.call(bytes4(keccak256("method1()")));
//     }
    
//     function testjjjj(){
//         v.zangExter_2(destAddress);
//     }

// }
contract Victim {
     uint amount = 0;
     Ma ma;
     address destAddress;    
    // uint amount;
    
    // function setaddress(address _destAddress){
    //     destAddress = _destAddress;
    // }
    // function setaddress2(address _destAddess2) private{
    //     destAddress = _destAddess2;
    // }
    // function test(address money) {
    //     address addr1 = money;
    //     address addr2 = addr1;
    //     address addr3 = addr2;
    //     if(amount > 10){
    //         Victim(this).method1();
    //         destAddress.send(amount);
    //         method2();
    //         amount = amount-1;
    //     }
    // }
    // function method2(){
    //     Victim(this).method1();
    //     Victim(this).zangExter();
    //      //method1();
    //     //this.call(bytes4(keccak256("method1()")));
    // }

    // function method1(){
    //     //destAddress.call.value(amount)();
    //     //trans();
    //     Victim(this).trans();
    //     Victim(this).zhungyi();
    // }
    // function zhungyi(){
    //     Victim(this).zangExter();
    // }
    // function test(){
    //    Victim(this).trans();
       
    // }
    function setAddress(address _addr) external{
        ma = Ma(_addr);
    }
    // function interfunction (){
    //     trans();
    //     zangExter();
    // }
    function callTrans(address attack){
    
        msg.sender.call.value(amount)();
    }
    function trans_2() {
        destAddress.send(10);
    }
    function trans(){
        destAddress.send(10);
        //Ma(_addr).lala();
        //zangExter();
        //ma.lala();
    }
    
    function zangExter(){
        
        ma.lala();
    }

    // function method2(){
    //    trans();
    // }

    function zangExter_2(address _add){
        Ma(_add).lala();
    }

    // function method3(){
    //     method4();
    // }

    // function method4(){
    //    // ma.lala();
    //    destAddress.call();
    // }

}
contract Ma {
    function lala() payable{
        
    }
}

contract Victim_2 {
    Victim v = new Victim();
    EFT eft;
    function setEFT(address _addr) {
        eft = EFT(_addr);
    }
    function lala() {
        v.withdraw()
        eft.hh();
        //如果这里加一个state 变量的读slither也会报，no-eth Reentrance
    }
}
contract Victim {
    EFT eft = new EFT();
    address addr;
    mapping(address => uint256) public balances;
    // function deposit() {
    //     balances[msg.sender] += msg.value; 
    // }
    functon setAddress(address _addr){
        addr = _addr;
    }
//   function withdraw(uint256 _amount) public {
//     require(balances[msg.sender] >= _amount);
//     eft.transEth(msg.sender, _amount);
//     balances[msg.sender] -= _amount;
//   }
    functon withdraw() private {
        addr.transfer(10);
    }
    // function method_1() public {
    //     withdraw();
    //     eft.hh();
    // }
}
contract EFT {
  modifier onlyPartner() {
  require(_isPartner(msg.sender) "only partner have permission")_;
  }
  ...
  function transEth(address addr, uint256 _amount) onlyPartner {
    addr.call.value(_amount)();
  }

  function hh() { }
  ...
}