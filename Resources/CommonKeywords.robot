*** Settings ***
Library     Browser
Resource    ./PageObjects/HeaderBar.robot
Resource    ./PageObjects/SearchResultPage.robot


*** Keywords ***
Start Test
    [Arguments]    ${arg_browser}    ${arg_headless}    ${arg_url}
    New Browser    ${arg_browser}    headless=${arg_headless}
    New Context    viewport={'width': 1366, 'height': 768}
    New Page    ${arg_url}

Input Search Text and Verify Result
    [Arguments]    ${arg_searchtxt}    ${expected_result}
    HeaderBar.Enter Text in Search Bar    ${arg_searchtxt}
    HeaderBar.Click on Search Button
    SearchResultPage.Validate Search results    ${expected_result}

Perform Test Validation
    HeaderBar.Enter Text in Search Bar    mobile
    HeaderBar.Click on Search Button
    SearchResultPage.Validate Search results    results for mobile

Finish Test
    Close Page
    Close Context
    Close Browser
