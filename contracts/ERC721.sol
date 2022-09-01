// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract MyNFT is ERC721, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIdCounter;

    ERC20 public tokenAddress;
    uint public nftPrice = 500000000000000000;

    event NftSell(address _buyer,address _owner,uint _nftprice);

    constructor(address _tokenAddress) ERC721("SSG", "SG") {
        tokenAddress = ERC20(_tokenAddress);
    }
    /**
     * @dev Safely mints `tokenId` and transfers it to `msg.sender`.
     *
     * Requirements:
     *
     * - `tokenId` must not exist.
     * Emits a {NftSell} event.
     */
    function buyNFT() public  {
       tokenAddress.transferFrom(msg.sender, owner(), nftPrice);
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(msg.sender, tokenId);
        emit NftSell(msg.sender,owner(),nftPrice);
    }
}