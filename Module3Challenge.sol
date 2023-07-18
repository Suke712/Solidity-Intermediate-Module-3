//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken{

    string public name;
    string public symbol;
    uint public totalSupply;
    uint public decimals;
    address public owner;

    mapping (address => uint) balance;

    event Mint(address indexed to, uint value);
    event Burn(address indexed from, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    constructor(
        string memory _name,
        string memory _symbol,
        uint _totalSupply,
        uint _decimals
    ){
        name = _name;
        symbol = _symbol;
        totalSupply = _totalSupply;
        decimals = _decimals;
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "Only Owner can call this function");
        _;
    }

    function mint(address _to, uint _value) public onlyOwner{
        totalSupply += _value;
        balance[_to] += _value;
        emit Mint(_to, _value);
    }

    function burn(address _from, uint _value) public {
        totalSupply -= _value;
        balance[_from] -= _value;
        emit Burn(_from, _value);
    }

    function transfer(address _from, address _to, uint _value) public {
        balance[_from] -= _value;
        balance[_to] += _value;
        emit Transfer(_from, _to, _value);

    }

    function balanceOf(address _address)public view returns (uint){
        return balance[_address];
    }

}
