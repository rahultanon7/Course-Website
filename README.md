# course-website

A Spring MVC application to manage courses for the college website aimed to provide recommendations to students on course selection.

The Project has 2 modules 1 - Show all Courses - index.htm 2 - Add Courses - loginPage.htm Add Courses module can only be accesed only after authentication

MVC Framework has been followed 
There are different files for doa, controller and views Spring without maven has been used

Add Courses Module - Checkauthentication has been made to prevent the user from entering invalid prerequistics values in the DB Incorrrect values are - CourseID - CS-109 then prereq values should be less than 109 ex - CS-108,CS,106 etc
