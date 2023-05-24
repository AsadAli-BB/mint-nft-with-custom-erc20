// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@4.8.3/token/ERC20/ERC20.sol";

contract ShopperToken is ERC20 {
    constructor() ERC20("Shopper Token", "SHTKN") {
        _mint(msg.sender, 10000 * 10 ** decimals());
    }
}
