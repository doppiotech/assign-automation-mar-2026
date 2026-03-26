*** Settings ***
Resource        ${CURDIR}/../../resources/import.robot

Test Setup      landing_page.Open gother web

*** Test Cases ***
TC_WEB_POC_001
    [Tags]      TC_WEB_POC_001
    Verify system can redirect to landing page
    Click on Login/Register button
    Click on Phone/Email button
    Debug
    log to console    hello
