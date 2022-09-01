// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract IEC is ERC20, Ownable {
    constructor() ERC20("IEC", "IC") {
        _mint(msg.sender, 1000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
//FT-0x649910fa4e18852Dd02185dE30c072cc9cB1758C"
//NFT-Token:0x95188100Fe5BE9f9B6f3a8c6D27Baf085BEb2Af4"