// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "src/BoonNFT.sol";

contract ERC721Test is Test {
    BoonNFT internal nft;
    address internal jeff = address(0x1);

    function testMintToken() public {
        nft = new BoonNFT();
        vm.startPrank(jeff);
        nft.makeBoonNFT();
        vm.stopPrank();
        address ownerOf = nft.ownerOf(0);
        assertEq(jeff, ownerOf);
    }
}
