pragma solidity ^0.8.4;

contract FunctionModifier {
    //We will use a Variable to demonstrate
    //Modifiers
    address public owner;
    uint public x = 10;
    bool public locked;

    constructor() {
        //set the transaction sender as the owner of the contract
        owner = msg.sender;
    }

    //Modifier to check that the caller is the owner of the contract
    //The contract
    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }
    //Undeescore is a special character only used inside
    // a function modifier and it tells Solidity to
    //Execute the rest of the code into compile time
    //End of Part 1
}
