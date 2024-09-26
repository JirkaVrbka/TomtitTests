*** Variables ***
@{USER}    admin    tester    developer    manager

*** Test Cases ***
Constants
    Log Many    robot    secret

List Variable
    Log Many    @{USER}