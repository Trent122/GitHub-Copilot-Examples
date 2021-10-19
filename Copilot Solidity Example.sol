pragma solidity ^0.4.0;

contract MyContract {
    string public string Value= "myString";
    bool public myBool = true;
    int public myInt = -1;
    uint public myUint = 1;
    uint8 public myUint8 = 8;
    uint256 public myUint256 = 99999;
}

Pragma solidity ^0.4.0;

contract MyContract2 {
   enum State { Waiting, Ready, Active }
   State public state;

   constructor () public {
       state = State.Waiting;
   }

   function activate() public {
       state = State.Active;
   }

   function isActive() public view returns (bool) {
       return state == State.Active;
   }
} 
