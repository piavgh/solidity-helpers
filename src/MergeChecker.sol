// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Stateless contract that aggregates a few methods to check whether or not the merge has occurred.
contract MergeChecker {
    // See https://eips.ethereum.org/EIPS/eip-3675#replacing-difficulty-with-0.
    function getIsMergedEip3675() public view returns (bool) {
        return block.difficulty == 0;
    }

    // See https://eips.ethereum.org/EIPS/eip-4399#using-264-threshold-to-determine-pos-blocks.
    // NOTE: in an eip-4399 world, it's astronomically improbable for this opcode to return
    // a value below this threshold; p = (2^64 / 2^256) = 2^-192.
    function getIsMergedEip4399() public view returns (bool) {
        return block.difficulty > 2 ** 64;
    }

    // True if either method indicates the merge has taken place.
    function getIsMerged() public view returns (bool) {
        return getIsMergedEip3675() || getIsMergedEip4399();
    }
}
