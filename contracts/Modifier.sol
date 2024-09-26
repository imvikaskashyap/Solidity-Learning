// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;


contract Modifier{

    uint public  num = 10;

    modifier valueCheck(bool _val){
        require(_val == true, "Error");
        _;
    }

    function Val1(bool _val) public valueCheck(_val)   {
        num = 100;
    }
    function Val2(bool _val) public   valueCheck(_val)  {
        num = 200;
    }
    function Val3(bool _val) public  valueCheck(_val)   {
        num = 300;
    }

}