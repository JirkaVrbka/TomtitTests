*** Settings ***
Documentation    Just like with regular FOR loops, you can loop over multiple values per loop iteration as long as the number of values in your list is evenly divisible by the number of loop-variables (excluding the index variable)

*** Test Cases ***
FOR-IN-ENUMERATE with two values per iteration
    FOR    ${index}    ${en}    ${fi}    IN ENUMERATE
    ...    cat      kissa
    ...    dog      koira
    ...    horse    hevonen
        Log    "${en}" in English is "${fi}" in Finnish (index: ${index})
    END