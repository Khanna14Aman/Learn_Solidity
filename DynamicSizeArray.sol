// SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract DynamicArrayLearn{
    int[] public arr;
    function pushElement(int value)public{
        arr.push(value);
    }
    function getLength()view public returns(uint){
        return arr.length;
    }
    function popElement()public{
        arr.pop();
    }
}