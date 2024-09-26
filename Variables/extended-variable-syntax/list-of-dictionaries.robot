*** Test Cases ***
List of Dictionaries
    ${a}    Create Dictionary    a=1    b=2
    ${b}    Create Dictionary    x=5    y=7
    ${stuff}    Create List    ${a}    ${b}
    ${item}    Set Variable    ${stuff[0]['b']}
    Should Be Equal    ${stuff[1]['x']}    5