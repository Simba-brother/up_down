contract Victim{
    uint a = 10;
    uint b = 5;
    address addr; 
    function MML(){
        if (a > b){
            a = b;
            throw;
        }else {
            a = a-b;
            return;
        }
        addr.transfer(a);
    }

    function xunhuan(){
        while(a > 5) {
            a --;
            b++;
        }
        // for (int i = 0; i<10; i++) {
        //     b--;
        // }
    }
}

