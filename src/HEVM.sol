// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract HEVM {
    function getHEVMAddress() public pure returns (address) {
        return address(bytes20(uint160(uint256(keccak256("hevm cheat code")))));
    }
}
