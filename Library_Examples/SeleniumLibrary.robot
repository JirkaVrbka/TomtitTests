*** Settings ***
Documentation    This test suite demonstrates how to use the SeleniumLibrary to automate web testing in Robot Framework.
...              The test case in this suite opens a web page, interacts with various elements on the page, and verifies 
...              that the page behaves as expected.
...              
...              The test uses the Chrome browser and the SeleniumLibrary, and includes tags for filtering tests in reports or test runs.

Library          SeleniumLibrary

*** Variables ***
${URL}                   https://www.google.com
${EXPECTED_TITLE}        Google
${SEARCH_BOX_LOCATOR}    name=q
${SEARCH_QUERY}          robot framework

*** Test Cases ***
Google Search Test
    [Documentation]    In this test case, we demonstrate how to use the SeleniumLibrary to automate web testing.
    ...                The test case opens the Google homepage, enters a search query, submits the query, and checks that 
    ...                the search results page has loaded and contains expected elements.
    [Tags]             Web  SeleniumLibrary
    Open Browser        ${URL}    chrome
    Maximize Browser Window

    Input Text           ${SEARCH_BOX_LOCATOR}    ${SEARCH_QUERY}
    Press Keys           ${SEARCH_BOX_LOCATOR}    \\13

    Wait Until Page Contains Element    css=.rc
    Should Contain        ${EXPECTED_TITLE}     Get Title
    Should Contain        ${SEARCH_QUERY}       Get Text    css=input[name="q"]
    Close Browser
