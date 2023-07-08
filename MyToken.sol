// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//This line imports the ERC20 contract from the OpenZeppelin library. 
//The OpenZeppelin library provides reusable and secure smart contract components for building decentralized applications (dApps) on the Ethereum blockchain.

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address private owner;

    constructor() ERC20("Rainbow", "RNB") {
        owner = msg.sender;
        _mint(msg.sender, 1000000 * 10**decimals());
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function");
        _;
    }

    function mint(address account, uint256 amount) external onlyOwner {
        _mint(account, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }
}
