*** Settings ***
Library     Browser     strict=${FALSE}
Library     DebugLibrary
Library     String

*** Keywords ***
Open web gother
    [Arguments]    ${default_browser}    ${headless}    ${timeout}=${globle_timeout}
    Browser.New browser    browser=${default_browser}    headless=${headless}    timeout=${timeout}
    Browser.New context
    Browser.New page       https://www.gother.online/
