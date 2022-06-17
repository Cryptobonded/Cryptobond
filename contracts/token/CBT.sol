// SPDX-License-Identifier: MIT

pragma solidity 0.7.6;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract CBT is ERC20 {

    constructor(address minter) ERC20("Cbt", "CBT") {
        uint256 amount = 100000000 * 1e18; //decimals 18
        _mint(minter, amount);
    }
}
