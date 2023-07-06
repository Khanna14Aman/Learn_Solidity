// SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Bytes{
    bytes3 public b3;
    function setter()public {
        b3="ab";
        // b3[1]='f';
    }
    bytes public b;
    function pushElement() public{
        b.push('d');
    }
    function getElement(uint i)view public returns(bytes1){
        return b[i];
    }
    function popElement()public{
        b.pop();
    }
    function getLength() view public returns(uint){
        return b.length;
    }
}