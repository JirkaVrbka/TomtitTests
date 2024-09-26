*** Variables ***
@{LIST}         a    b    c
@{LIST2}         a    b    c
${START}        10

*** Test Cases ***
FOR-IN-ENUMERATE with start
    FOR    ${index}    ${item}    IN ENUMERATE    @{LIST}    start=1
        Log Many    ${index}    ${item}
    END

Start as variable
    FOR    ${index}    ${item}    IN ENUMERATE    @{LIST}    start=${start}
        Log Many    ${index}    ${item}
    END