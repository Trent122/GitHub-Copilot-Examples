pragma soldiity 0.8.3;

contract Enum {
    // enum Taking on the rol of Shipping Status
    enum ShippingStatus {
        PENDING,
        SHIPPED,
        DELIVERED,
        REFUNDED,
        Completed
    }

function getStatus(ShippingStatus status) public constant returns (uint8) {
    return uint8(status);
}

//Solidity supports enumerables and they are useful to model choice and keep track of state.

Enums can be declared outside of a contract.
