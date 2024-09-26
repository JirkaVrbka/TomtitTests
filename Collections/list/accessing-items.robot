*** Variables ***
@{SEQUENCE}    1    2    3    4    5    6    7    8    9    10
@{USER}    admin    tester    developer    manager
${INDEX}    2

*** Test Cases ***
Positive index
    Login    ${USER}[0]    ${USER}[1]

Negative index
    Keyword    ${SEQUENCE}[-1]

Index defined as variable
    Keyword    ${SEQUENCE}[${INDEX}]

Start index
    Keyword    ${SEQUENCE}[1:]

End index
    Keyword    ${SEQUENCE}[:4]

Start and end
    Keyword    ${SEQUENCE}[2:-1]

Step
    Keyword    ${SEQUENCE}[::2]
    Keyword    ${SEQUENCE}[1:-1:10]

*** Keywords ***
Keyword
    [Arguments]    ${arg1}
    Log    ${arg1}

Login
    [Arguments]    ${user}    ${pwd}
    Log Many    ${user}    ${pwd}