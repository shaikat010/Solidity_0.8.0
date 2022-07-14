// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;


contract MyArray{
    //arrays
    uint[] public uintArray = [1,2,3];
    string[] public stringArray = ['apple','banana','jackfruit'];
    string[] public myArray;
    //2-dimensional array
    uint256[][] public array2D = [[1,2,3],[4,5,6]];

    function addValue(string memory _value) public{
        myArray.push(_value);
    }

    function valueCount() public view returns(uint){
        return myArray.length;
    }


    

}

