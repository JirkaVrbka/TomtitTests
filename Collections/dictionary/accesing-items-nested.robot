*** Settings ***
Documentation    Also nested subscriptable variables can be accessed using the same item access syntax like ${var}[item1][item2]. This is especially useful when working with JSON data often returned by REST services. For example, if a variable ${DATA} contains [{'id': 1, 'name': 'Robot'}, {'id': 2, 'name': 'Mr. X'}], this tests would pass:

*** Test Cases ***
Nested item access
    ${DATA}    Evaluate        [{'id': 1, 'name': 'Robot'}, {'id': 2, 'name': 'Mr. X'}]
    Should Be Equal    ${DATA}[0][name]    Robot
    Should Be Equal    ${DATA}[1][id]      ${2}