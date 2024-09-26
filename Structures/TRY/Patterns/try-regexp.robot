*** Settings ***
Documentation     By default matching an error using EXCEPT requires an exact match. That can be changed using a configuration option type= as an argument to the except clause. Valid values for the option are GLOB, REGEXP or START (case-insensitive) to make the match a glob pattern match, a regular expression match, or to match only the beginning of the error, respectively. Using value LITERAL has the same effect as the default behavior. If an EXCEPT has multiple messages, this option applies to all of them. The value of the option can be defined with a variable as well.

*** Variables ***
${MATCH TYPE}     regexp

*** Test Cases ***
Regular expression
    TRY
        Log    Some Keyword
    EXCEPT    ValueError: .*    type=${MATCH TYPE}
        Log    Error Handler 1
    EXCEPT    [Ee]rror \\d+ occurred    type=Regexp    # Backslash needs to be escaped.
        Log    Error Handler 2
    END