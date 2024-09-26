*** Settings ***
Documentation       Assigning variables.
Library             Collections

*** Test Cases ***
Assign variables 1
    ${string}    Set Variable    Hello, world!
    @{list}    Create List    a    b    c
    &{dict}    Create Dictionary    key1=val1    key2=val2
    ${a}    ${b}    ${c}    Create List    a    b    c
    ${cat_says}    What Does The Cat Say
    ${evaluate}    Evaluate    datetime.date.today()
    ${inline_evaluation}
    ...    Set Variable
    ...    ${{datetime.date.today() + datetime.timedelta(1)}}

*** Keywords ***
What Does The Cat Say
    RETURN    Meow!