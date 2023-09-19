// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract PiscoToken is ERC20 {
    constructor() ERC20("PiscoToken", "PSK") {
        _mint(msg.sender, 10000000 * 10 ** decimals());
    }
}
