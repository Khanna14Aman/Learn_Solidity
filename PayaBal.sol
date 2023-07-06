// SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract pay{

    address payable user = payable(0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB);

    function payEther() public payable{

    }
    function getBalance() public view returns(uint){
        return address(this).balance;
    }
    function sendEther()public{
        user.transfer(1 ether);
    }
}