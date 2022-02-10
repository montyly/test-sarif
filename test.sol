contract Test{
    mapping(address => uint) balances;
    
    function deposit() external payable{
        balances[msg.sender] += msg.value;
    }
    
    function withdraw() external{
        msg.sender.call{value: balances[msg.sender]}("");
         balances[msg.sender] = 0;
    }

}
