// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

//state variables - owner, balance
//functions - restock, getItem

contract VendingMachine{
    //state variables
    address public owner;
    mapping (address => uint) public balance;

//initialize state variables here
    constructor(){
        owner = msg.sender;
        balance[address(this)]=100;
    }

//to buy an item from the vending machine
    function getItem(uint amount) public payable{
        balance[msg.sender] += amount;
        balance[address(this)] -= amount;
    }

//let's the owner restock the vending machine
    function restock(uint amount) public {
        require(owner == msg.sender);
        balance[address(this)] += amount;
    }

     function getVendingMachineBalance() public view returns (uint) {
        return balance[address(this)];
    }
}