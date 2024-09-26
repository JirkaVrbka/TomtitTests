*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${CHROME_OPTIONS}  --no-sandbox  --disable-dev-shm-usage  --disable-gpu


*** Test Cases ***
Firefox
        Open Browser        https://stackoverflow.com/questions/42195989/how-can-i-open-chrome-with-no-sandbox-when-using-robot-framework    firefox
    Close All Browsers
No_Sandbox Chrome - Open Browser
    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    no-sandbox
    ${options}    Call Method     ${chrome_options}    to_capabilities

        Open Browser        https://stackoverflow.com/questions/42195989/how-can-i-open-chrome-with-no-sandbox-when-using-robot-framework    browser=chrome    desired_capabilities=${options}
Open Chrome with No Sandbox
    [Documentation]  Opens Chrome with --no-sandbox and other options
    Open Browser  https://www.google.com  browser=chrome  options=${CHROME_OPTIONS}
    Title Should Be  Google
    [Teardown]  Close Browser