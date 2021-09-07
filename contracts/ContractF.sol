//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract ContractE {
  address payable contractD;

  constructor(address payable _contractD){
    contractD = _contractD;
  }

  receive() external payable{
    if(msg.sender == contractD) {
      revert('sent by contract D');
    }
  }
}