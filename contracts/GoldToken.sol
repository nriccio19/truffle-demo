// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
import "@openzeppelin/contracts/token/ERC777/ERC777.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract GoldToken is ERC777, Ownable {
    constructor(
        address owner_,
        uint256 initialSupply,
        address[] memory defaultOperators
    ) public ERC777("Gold", "GLD", defaultOperators) {
        transferOwnership(owner_);
        _mint(owner(), initialSupply, "", "");
    }

    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount, "", "");
    }
}
