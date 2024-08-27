// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {StableCoin} from "../src/StableCoin.sol";

contract StableCoinScript is Script {
    StableCoin public stableCoin;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        stableCoin = new StableCoin();
        vm.stopBroadcast();
    }
}
