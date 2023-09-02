// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.1/contracts/token/ERC20/utils/SafeERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.1/contracts/token/ERC20/ERC20.sol";


contract DeBetPool {
    
    struct Vault {
        address user;
        uint256 value;
        uint256 amount;
    }

    struct Pool {
        bytes32 pool_id;
        Vault[] vaults;
        // string status;
    }
    event LogMessage(bytes32 message);
    using SafeERC20 for ERC20;
    Pool public pool;
    Vault[] public vaults;
    uint256 participants = 0;


    function viewTime() public view returns (uint256 time) {
        return participants;
    }

    function deposit(uint256 lottery_id) external payable  {
        Vault memory vault = Vault(msg.sender,lottery_id, msg.value);
        vaults.push(vault);
        emit Deposit(msg.sender, msg.value);
    }

    function getVaultsInfo() public view returns (Vault[] memory) {
        uint256 vaultsCount = vaults.length;
        Vault[] memory result = new Vault[](vaultsCount);

        for (uint256 i = 0; i < vaultsCount; i++) {
            result[i] = vaults[i];
        }
        return result;
    }

    // Event to log deposits
    event Deposit(address indexed sender, uint256 amount);

    function withdraw() payable public {
        payable(msg.sender).transfer(msg.value);
        // token.transfer(msg.sender, amount);
    }

    function claim(uint256 value, address acc, uint256 pool_id) public {}
}
