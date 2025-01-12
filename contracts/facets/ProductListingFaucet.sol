// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;
import "../model/Model.sol";
import "../model/Event.sol";



contract ProductList {

// note that every user that want to list product must have the gata nft which is a membership nft that gives them 
// the ability to list product on the platform so we are going to use the gata nft to verify the user that want to list product 
// and also the user that want to list product must have the gata nft to verify that they are a member of the platform there 3 different nft type membership nft, gold nft and diamond nft
// the membership nft is the lowest nft that gives the user the ability to list product on the platform 10 listing per user
// the gold nft is the second nft that gives the user the ability to list product on the platform 20 listing per user
// the diamond nft is the highest nft that gives the user the ability to list product on the platform 30 listing per user

function listProduct(
    string memory _name,
    string memory _imageHash,
    uint256 _price,
    uint256 _quantity,
    string memory _description,
    string memory _specifications,
    string memory _shippingMethod,
    string memory _deliveryDetails
) external {
    // Logic for listing the product
    // Emit ProductListed event
}



function updateProductDetails(
    uint256 _productId,
    string memory _updatedDetails
) external {
    // Logic for updating product details
    // Emit ProductUpdated event
}

function getProduct(uint256 _productId) external view returns (Product memory) {
    // Logic for fetching product details
    return null;
}

function getAllProduct() external view returns (Product [] memory){
        // Logic for fetching product details


}

function getAllUserProduct(address _seller) external view returns (Product [] memory){
        // Logic for fetching all product 

    
}

function createDiscountCode(
    string memory _code,
    uint256 _discountPercentage,
    uint256 _validUntil
) external {
    require(_discountPercentage > 0 && _discountPercentage <= 100, "Invalid discount percentage");
    require(_validUntil > block.timestamp, "Invalid expiration date");

  

    emit DiscountCodeCreated(_code, _discountPercentage, _validUntil, msg.sender);
}

function validateDiscountCode(string memory _code) external view returns (bool) {
    DiscountCode memory discount = discountCodes[_code];
    return discount.isActive && discount.validUntil > block.timestamp && discount.seller == msg.sender;
}




}