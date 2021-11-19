pragma solidity ^0.8.3;

contract B {
    string public name = contrat A.name;

    function getName() public view returns (string memory)
        return name;
    }
}

//Shadowing is disallowed past version 0.6.3
//This will not compile correctly
//Contract B is A {
//    string public name = contrat A.name;

contract C is B 
    
    constructor() {
        name = "Contract C"
    }

    // C.getName returns the name of the contract
}
