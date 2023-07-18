//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract functionTypes{
    uint public x = 10;

    function multiply(uint y) public view returns (uint){
        return x * y;
    }

    function add(uint a, uint b) public pure returns (uint){
        return a + b;
    }
}
