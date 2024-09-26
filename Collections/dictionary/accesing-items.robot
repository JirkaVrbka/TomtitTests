*** Settings ***
*** Variables ***
&{USER}    admin=123    tester=321    developer=s#!@GSA*
${DICT}    cz=czech    sk=slovak    en=english    ua=ukraine
${KEY}    ua

*** Keywords ***
Keyword
    [Arguments]    ${arg1}
    Log    ${arg1}


Login
    [Arguments]    ${user}    ${pwd}
    Log Many    ${user}    ${pwd}
*** Test Cases ***
Dictionary variable item
    Login    ${USER}[name]    ${USER}[password]

Key defined as variable
    Log Many    ${DICT}[${KEY}]    ${DICT}[${3}]

Attribute access
    Login    ${USER.name}    ${USER.password}