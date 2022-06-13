*** Settings ***
Documentation       setting up Playwright test with basic search functionality

Resource            ../../../Resources/CommonKeywords.robot

Test Setup          Start Test    ${BROWSER}    ${HEADLESS}    ${URL}
Test Teardown       Finish Test


*** Variables ***
${BROWSER}              chromium
${HEADLESS}             false
${URL}                  https://www.ebay.com
# List Variables
@{search_txt}           mobile    gifts    laptop    monitor
# Dictionary Variables
&{search_txt2}          item1=gifts    item2=laptop
${expected_result}      results for


*** Test Cases ***
Verify search functionality in eBay - Playwright
    [Documentation]    Test to verify search functionality - Playwright
    [Tags]    functional
    Input Search Text and Verify Result    ${search_txt}[2]    ${expected_result} ${search_txt}[2]

Verify search functionality in eBay - Playwright2
    [Documentation]    Test to verify search functionality - Playwright
    [Tags]    functional
    Input Search Text and Verify Result    ${search_txt2.item1}    ${expected_result} ${search_txt2.item1}
    
    # Perform Test Validation
