*** Variables ***
@{EMPLOYERS}    David    Richard    Olena    Karyna    Jirka    Marketa

*** Test Cases ***
Multiple loop variables
    FOR    ${index}    ${english}    ${finnish}    IN
    ...    1           cat           kissa
    ...    2           dog           koira
    ...    3           horse         hevonen
        Log Many    ${english}    ${finnish}    ${index}
    END
    FOR    ${name}    ${id}    IN    @{EMPLOYERS}
        Log Many    ${name}    ${id}
    END