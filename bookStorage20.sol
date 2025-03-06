// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract bookStorage{
    struct Book{
        string bookTitle;
        uint bookPages;
    }
    Book[] public Library;

    function addBook(string memory title,uint pages) public {
        Book memory newBook = Book(title,pages);
        Library.push(newBook);
    }

    function updateBookStorage(uint index,uint newPages) public {
        Book storage publication = Library[index];
        publication.bookPages = newPages;
        Library[index] = publication;
    }

    function updateBookMemory(uint index,uint newPages) public {
        Book memory publication = Library[index];
        publication.bookPages = newPages;
        Library[index] = publication;
    }

}