// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract MyContract{
    //mappings are key-value pairs like databases
    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;
    // nested mapping

 
    struct Book {
        string title;
        string author;

    }

    constructor() public {
        names[1] = "Adam";
        names[2] = "Charlie";
        names[3] = "Carl";

    }

    function addBook(
        uint _id, 
        string memory _title, 
        string memory _author
        ) public{
        books[_id] = Book(_title,_author);

    } 

    function addMyBook(
        uint _id,
        string memory _title,
        string memory _author
    ) public {
        //msg.sender is the person who is tryng to make the tranaction in the function
        myBooks[msg.sender][_id] = Book(_title, _author);
    }







}
