*** Settings ***
Library    Browser


*** Variables ***
${CHROME_OPTIONS}  --no-sandbox  --disable-dev-shm-usage  --disable-gpu


*** Test Cases ***
Run with visible browser
    New Browser    chromium    headless=No
    New Page    https://www.selenium.dev/selenium/web/web-form.html
    Set Browser Timeout    0.5 sec
    Get Title    ==    Web form
    Type Text    [name="my-text"]    Selenium
    Click    button
    Get Text    id=message    ==    Received!
Get text in browser
    [Documentation]    Gets, types and asserts
    New Page    https://example.cypress.io
    Click    "type"
    Get Url    *=    /commands/actions
    Type Text    .action-email    fake@email.com
    Get Text     .action-email    ==    fake@email.com
Playwright Test
    New Page    https://playwright.dev/
    Get Title    matches   Playwright
    Get Attribute    "Get started"    href    ==    /docs/intro
    Click    "Get started"
    Get Url    matches    .*intro
