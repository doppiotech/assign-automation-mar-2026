*** Settings ***
Resource    ${CURDIR}/../../resources/import.robot
Variables   ${CURDIR}/../../resources/settings/setting.yaml
Variables   ${CURDIR}/../../resources/testdata/testdata.yaml

*** Test Cases ***
TC_HOTELS_001
    Common.Open web gother    ${default_browser}    ${headless}
    Handle cookie consent if present
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
    Click search button
    Verify search results summary is correct
    ...    ${TC_001.booking_info.expected_result.summary_destination}
    ...    ${TC_001.booking_info.expected_result.summary_checkin}
    ...    ${TC_001.booking_info.expected_result.summary_checkout}
    ...    ${TC_001.booking_info.expected_result.summary_guests}
    Select hotel by name    Asia Hotel Bangkok
    Browser.Switch Page    NEW
    Verify hotel name on detail page is correct     ${TC_001.booking_info.target_hotel}
    Click book now button
    Verify hotel name on checkout page is correct       ${TC_001.booking_info.booking_info_hotel}
    Verify guest type on checkout page is correct       ${TC_001.booking_info.summary_guest_type}
    Verify total price on checkout page is correct      ${TC_001.booking_info.expected_total_price}
    Select gender
    Click confirm booking button
    



    
