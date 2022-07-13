// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@std/Script.sol";
import "src/EpicNFT.sol";

contract ContractScript is Script {
    EpicNFT nft;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        nft = new EpicNFT();
        vm.stopBroadcast();
    }
}
