// SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.5.0 <0.9.0;


contract IfElse{
    function ifElse(int value)pure public returns(string memory){
        string memory s;
        if(value>0){
            s= "positive";
        }
        else if(value==0){
            s= "equal";
        }
        else{
            s="negative";
        }
        return s;
    }
}