// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract StringToBytes32 {
    function convertStringToBytes32(
        string memory text
    ) public pure returns (bytes32) {
        return bytes32(abi.encodePacked(text));
    }
}
