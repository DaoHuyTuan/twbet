// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import "./DeBetPool.sol";

contract Factory {
    address[] public deployedPools;
    function mint_pool(uint256 pool_id) public {
        DeBetPool pool = new DeBetPool(pool_id);
        deployedPools.push(address(pool));
    }
     function getDeployedContracts() public view returns (address[] memory) {
        return deployedPools;
    }
}
