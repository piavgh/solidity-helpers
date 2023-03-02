// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Bytes32ToString {
    function convertBytes32ToString(
        bytes32 data
    ) external pure returns (address) {
        return address(uint160(uint256(data)));
    }
}
