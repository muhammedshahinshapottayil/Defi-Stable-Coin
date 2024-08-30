// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {DecentralisedStableCoin} from "../src/DecentralisedStableCoin.sol";

contract DecentralisedStableCoinScript is Script {
    DecentralisedStableCoin public decentralisedStableCoin;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        decentralisedStableCoin = new DecentralisedStableCoin();
        vm.stopBroadcast();
    }
}
