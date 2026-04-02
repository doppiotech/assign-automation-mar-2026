*** Settings ***
Resource        ${CURDIR}/../../resources/import.robot
Variables       ${CURDIR}/../../resources/testdata/web/testdata.yaml
Test Setup      landing_page.Open gother web             th             chromium                             

*** Test Cases ***
TC_HOTELS_001
    [Tags]   TC_HOTELS_001   module:    feature:    sub_feature:    test_type:    status:ready    author: Pim 
    BuiltIn.Log to console    Gother website is opened successfully and the homepage is displayed
    common_web.Click accept cookie
    login_feature.Login with email or mobile number method
    ...    ${TC_001.account_user.email_address}           
    ...    ${TC_001.account_user.password}
    BuiltIn.Log to console    User is logged in successfully
    hotels_select_feature.Search hotels          
    ...    ${TC_001.booking_information.search_hotels_text} 
    hotels_select_feature.Select check-in date
    ...     ${TC_001.booking_information.checkin_day} 
    ...     ${TC_001.booking_information.checkin_month} 
    ...     ${TC_001.booking_information.checkin_year} 
    hotels_select_feature.Select check-out date 
    ...     ${TC_001.booking_information.checkout_day} 
    ...     ${TC_001.booking_information.checkout_month} 
    ...     ${TC_001.booking_information.checkout_year} 
    hotels_select_feature.Select guests and room
    ...    ${TC_001.guest_info.rooms} 
    ...    ${TC_001.guest_info.adults}
    ...    ${TC_001.guest_info.children} 
    hotels_select_feature.Select hotels  
    #ตัวแปรนี้เป็น index ของ hotels ที่เลือก เช่น ถ้าเป็น 0 จะเลือก hotels ที่อยู่อันดับแรก 
    ...    0
    BuiltIn.Log to console    Hotel search and select results page is successfully
    # ระบุตัวแปรแบบ index 
    # - ตัวแรกเป็น index ของ type room โดยเรียงลำดับจากบนไปล่าง
    # - ตัวที่สองเป็น index ของ romm ของแต่ละ type โดยเรียงลำดับจากบนไปล่าง
    select_hotels_page.Book room by index        0        0
    BuiltIn.Log to console    Select a room and click Book now is successfully
    payment_feature.Input booking for hotels
    ...    ${TC_001.booking_information.gender}  
    ...    ${TC_001.account_user.first_name} 
    ...    ${TC_001.account_user.last_name} 
    ...    ${TC_001.account_user.mobile_number} 
    ...    ${TC_001.account_user.email_address} 
    BuiltIn.Log to console    Confirm booking now successfully
    DEBUG 
    payment_feature.Input payment for hotels    
    ...    ${TC_001.credit_card_information.card_number} 
    ...    ${TC_001.credit_card_information.card_holder_name} 
    ...    ${TC_001.credit_card_information.expiry_date} 
    ...    ${TC_001.credit_card_information.cvv}
    BuiltIn.Log to console    Input payment information successfully
    hotels_payment_success_page.Verify payment successfully
    BuiltIn.Log to console    Payment success!
    Sleep    2s
    DEBUG 

    