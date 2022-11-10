//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract tut2 {
    struct Person {
        uint256 favNum;
        string name;
    }
    //Now we can make 3 things of struct. First is an instance and Second is an array and mapping. Array and mapping more commonly used.
    
    //instance:
    Person public person1 = Person({favNumber: 7, name: "Randomass1"});

    //array
    Person[] public people;

    //mapping
    mapping(string => uint256) public nameToFavNum;

    function addPerson(uint256 _favNum, string memory _name) public {
        people.push(Person(_favNum, _name));
        nameToFavNum[_name] = _favNum;
    }
}