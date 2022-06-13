*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Sample Test - Selenium
    [Documentation]    Sample Selenium Test
    [Tags]    regression

    Open Browser    https://playwright.dev    chrome
    Maximize Browser Window
    ${text}    Get Text    xpath://h1
    Log    ${text}
    Close Browser
