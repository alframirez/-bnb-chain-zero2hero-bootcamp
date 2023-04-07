// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract BadgerNFT is ERC721, Ownable {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

    constructor() ERC721("BadgerNFT", "BFT") {}

    function _baseURI() internal pure override returns (string memory) {
        return
            "https://bafkreibt6qcj3w3g6mzeyh5qmf3f7sskwwo7c2hawsc3knlmrnmtlok3k4.ipfs.nftstorage.link/";
    }

    function safeMint(address to) public onlyOwner {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
    }
}
