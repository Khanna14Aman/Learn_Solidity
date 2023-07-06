// SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

struct Student{
    uint roll;
    string name;
}

contract LearnStruct{
    Student public s;
    constructor(uint _roll,string memory _name){
        s.roll = _roll;
        s.name = _name;
    }
    function change(uint _roll,string memory _name)public{
        Student memory new_student = Student({
            roll:_roll,
            name:_name
        });
        s = new_student;
        s.roll=_roll+2;
    }
}