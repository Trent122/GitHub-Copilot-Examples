pragma solidity ^0.8.3;

//mapping 
//How to declare a mapping in Solidity (simple or nested)
//Set, Get, Delete 

//{alice" : { "name" : "Alice", "age" : "25" }, "bob" : { "name" : "Bob", "age" : "30" } }
contract Mapping {
    mapping(address => uint) public balances;
    mapping(address => mapping(address => bool)) public isFriend;
    
    function example() external {
        uint bal = balances[msg.sender];
        uint bal2 = balances[address(1)]; // 0

        balances[msg.sender] +=456; //123 + 456 = 569

        delete balances[msg.sender]; //0

        isFriend[msg.sender][address(this)] = true;
    }
}
