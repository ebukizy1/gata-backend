// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;


event DiscountCodeCreated(string code, uint256 discountPercentage, uint256 validUntil, address indexed seller);
  event ProductListed(uint256 indexed productId, string name, address indexed owner);
    event ProductUpdated(uint256 indexed productId, string updatedDetails);