*** Settings ***
Documentation    Some tests build up several related lists, then loop over them together. Robot Framework has a shortcut for this case: FOR ... IN ZIP ..., which is derived from the Python built-in zip() function.

*** Variables ***
@{NUMBERS}       ${1}    ${2}    ${5}
@{NAMES}         one     two     five
@{LISTS}         ${NUMBERS}    ${NAMES}

*** Test Cases ***
Iterate over two lists manually
    ${length}=    Get Length    ${NUMBERS}
    FOR    ${index}    IN RANGE    ${length}
        Log Many    ${NUMBERS}[${index}]    ${NAMES}[${index}]
    END

FOR-IN-ZIP
    FOR    ${number}    ${name}    IN ZIP    ${NUMBERS}    ${NAMES}
        Log Many    ${number}    ${name}
    END

FOR-IN-ZIP with lists from variable
    FOR    ${number}    ${name}    IN ZIP    @{LISTS}
        Log Many    ${number}    ${name}
    END