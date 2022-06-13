*** Settings ***
Library     Browser


*** Variables ***
${result_label}     //h1[@class='srp-controls__count-heading']


*** Keywords ***
Validate Search results
    [Arguments]    ${arg_result}
    Get Text    ${result_label}    contains    ${arg_result}
