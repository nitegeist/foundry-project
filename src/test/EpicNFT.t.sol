// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "src/EpicNFT.sol";

contract ERC721Test is Test {
    EpicNFT nft;
    address jeff = address(0x1);

    function testMintToken() public {
        nft = new EpicNFT();
        vm.startPrank(jeff);
        nft.makeEpicNFT();
        vm.stopPrank();
        address owner_of = nft.ownerOf(0);
        assertEq(jeff, owner_of);
    }
}
