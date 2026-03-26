*** Settings ***
Resource        ${CURDIR}/../../resources/import.robot
Variables       ${CURDIR}/../../resources/testdata/web/testdata.yaml

Test Setup      landing_page.Open gother web

*** Test Cases ***
TC_web_hotels_001
    [Tags]      TC_web_hotels_001
    DEBUG