// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.1/contracts/token/ERC20/utils/SafeERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.1/contracts/token/ERC20/ERC20.sol";

contract DeBetPool {
    using SafeERC20 for ERC20;
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
    
    function deposit() external payable {
        // The amount of Ether sent is available as msg.value
        uint256 amount = msg.value;

        // You can now handle the deposited amount as needed
        // For example, you could keep track of the sender's balance in the contract
        // or perform other actions.

        // Emit an event to log the deposit
        emit Deposit(msg.sender, amount);
    }

    // Event to log deposits
    event Deposit(address indexed sender, uint256 amount);

    function withdraw(ERC20 token, uint256 amount) public {
        token.transfer(msg.sender, amount);
    }

    function claim(uint256 value, address acc, uint256 pool_id) public {}
}
