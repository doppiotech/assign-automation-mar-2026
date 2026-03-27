*** Settings ***
Resource    ${CURDIR}/../../resources/import.robot
Variables   ${CURDIR}/../../resources/settings/setting.yaml
Variables   ${CURDIR}/../../resources/testdata/testdata.yaml

*** Test Cases ***
TC_HOTELS_001
    Common.Open web gother    ${default_browser}    ${headless}
    Click login signup button
    Click email or mobile no. button
    Fill info in field email        ${TC_001.user_account}
    Click login button 
    Fill info in field password     ${TC_001.user_account}
    Click login in popup loging 
    Verify login success
    Click user profile
    Click menu myaccount




    
