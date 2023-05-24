// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract MyToken is ERC721, Ownable {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

        IERC20 public tokenAddress; 

        uint256 public rate = 100 * 10 ** 18; 

    // constructor() ERC721("MyToken", "MTK") {}

    constructor(address _tokenAddress) ERC721("Shopper NFT", "SNFT") {
        tokenAddress = IERC20(_tokenAddress); 
    }

    function safeMint(address to) public onlyOwner {
        tokenAddress.transferFrom(msg.sender, address(this), rate);
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
    }

    // transfer from and Approve

}
