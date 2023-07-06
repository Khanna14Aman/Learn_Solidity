// SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.5.0 <0.9.0;


contract State{
    uint age;
    function getter() view public returns(uint){
        return age;
    }

    function setter(uint value)public{
        age = value+1;
    }
}