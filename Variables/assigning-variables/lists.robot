*** Variables ***
${fruits}    Apple    Banana    Orange
@{numbers}    1    2    3    4


*** Test Cases ***
Example with $
    ${list} =    Create List    first    second    third
    Length Should Be    ${list}    3
    Log Many    @{list}

Example with @
    @{list} =    Create List    first    second    third
    Length Should Be    ${list}    3
    Log Many    @{list}

Example with index
    ${fruit}=    Set Variable    ${fruits}[1]
    Log    My favorite fruit is ${fruit}.

Example with numbers and FOR IN
    FOR    ${number}    IN    @{numbers}
        ${square}=    Evaluate    ${number} * ${number}
        Log    The square of ${number} is ${square}.
    END