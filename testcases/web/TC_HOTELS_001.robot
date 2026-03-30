*** Settings ***
Resource        ${CURDIR}/../../resources/import.robot
Variables       ${CURDIR}/../../resources/testdata/web/testdata.yaml
Test Setup      landing_page.Open gother web             th             chromium                             

*** Test Cases ***
TC_HOTELS_001
    [Tags]   TC_HOTELS_001   module:    feature:    sub_feature:    test_type:    status:ready    author: Pim 
    BuiltIn.Log to console    Gother website is opened successfully and the homepage is displayed
    login_feature.Login with email or mobile number method
    ...    ${TC_001.account_user.email_address}           
    ...    ${TC_001.account_user.password}
    BuiltIn.Log to console    User is logged in successfully
    hotels_select_feature.Search and select hotels          
    ...    ${TC_001.booking_information.search_hotels_text} 
    ...    0
    BuiltIn.Log to console    Hotel search and select results page is successfully
    select_hotels_page.Book room by index        0        0
    BuiltIn.Log to console    Select a room and click Book now is successfully
    payment_feature.Input booking for hotels
    ...    ${TC_001.booking_information.gender} 
    ...    ${TC_001.account_user.first_name} 
    ...    ${TC_001.account_user.last_name} 
    ...    ${TC_001.account_user.mobile_number} 
    ...    ${TC_001.account_user.email_address} 
    payment_feature.Input payment for hotels 
    ...    ${TC_001.credit_card_information.card_number} 
    ...    ${TC_001.credit_card_information.card_holder_name} 
    ...    ${TC_001.credit_card_iformation.expiry_date} 
    ...    ${TC_001.credit_card_information.cvv}

    Sleep    2s
    #DEBUG 

    