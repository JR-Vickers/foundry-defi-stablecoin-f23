// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import {DecentralizedStableCoin} from "../../src/DecentralizedStableCoin.sol";
import {Test, console} from "forge-std/Test.sol";

contract DecentralizedStableCoinTest is Test {
    function setUp() external {
        DecentralizedStableCoin dsc = new DecentralizedStableCoin();
        console.log("DecentralizedStableCoin address: %s", address(dsc));
    }

    function testThatAmountIsMoreThanZero() external {
        DecentralizedStableCoin dsc = new DecentralizedStableCoin();
        dsc.burn(0);
    }

    function testThatBalanceIsGreaterThanAmount() external {
        DecentralizedStableCoin dsc = new DecentralizedStableCoin();
        dsc.burn(1);
    }
}
