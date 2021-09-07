//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract ContractD {
  function send(address payable _receiver, uint256 amount) public payable {
        _receiver.transfer(amount);
    }
}