// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Lottery {
    address[] public players;
    uint256 public price;

    function buy_lottery(address player) public {
        players.push(address(player));
    }

    function change_price(uint256 new_price) private {
        price = new_price;
    }
}
