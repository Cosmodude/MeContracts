// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {Counter} from "contracts/Counter.sol";

contract CounterScript is Script {
    function setUp() public {}

    function run() public {
        // forge script script/Counter.s.sol --broadcast --account <walletName>
        address deployer = vm.envAddress("DEPLOYER_ADDRESS");
        console.log("Deployer address: %s", deployer);

        vm.createSelectFork("mechain");

        vm.startBroadcast(deployer);

        new Counter();

        vm.stopBroadcast();
    }
}
