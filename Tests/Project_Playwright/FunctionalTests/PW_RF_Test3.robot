*** Settings ***
Documentation       setting up Playwright test with basic Locator functionality

Resource            ../../../Resources/CommonKeywords.robot

Test Setup          Start Test    ${BROWSER}    ${HEADLESS}    ${URL}
Test Teardown       Finish Test


*** Variables ***
${BROWSER}          chromium
${HEADLESS}         false
${URL}              https://academy.naveenautomationlabs.com/

${login_text}       text=Login


*** Test Cases ***
Checking locators type - Playwright
    [Documentation]    Test locators type - Playwright
    [Tags]    functional
    Hover    ${login_text}.first
    Sleep    3s
    Click    ${login_text}.first
    Sleep    3s
