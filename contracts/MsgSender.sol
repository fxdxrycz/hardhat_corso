// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract MsgSender{

    constructor(address _called){
        (bool success, bytes memory data) = _called.call(
            abi.encodeWithSignature("test()"));
    }

}