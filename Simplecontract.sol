// SPDX-License-Identifier: MIT

pragma solidity 0.8.8;


contract SimpleStorage{

uint256 favoriteNumber;

// creating a new type named as people. To do that we need to use struct

struct People{
    uint256 favoriteNumber;
    string name;
}

// using data structure mapping 
//joining this to this & is public with this name          
mapping(string => uint256) public nametofavoritenumber;
//here we are making list with data type People[] which is an array data type
// and giving it a name "people" 
People[] public people;

function store(uint256 _favoriteNumber) public {
    favoriteNumber = _favoriteNumber;
}

function retrieve() public view returns (uint256){
    return favoriteNumber;
}

function  addPerson(string memory _name, uint256 _favoriteNumber) public {
    //here we are pushing or storing value in a people variable which is a list by using 
    //People array having     _favoriteNumber    and _name
    people.push(People(_favoriteNumber, _name));
    nametofavoritenumber[_name] = _favoriteNumber;
}






}


