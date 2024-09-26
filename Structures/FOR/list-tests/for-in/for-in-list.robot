*** Variables ***
@{ELEMENTS}    1    2    3    4    5

*** Test Cases ***
Simple For
    FOR    ${element}    IN    @{ELEMENTS}
        Log    ${element}
    END

List Of Lists
    @{table}=    Create List    [['a', 'b', 'c'], ['d', 'e', 'f'], ['g', 'h', 'i']]
    FOR    ${row}    IN    @{table}
        Log Many    ${row}
    END