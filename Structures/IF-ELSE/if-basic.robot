*** Variables ***
${rc}    5

*** Test Cases ***
Example
   IF    ${rc} > 0
       Log    1
       Log    2
   END

