*** Settings ***
Library    Collections

*** Test Cases ***
Dictionary
    ${dict1}=      Create Dictionary     GroupType=3    VPoolID=be7d518e-9851-4ad5-bd59-c7987fc3dd9b
    ${dict2}=      Create Dictionary     GroupType=3    VPoolID=1a82e650-589e-4077-878b-48eea7211278
    ${vPools}=     Create List           ${dict1}       ${dict2}
    ${vPoolID}=    Get From Dictionary   @{vPools}[0]   VPoolID