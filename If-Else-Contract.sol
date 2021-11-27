pragma solidity ^0.8.3;

contract ifElse {
    function foo(uint ) public {
        if (msg.value >= 0) {
            msg.sender.transfer(msg.value);
        } else {
            revert("negative value");
        }
    }

    function ternary (uint _x) public {
        uint x = _x > 0 ? _x : 0;
    }
    
   // Solidity support conditional statements if, else if and else. 
   //True :_
