// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "hardhat/console.sol";

contract Greeter{
    string greeting; //state variable, always in storage

    constructor(string memory _greeting){
        console.log("Deploying a greeter:", _greeting);
        greeting=_greeting;
    }

    function greet() public view returns (string memory){
        return greeting;
    }

    function setGreeting(string memory _greeting) public{
        console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
        greeting=_greeting;
    }
}
