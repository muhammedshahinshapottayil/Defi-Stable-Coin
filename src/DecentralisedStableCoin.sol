// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
import {ERC20Burnable, ERC20} from "@openzepplin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {Ownable} from "@openzepplin/contracts/access/Ownable.sol";
error DSC__Amount__Zero();
error DSC__Burn__Amount__Exceeds__Balance();
error DSC__Not__Zero_Address();

contract DecentralisedStableCoin is ERC20Burnable {
    constructor() ERC20("DecentralisedStableCoin", "DSC") {}
    function burn(uint256 _amount) public override onlyOwner {
        uint256 balance = balanceOf(msg.sender);
        if (_amount <= 0) {
            revert DSC__Amount__Lessthan__Zero();
        }
        if (balance < _amount) {
            revert DSC__Burn__Amount__Exceeds__Balance();
        }
        super.burn(_amount);
    }
    function mint(
        address _to,
        uint256 _amount
    ) public override onlyOwner returns (bool) {
        if (_to == address(0)) {
            revert DSC__Not__Zero_Address();
        }
        if (_amount <= 0) {
            revert DSC__Amount__Zero();
        }
        _mint(_to, _amount);
        return true;
    }
}
