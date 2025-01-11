// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

   struct Product {
        uint96 productId;
        bytes productNameHash;
        bytes productimageHash;
        uint256 price;
        uint64 quantity;
        bytes descriptionHash;
        bytes specificationsHash;
        bytes shippingMethodHash;
        bytes deliveryDetailsHash;
        address seller;
    }


    struct DiscountCode {
        bytes code;
        uint256 discountPercentage;
        uint256 validUntil;
        address seller;
        bool isActive;
    }



    enum OrderStatus {
        CREATED,
        PAID,
        SHIPPED,
        DELIVERED,
        CANCELLED
    }



    enum DisputeStatus {
        CREATED,
        RESOLVED
    }


    struct Order {
        uint256 orderId;
        uint256 productId;
        uint64 quantity;
        uint256 price;
        uint256 total;
        address buyer;
        address seller;
        uint256 status;
    }

    struct Dispute {
        uint256 disputeId;
        uint256 orderId;
        address buyer;
        address seller;
        uint256 status;
    }

    struct Escrow {
        uint256 escrowId;
        uint256 orderId;
        address buyer;
        address seller;
        uint256 amount;
        uint256 status;
    }

    struct Payment {
        uint256 paymentId;
        uint256 orderId;
        address buyer;
        address seller;
        uint256 amount;
        uint256 status;
    }

 
    