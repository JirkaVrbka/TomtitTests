*** Settings ***
Documentation    With WHILE loops, there is always a possibility to achieve an infinite loop, either by intention or by mistake. This happens when the loop condition never becomes false. While infinite loops have some utility in application programming, in automation an infinite loop is rarely a desired outcome. If such a loop occurs with Robot Framework, the execution must be forcefully stopped and no log or report can be created. For this reason, WHILE loops in Robot Framework have a default limit of 10 000 iterations. If the limit is exceeded, the loop fails.
...    The limit can be changed with the limit configuration parameter. Valid values are positive integers denoting iteration count and time strings like 10s or 1 hour 10 minutes denoting maximum iteration time. The limit can also be disabled altogether by using NONE (case-insensitive). All these options are illustrated by the examples below.
...    Keywords in a loop are not forcefully stopped if the limit is exceeded. Instead the loop is exited similarly as if the loop condition would have become false. A major difference is that the loop status will be FAIL in this case.

*** Test Cases ***
Limit as iteration count
    WHILE    True    limit=100
        Log    This is run 100 times.
    END

Limit as time
    WHILE    True    limit=3 seconds
        Log    This is run 3 seconds.
    END

No limit
    WHILE    True    limit=NONE
        Log    This must be forcefully stopped.
        FAIL
    END

No limit specified
    WHILE    True
        Log    This must be forcefully stopped.
        FAIL
    END