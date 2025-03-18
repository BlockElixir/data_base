Data Contract

Overview

This is a simple Solidity smart contract that stores and updates user information, including name, school, age, and gender.

Features

Store and retrieve a person's name.

Store and retrieve the school name.

Store and retrieve age.

Store gender (though currently, the getGender function is incorrectly implemented as pure, meaning it does not modify state).

Contract Code

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract data {
    string public name;
    string public school;
    int public age;
    bool public gender;

    function getData(string memory elixir) public {
        name = elixir;
    }

    function getSchool(string memory codar) public {
        school = codar;
    }

    function getAge(int256 _age) public {
        age = _age;
    }

    function getGender(bool male) public pure {
        male = true; // This does not update the contract state
    }
}

Issues & Improvements

The getGender function is marked as pure, meaning it does not modify the contract state. To correctly update the gender variable, change the function to:

function getGender(bool _gender) public {
    gender = _gender;
}

Consider renaming function names to be more intuitive, such as setName, setSchool, setAge, and setGender.

Implement event logging for changes.

License

This project is licensed under the MIT License.

# data_base
