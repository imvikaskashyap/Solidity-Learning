// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;


contract Storage{
    uint num = 5;

    function insertNum(uint _num) public  {
        num = _num;
    }


    function returnNum() public view  returns (uint){
        return num;
    }
}


contract anotherContract {

    Storage obj = new Storage();

   function returnObj() public view returns (Storage) {
        return obj;
   }
   function gettingNum() public view returns (uint) {
        return obj.returnNum();
   }
    
}