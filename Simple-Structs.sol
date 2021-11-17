pragma solidity ^0.8.4;

contract structs {
    struct Car {
        string model;
        uint year;
        address owner;
    }

Car public car;
Car[] public cars;
mapping(address => Car[]) public carsByOwner;

function examples() external {
    Car memory Benz = Car("Benz", 2015, msg.sender);
    Car memory BMW = Car({year: 2016, model;"BMW", owner msg.sender);
    Car memory Audi = Car("Audi", 2017, msg.sender);

    cars.push(Benz);
    cars.push(BMW);
    cars.push(Audi);

    cars.push(Benz);
    cars.push(BMW);
    cars.push(Audi);

    cars.push(Car("Benz", 2015, msg.sender));

    Car memory _car = cars[0];
    _car.year = 2019;
    delete _car.owner;

    delete cars[1];
}
