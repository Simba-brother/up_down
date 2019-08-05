contract Victim {
    address addr;
    function one(){
        addr.call(bytes4(keccak256("lala()")));
    }
}
contract Ma {
    function lala(){

    }
}