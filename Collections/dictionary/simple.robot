*** Variables ***
&{USER}    name=robot    password=secret

*** Test Cases ***
Constants
    Login    name=robot    password=secret

Dict Variable
    Login    &{USER}


*** Keywords ***
Login
    [Arguments]    &{dict}
    Log Many    ${dict}