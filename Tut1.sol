//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7; // ^ means any version above 0.8.7
contract SimpleStorage {
    //boolean, uint, int, address, bytes
    bool private hasFavNumber = true; //default visibility is internal
    uint256 public favNumber;    //initialised as default value NULL, which in solidity is zero
    // if we put public with the var above, we can see it's value in the deploy&run section. I.e public variable is implicity assigned a function that returns it's value. 
    function store(uint256 _favNum) public {
        favNumber = _favNum;
    }
    //the above fx does change the code cuz we can put values in favNum when we deploy the contract, so it takes gas.
    struct Person {
        uint256 favNumber;
        string name;
    }
    

    //array:
    Person[] public people;

    function addPerson(uint256 _favNumber, string memory _name) public {
        people.push(Person(_favNumber, _name));
    }
    
    function retreive() public view returns(uint256) {
        return favNumber;
    }
    //view and pure fxn alone don't cost gas, however if a gas calling fxn calls a view or pure fxn then it does cost gas cuz view, pure dont change the code in any way.

}
