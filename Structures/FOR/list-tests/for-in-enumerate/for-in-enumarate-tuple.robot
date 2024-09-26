*** Settings ***
Documentation    If you only use one loop variable with FOR-IN-ENUMERATE loops, that variable will become a Python tuple containing the index and the iterated value

*** Variables ***
@{LIST}         a    b    c    d    e    f    g    h

*** Test Cases ***
FOR-IN-ENUMERATE with one loop variable
    FOR    ${x}    IN ENUMERATE    @{LIST}
        Length Should Be    ${x}    2
        Log    Index is ${x}[0] and item is ${x}[1].
    END