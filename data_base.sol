// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
contract data{
    string public name;
    string public school;
    int public age;
    bool public gender;
    

    function getData(string memory elixir) public{
        name=elixir;
}

   function getSchool(string memory codar) public{
        school=codar;
}

   function getAge(int256 _age) public{
        age=_age;
   }
   function getGender(bool male) public pure{
         male = true;
     }
}
