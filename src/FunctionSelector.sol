// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract FunctionSelector {
    function getFunctionSelector(
        string calldata _func
    ) external pure returns (bytes4) {
        return bytes4(keccak256(bytes(_func)));
    }
}
