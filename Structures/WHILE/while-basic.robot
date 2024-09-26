*** Settings ***
Documentation    The WHILE loop condition is evaluated in Python so that Python builtins like len() are available and modules are imported automatically to support usages like math.pi * math.pow(${radius}, 2) < 10. Normal variables like ${rc} in the above example are replaced before evaluation, but variables are also available in the evaluation namespace using the special $rc syntax. The latter approach is handy when the string representation of the variable cannot be used in the condition directly. For example, strings require quoting and multiline strings and string themselves containing quotes cause additional problems. See the Evaluating expressions appendix for more information and examples related to the evaluation syntax.

*** Test Cases ***
Example
    ${rc}=   Set Variable    1
    ${index}=  Set Variable    0
    WHILE    ${rc} != 0
        ${rc} =    Set Variable If    ${index} > 5    0
        ${index}=  Evaluate    ${index}+1
    END