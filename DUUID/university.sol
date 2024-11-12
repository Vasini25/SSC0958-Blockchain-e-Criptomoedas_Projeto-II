// SPDX-License-Identifier: GPL-3.0

// Version of compiler
pragma solidity >=0.7.0 <0.9.0;

import "./student.sol";

contract University {

    string public UniName;
    uint public fundationYear;

    address[] public studentList;
    mapping(address => Student) public students;

    uint public studentsSubscribed = 0;


    constructor(string memory _UniName, uint _fundationYear) {
        UniName = _UniName;
        fundationYear = _fundationYear;
    }

    function addStudent(string memory name, uint enrollmentYear, string memory institutional_ID) public {
        studentsSubscribed++;
        Student newStudent = new Student(name, enrollmentYear, institutional_ID, studentsSubscribed);

        studentList.push(address(newStudent));
    }

    function concedeStudentsCredits(address studentAddress, uint credits) public {
        Student student = Student(studentAddress);
        student.addCredits(credits);
    }

    function changeStudentsCGPA(address studentAddress, uint CGPA) public {
        Student student = Student(studentAddress);
        student.updateCGPA(CGPA);
    }
}