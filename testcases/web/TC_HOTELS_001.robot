*** Settings ***
Resource        ${CURDIR}/../../resources/import.robot
Variables       ${CURDIR}/../../resources/testdata/web/testdata.yaml
Test Setup      landing_page.Open gother web             th             chromium                             

*** Test Cases ***
TC_HOTELS_001
    [Tags]      TC_HOTELS_001
    login_feature.Login with email or mobile no. method
    #DEBUG
    