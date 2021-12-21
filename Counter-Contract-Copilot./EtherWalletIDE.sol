pragma solidity ^0.8.3;

contract EtherWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }


    receive() external payable {}

    function withdraw(uint _amount) external {
        require(msg.sender == owner, "caller is not ownder");
        payable(msg.sender).transfer(_amount);
    }
