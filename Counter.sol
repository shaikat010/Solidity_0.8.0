// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Counter{

    uint count;

    constructor() public {
        count = 0;
    }

    //read funcitons do not require gas
    function getCount() public view returns(uint){
        return count;
    }

    //requires gas
    function incrementCount() public{
        count = count + 1;

    }

}


// below is the same contract in an efficient manner
// contract Counter{
//     uint public count = 0;

//     //requires gas
//     function incrementCount() public{
//         count = count + 1;

//     }

// }
