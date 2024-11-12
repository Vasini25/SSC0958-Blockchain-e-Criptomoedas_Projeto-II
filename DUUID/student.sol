// SPDX-License-Identifier: GPL-3.0

// Version of compiler
pragma solidity >=0.7.0 <0.9.0;

contract Student {

    string public name;
    uint public enrollmentYear;
    string public institutional_ID;
    uint public duuID_number;
    uint public CGPA = 0;
    uint public creditsEarned = 0;

    constructor(string memory _name, uint _enrollmentYear, string memory _institutional_ID, uint _duuID_number) {
        name = _name;
        enrollmentYear = _enrollmentYear;
        institutional_ID = _institutional_ID;
        duuID_number = _duuID_number;
    }

    function getStudentDetails() public view returns (string memory, string memory, uint, uint, uint) {
        return (name, institutional_ID, CGPA, duuID_number, creditsEarned);
    }

    function giveStudentChainID() public view returns (uint) {
        return giveStudentChainID();
    }

    function addCredits(uint credits) public {
        creditsEarned += credits;
    }

    function updateCGPA(uint _CGPA) public {
        CGPA = _CGPA;
    }
}