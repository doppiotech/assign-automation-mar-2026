*** Keywords ***
Verify hotel name on checkout page is correct
    [Arguments]    ${expected_hotel_name}   ${timeout}=${globle_timeout}
    Browser.Wait For Elements State    ${bookingpage.expected_hotel_name}    visible    timeout=${timeout}
    ${actual_name}=    Browser.Get Text    ${bookingpage.expected_hotel_name}
    # ตรวจสอบว่าชื่อตรงกับที่เลือกมาตอนแรกไหม
    BuiltIn.Should Be Equal As Strings    ${actual_name}    ${expected_hotel_name}

Verify guest type on checkout page is correct
    [Arguments]    ${expected_guest}    ${timeout}=${globle_timeout}
    Browser.Wait For Elements State    ${bookingpage.checkout.txt_guest_type}    visible    timeout=${timeout}
    ${actual_type}=    Browser.Get Text    ${bookingpage.checkout.txt_guest_type}
    BuiltIn.Should Contain    ${actual_type}    ${expected_guest}

Verify total price on checkout page is correct
    [Arguments]    ${expected_price}    ${timeout}=${globle_timeout}
    Browser.Scroll To Element    ${bookingpage.checkout.txt_total_price} 
    Browser.Wait For Elements State    ${bookingpage.checkout.txt_total_price}     visible    timeout=${timeout}
    ${actual_price}=    Browser.Get Text    ${bookingpage.checkout.txt_total_price} 
    BuiltIn.Should Contain    ${actual_price}    ${expected_price}
    BuiltIn.Log    Actual Total Price found: ${actual_price}

Select gender
    [Arguments]    ${gender}    ${timeout}=${globle_timeout}
    Browser.Scroll To Element    ${bookingpage.checkout.section_gender} 
    ${gender_lower}=    Convert To Lower Case    ${gender}
    IF    '${gender_lower}' == 'female'
        Browser.Click With Options    ${bookingpage.checkout.radio_gender_female}    force=${True}
    ELSE IF    '${gender_lower}' == 'male'
        Browser.Click With Options    ${bookingpage.checkout.radio_gender_male}       force=${True}
    END
    Log To Console    Selected gender: ${gender}

Fill first name
    [Arguments]    ${first_name}    ${timeout}=${globle_timeout}
    Browser.Wait For Elements State    ${bookingpage.checkout.input_first_name}    visible    timeout=${timeout}
    Browser.Fill Text    ${bookingpage.checkout.input_first_name}    ${first_name}
    Log To Console    Filled First Name: ${first_name}

Fill last name
    [Arguments]    ${last_name}    ${timeout}=${globle_timeout}
    Browser.Wait For Elements State    ${bookingpage.checkout.input_last_name}    visible    timeout=${timeout}
    Browser.Fill Text    ${bookingpage.checkout.input_last_name}    ${last_name}
    Log To Console    Filled Last Name: ${last_name}

Fill email
    [Arguments]    ${email}    ${timeout}=${globle_timeout}
    Browser.Wait For Elements State    ${bookingpage.checkout.input_email}    visible    timeout=${timeout}
    Browser.Fill Text    ${bookingpage.checkout.input_email}    ${email}
    Log To Console    Filled Email: ${email}

Fill phone number
    [Arguments]    ${phone_number}    ${timeout}=${globle_timeout}
    Browser.Wait For Elements State    ${bookingpage.checkout.input_phone}    visible    timeout=${timeout}
    Browser.Fill Text    ${bookingpage.checkout.input_phone}    ${phone_number}
    Log To Console     Filled Phone: ${phone_number}

Click confirm booking button
    [Arguments]    ${timeout}=${globle_timeout}
    Browser.Scroll To Element    ${bookingpage.checkout.btn_confirm_booking}
    Browser.Wait For Elements State    ${bookingpage.checkout.btn_confirm_booking}    visible    timeout=${timeout}
    Browser.Click    ${bookingpage.checkout.btn_confirm_booking}