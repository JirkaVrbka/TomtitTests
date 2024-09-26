*** Settings ***
Documentation    This test suite demonstrates examples of assigning and using list variables in Robot Framework. The tests in this suite show how to assign values to list variables, access values from list variables, pass list variables as arguments to keywords, and concatenate two list variables into a single list. Each test has an associated documentation tag that provides additional context and expected output.
Library     Collections

*** Variables ***
@{fruits}        Apple    Banana    Orange
@{vegetables}    Carrot    Potato    Cabbage

*** Keywords ***
Example Keyword
    [Arguments]    @{list}
    Log List    ${list}

*** Test Cases ***
Example Test 1
    [Documentation]    Assign a value to a list variable. Expected output: "['Apple', 'Banana', 'Orange']." 
    ${fruits_copy}=    Set Variable    @{fruits}
    Log List    ${fruits_copy}

Example Test 2
    [Documentation]    Access a value from a list variable. Expected output: "Banana."
    ${fruit}=    Set Variable    ${fruits}[1]
    Log    ${fruit}

Example Test 3
    [Documentation]    Pass a list variable to a keyword. Expected output: "['Apple', 'Banana', 'Orange', 'Carrot', 'Potato', 'Cabbage']." 
    Example Keyword    ${fruits}    ${vegetables}

Example Test 4
    [Documentation]    Concatenate two list variables. Expected output: "['Apple', 'Banana', 'Orange', 'Carrot', 'Potato', 'Cabbage']." 
    @{food}=    Evaluate    ${fruits} + ${vegetables}
    Log List    ${food}