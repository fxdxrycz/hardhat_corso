// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
import "hardhat/console.sol";

contract MsgSenderTest {
    

   function test() external {
    console.log("msg.sender", msg.sender);
   }

}
