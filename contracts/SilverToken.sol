// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SilverToken is ERC20, Ownable {
    constructor(address owner_, uint256 initialSupply) public ERC20("SilverToken", "SLV") Ownable() {
        transferOwnership(owner_);
        _mint(owner(), initialSupply);
    }
}
