// SPDX-License-Identifier: MIT
pragma solidity ^0.5.13;

contract A{
    function deposit() external payable {}

    function () external payable {}

}

contract B{

    function callA(address _addressOfA) external payable{
        (bool success, ) = _addressOfA.call(abi.encodeWithSignature("Withdraw()"));
        require(success, "Callback function is not called");
    }
}
