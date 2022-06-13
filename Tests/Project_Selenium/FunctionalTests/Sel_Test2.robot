*** Settings ***
Documentation       Basic Search

Library             SeleniumLibrary


*** Test Cases ***
Verify search functionality in eBay
    [Documentation]    Test to verify search functionality
    [Tags]    functional
    Open Browser    https://www.ebay.com    chrome
    Input Text    xpath://*[@id='gh-ac']    mobile
    Click Button    xpath://input[@id='gh-btn']
    Page Should Contain    results for mobile
    Close Browser
