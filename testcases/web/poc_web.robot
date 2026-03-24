*** Settings ***
Resource        ${CURDIR}/../../resources/import.robot

# Test Setup      landing_page.Open gother web

*** Test Cases ***
TC_WEB_POC_001
    landing_page.Open gother web