// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;


contract MyContract{
    //State variable
    int256 myInt = 1; //cant also be nagative
    uint public myUint  = 1;
    uint256 public myUint256 = 1;
    uint8 public Uint8 = 1;

    //strings
    string myString = "Hell World";
    string public myString2 = "Hey world";
    bytes32 public mybytes32 = "Hello World!";


    // address
    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    //structs
    struct MyStruct {
        uint256 myUint256;
        string mySTRING;
    }

    MyStruct public myStruct = MyStruct(1,"Hello World");
    

    //local variable
    function getValue() public pure returns(uint){
        uint value = 1;
        return value;

    }



}
