//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract AbstractContract {
    function add() external virtual  returns (uint);
}

interface IInterface {
    function mul() external returns (uint);
}

contract MyContract is AbstractContract, IInterface {
    function add() external pure override returns (uint){
        uint a = 10;
        uint b = 20;
        uint result = a + b;
        return result;
    }

    function mul() external pure override returns (uint){
        uint a = 10;
        uint b = 20;
        uint result = a * b;
        return result;
    }
}
