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

//Start of Part 2

function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner {
    owner = _newOwner;
}

//Modifier can be called before and / or after a function.
//This modifer prevents a function from being called while
//it is still executing
modifier noReentrancy() {
    require(!locked, "No reentrancy");

    locked = true;
    _;
    locked = false;
 }

  function decrement(uint i) public noReentrancy {
    x -= i;

     if (i > 1) {
        decrement(i - 1);
    }
  }
}

//^ Second Portion of the code book for function and modifier
