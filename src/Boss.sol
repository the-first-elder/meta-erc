// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

address owner;

contract Boss is ERC20 {
    constructor()
        ERC20("Boss", "B")
        owner = msg.sender;
    {}

modifier onlyOwner(){
    require(msg.sender != owner, "not owner");
    _;
}
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    function burn(address user, uint256 amount) public onlyOwner {
        _burn(user, amount);
    }

    function transfer(address newUser, uint amount) public override  returns (bool valid) {
        valid = super.transfer(newUser, amount);
    }
}
