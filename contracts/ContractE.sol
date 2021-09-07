//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract ContractE {
  address payable contractF;

  constructor(address payable _contractF){
    contractF = _contractF;
  }

  fallback() external payable{
    (bool success, bytes memory data) = contractF.delegatecall(msg.data);
  }
}