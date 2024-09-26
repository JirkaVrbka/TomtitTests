*** Settings ***


*** Variables ***
${var_shared_keywords}    shared keywords value

*** Keywords ***
Shared keyword
    Log    ${var_shared_keywords}