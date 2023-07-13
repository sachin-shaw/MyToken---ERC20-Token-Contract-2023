# MyToken - ERC20 Token Contract
This is a Solidity smart contract for the MyToken ERC20 token. It extends the OpenZeppelin ERC20 contract, providing basic token functionality along with additional features such as minting, burning, and ownership control.

## Features
1. ERC20 Standard: The contract follows the ERC20 token standard, which defines a set of functions and events for interacting with the token.
2. Name and Symbol: The token is named "Rainbow" with the symbol "RNB".
3. Minting: The contract owner can mint new tokens and assign them to a specified account.
4. Burning: Token holders can burn their own tokens to permanently remove them from circulation.
5. Transfer: Token holders can transfer tokens to another address using this function.
6. Ownership Control: Only the contract owner can perform certain functions by using the onlyOwner modifier.
   

## Getting Started
Clone the repository to your local machine.
Before getting started, make sure you have the following prerequisites installed:

1. Node.js (version 12 or later).
2. npm (Node Package Manager).
3. Hardhat (installed globally).
4. Set up the Project.

## Here are some important functions and their usage:

1. mint(address account, uint256 amount): This function allows the contract owner to mint new tokens and assign them to a specified account.
2. burn(uint256 amount): Token holders can use this function to burn a specified amount of their own tokens.
3. transfer(address recipient, uint256 amount): Token holders can transfer tokens to another address using this function.

## Author
Sachin kumar
