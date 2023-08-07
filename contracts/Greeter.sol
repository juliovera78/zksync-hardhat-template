//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Greeter {
    string private greeting;

    event Greeting(string greeting);
    event GreetingChanged(string oldGreeting, string newGreeting);

    constructor(string memory _greeting) {
        greeting = _greeting;
    }

    function greet() public view returns (string memory) {
        emit Greeting(_greeting);
        return greeting;
    }

    function setGreeting(string memory _greeting) public {
        emit GreetingChanged(greeting, _greeting);
        greeting = _greeting;
    }
}

