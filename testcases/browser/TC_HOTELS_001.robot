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
    Click tap hotels
    Click textbox in section destinatio
    Input destination                       ${TC_001.booking_info.destination}
    Select destination from dropdown        ${TC_001.booking_info.destination}
    Select travel date    
    ...    ${TC_001.booking_info.checkin_month}    
    ...    ${TC_001.booking_info.checkin_year}    
    ...    ${TC_001.booking_info.checkin_day}    
    ...    ${TC_001.booking_info.checkout_day}
    Select guests and rooms    
    ...    ${TC_001.booking_info.guest_info.rooms}    
    ...    ${TC_001.booking_info.guest_info.adults}    
    ...    ${TC_001.booking_info.guest_info.children}




    
