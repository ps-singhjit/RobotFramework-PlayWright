*** Settings ***
Library     Browser


*** Test Cases ***
Example Test
    [Documentation]    first playwright test
    # New Browser    chromium    headless=false
    # New Context    viewport={'width': 1920, 'height': 1080}
    New Page    https://playwright.dev
    Get Text    h1    contains    Playwright
