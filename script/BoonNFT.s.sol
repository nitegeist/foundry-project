// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@std/Script.sol";
import "src/BoonNFT.sol";
import "@std/console.sol";

contract DeployBoonNFT is Script {
    BoonNFT public nft;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        nft = new BoonNFT();
        nft.makeBoonNFT();
        console.log("Minted NFT #1");
        nft.makeBoonNFT();
        console.log("Minted NFT #2");
        vm.stopBroadcast();
    }
}
