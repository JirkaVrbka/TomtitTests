*** Settings ***
Documentation    The number of lists to iterate over is not limited, but it must match the number of loop variables. Alternatively there can be just one loop variable that then becomes a Python tuple getting items from all lists.

*** Variables ***
@{ABC}           a    b    c
@{XYZ}           x    y    z
@{NUM}           1    2    3    4    5

*** Test Cases ***
FOR-IN-ZIP with multiple lists
    FOR    ${a}    ${x}    ${n}    IN ZIP    ${ABC}    ${XYZ}    ${NUM}
        Log Many    ${a}    ${x}    ${n}
    END

FOR-IN-ZIP with one variable
    FOR    ${items}    IN ZIP    ${ABC}    ${XYZ}    ${NUM}
        Length Should Be    ${items}    3
        Log Many    ${items}[0]    ${items}[1]    ${items}[2]
    END