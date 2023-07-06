// SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract StorageVsMemory{
    string[3] public Student=['aman','ekta',"lucky"];
    function mem()view public{
        string[3] memory s1 = Student;
        s1[0] = "Akash";
    }
    function sto()public{
        string[3] storage s1 = Student;
        s1[0] = "Akash";
    }
}