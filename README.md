# Creating a Custom Token

Tokens are basically used to facilitate transactions on blockchain. Here in this project I have created my own token.

## Description

In this program I have declared the name of my Token, its symbol, decimals and the total supply of them along with a balanceof mapping
and a onlyOwner modifier.
There also are 4 functions named mint, burn, transfer, balanceOf to mint, burn, transfer and check balance of the tokens. 

### Executing program

We intitialize the above variables with the help of constructor.
We pass a address and the value that represents the amount of the token to mint in the mint function, then we check the total supply, balance of that address if it is equal to the value we passed.
Then for the burn function we pass a address and the value that represents the amount of the token to burn, then we check the total supply, balance of that address to see if their value has been subtracted from the value we passed .
And for the transfer function function we pass two addresses the address of the sender and the receiver along with the amount of tokens to transfer, then we check the balance of each address.

## Authors

suke aka Sujal Keer.
