// SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.5.0 <0.9.0;


// only funtion f1 and f4 of A can be accessed by remix ide because public and external function can be accessed by outside the environment and remix ide is outside for this contract.
contract A{
    function f1()public pure returns(uint){
        uint value = 1;
        return value;
    }
    function f2()private pure returns(uint){
        uint value = 2;
        return value;
    }
    function f3()internal pure returns(uint){
        uint value = 3;
        // uint val = f4();// we cannot access function f4 because external function cannot be access within the contract.
        return value;
    }
    function f4()external pure returns(uint){
        uint value = 4;
        return value;
    }
}


// example of derived visibility
// Here we can access public and internal function 
// We cannot access private function in derived contract;
// We cannot access external function because external function of contract A becomes within B so as we know we cannot access external function within the contract;
contract B is A{
    // all functions of A becomes part of B;
    function f()public pure returns(uint){
        uint value = f3();
        return value;
    }
}

contract C{
    A public obj = new A();
    uint public value = obj.f1();
    // uint public value2 = obj.f2();
    // uint public value3 = obj.f3();
    uint public value4 = obj.f4();
}

