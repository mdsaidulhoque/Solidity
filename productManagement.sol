// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProductManager{
    string public productName;
    uint public productPrice;
    uint public productStock;
    bool public isAvailable;
    
    function setupProduct(string memory Name,uint Price,uint Stock) public {
        productName = Name;
        productPrice = Price;
        productStock = Stock;
        isAvailable = true;
    }

        function Purchase(uint Quantity) public returns(bool){
         if (productStock > Quantity && isAvailable){
           productStock = productStock - Quantity;
           if(productStock == 0){
            isAvailable = false;
           }
           return true;
          }
          return false;
        }

        function canfulfillOrder(uint Quantity) public view returns(bool){
            return (productStock >= Quantity && isAvailable);
        }

        function updatePrice(uint newPrice) public {
            productPrice = newPrice;
        }

}