pragma solidity ^0.8.3;

contract DataSpotLocation {
    uint public arr;
    mapping(address => uint) public balances;
    struct Mystruct {
        uint foo;
    }
    mapping(uint => Mystruct) mystruct;

    function f() public {
        //Call f with state variables
        arr = 1;
        balances[msg.sender] = 2;
        mystruct[1].foo = 3;
    }

    function _f() public {
        //Call f with state variables
        arr = 1;
        balances[msg.sender] = 2;
        mystruct[1].foo = 3;
        //Doing something with storage variables
    }

    function g() public {
        //Call g with state variables
        arr = 1;
        balances[msg.sender] = 2;
        mystruct[1].foo = 3;
        //Doing something with memory array
    }

    function _t() public {
        arr = 1;
        balances[msg.sender] = 2;
        mystruct[1].foo = 3;
        //Calling array data
    }
}
