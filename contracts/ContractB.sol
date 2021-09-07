//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract ContractB {
    address payable contractC;
    address payable contractA;

    constructor(address payable _contractC, address payable _contractA) {
        contractC = _contractC;
        contractA = _contractA;
    }

    receive() external payable {
        if (msg.sender == contractA) {
            contractC.transfer(msg.value);
        }
    }
}
