// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "../src/FunctionSelector.sol";

contract FunctionSelectorTest is Test {
    FunctionSelector functionSelectorContract;

    function setUp() public {
        functionSelectorContract = new FunctionSelector();
    }

    function testGetSelector() public {
        bytes4 result = functionSelectorContract.getFunctionSelector(
            "mysteryFunc(uint256[],uint256[])"
        );
        bytes4 expect = 0xab33b5ce;
        assertEq(result, expect);
    }
}
