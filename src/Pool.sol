// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract DeBetPool {
    struct Vault {
        address user;
        uint256 value;
    }

    struct Pool {
        uint256 pool_id;
        uint256 participants;
        Vault[] vaults;
        string status;
    }

    function deposit(uint256 value, address acc, uint256 pool_id) public {}

    function claim(uint256 value, address acc, uint256 pool_id) public {}
}
