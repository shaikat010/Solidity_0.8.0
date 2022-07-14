// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;


contract HotelRoom{
    //Ether payments
    // Modfiers
    // Visibility
    //Events
    //Enums

    // Vacant or Occupied
    enum Statuses { 
        Vacant, 
        Occupied 
    }

    Statuses public currentStatus;
    //events
    event Occupy(address _occupant, uint _value);


    // payable means that the address can receive ether
    address payable public owner;

    constructor(){
        // who is deploying the function to the blockchain
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;

    }

    modifier onlyWhileVacant{
        // check the status of the room
        require(currentStatus == Statuses.Vacant, "Currently Occupied!");
        _;


    }

    modifier costs(uint _amount){
        require(msg.value <= _amount, "Not enough ether");
        _;

    }

    function book() public payable onlyWhileVacant costs(2 ether){
        
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        (bool sent,bytes memory data) = owner.call{value: msg.value}("");
        require(true);
        emit Occupy(msg.sender, msg.value);

    }
}

