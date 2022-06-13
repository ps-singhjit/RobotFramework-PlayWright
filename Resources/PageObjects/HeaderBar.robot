*** Settings ***
Library     Browser


*** Variables ***
${search_edit}      xpath=//*[@id='gh-ac']
${search_btn}       xpath=//input[@id='gh-btn']


*** Keywords ***
Enter Text in Search Bar
    [Arguments]    ${arg_searchText}
    Fill Text    ${search_edit}    ${arg_searchText}

Click on Search Button
    Click    ${search_btn}
