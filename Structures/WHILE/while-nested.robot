*** Settings ***
Documentation    WHILE loops can be nested and also combined with other control structures:

*** Test Cases ***
Nesting WHILE
    ${x} =   Set Variable    10
    WHILE    ${x} > 0
        ${y} =   Set Variable    ${x}
        WHILE    ${y} > 0
            ${y} =    Evaluate    ${y} - 1
        END
        IF    ${x} > 5
            ${x} =    Evaluate    ${x} - 1
        ELSE
            ${x} =    Evaluate    ${x} - 2
        END
    END