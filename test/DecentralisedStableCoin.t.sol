// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {DecentralisedStableCoin} from "../src/DecentralisedStableCoin.sol";

contract DecentralisedStableCoinTest is Test {
    DecentralisedStableCoin public decentralisedStableCoin;

    function setUp() public {
        decentralisedStableCoin = new DecentralisedStableCoin();
    }
}
