*** Settings ***
Resource        ${CURDIR}/../../resources/import.robot
Variables       ${CURDIR}/../../resources/testdata/web/testdata.yaml
Test Setup      landing_page.Open gother web             th             chromium                             

*** Test Cases ***
TC_HOTELS_001
    [Tags]   TC_HOTELS_001   module:    feature:    sub_feature:    test_type:    status:ready    author: Pim 
    BuiltIn.Log to console    Gother website is opened successfully and the homepage is displayed
    login_feature.Login with email or mobile no. method
    ...    ${account_user.email_address}           
    ...    ${account_user.password}
    BuiltIn.Log to console    User is logged in successfully
    hotels_select_feature.Search and select hotels            โตเกียว
    #DEBUG
    