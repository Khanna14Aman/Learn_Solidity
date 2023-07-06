// SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.5.0 <0.9.0;


contract Loops{
    uint[4] public arr;
    uint count;
    function WhileLoop()public{
      while(count<arr.length){
          arr[count] = count;
          count++;
      }  
    }
    function ForLoop()public{
        for(uint i=0;i<arr.length;i++){
            arr[i] = i+4;
        }
    }
    function DoWhileLoop()public{
        count = 0;
        do{
            arr[count]=count;
            count++;
        }while(count<arr.length);
    }
}