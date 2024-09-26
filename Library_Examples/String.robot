*** Settings ***
Documentation    This test suite demonstrates how to use the String library to work with strings in Robot Framework.
...              The test case in this suite works with various strings, and verifies that the results behave as expected.
...              
...              The test uses the String library, and includes tags for filtering tests in reports or test runs.

Library          String

*** Variables ***
${STRING}        Hello, World!
${EXPECTED}      world

*** Test Cases ***
String Test
    [Documentation]    In this test case, we demonstrate how to use the String library to work with strings.
    ...                The test case converts a string to lowercase, extracts a substring, and verifies that the result matches the expected value.
    [Tags]             String
    ${LOWERCASE}    Convert To Lowercase    ${STRING}
    ${SUBSTRING}    Get Substring    ${LOWERCASE}    7    11
    Should Be Equal As Strings    ${EXPECTED}    ${SUBSTRING}
