// SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract LearnMap{
    // mapping(string=>uint) public map;
    // function setter(uint n,string memory name)public{
    //     map[name] = n;
    // }

    struct Student{
        string name;
        uint class;
    }
    mapping(uint=>Student)public map;
    function setter(uint _roll,string memory _name,uint _class)public{
        map[_roll] = Student(_name,_class);
    }
}