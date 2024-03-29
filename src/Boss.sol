// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract Boss is ERC20 {
    constructor()
        ERC20("Boss", "B")
        
    {}

    function mint(address to, uint256 amount) public  {
        _mint(to, amount);
    }
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function transfer(address newUser, uint amount) public override  returns (bool valid) {
        valid = super.transfer(newUser, amount);
    }
}
