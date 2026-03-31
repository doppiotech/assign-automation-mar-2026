*** Keywords ***
Verify system can redirect to booking page
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${booking.LBL_CONTRACT}    timeout=${timeout}

Select gender on radio button
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${booking.RDO_GENDER}    timeout=${timeout}
    Browser.Click  ${booking.RDO_GENDER}

Fill firstname
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${booking.TXT_FIRSTNAME}    timeout=${timeout}
    Browser.Fill text  ${booking.TXT_FIRSTNAME}    ${booking_info.firstname}

Fill lastname
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${booking.TXT_LASTNAME}    timeout=${timeout}
    Browser.Fill text  ${booking.TXT_LASTNAME}    ${booking_info.lastname}

Fill email
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${booking.TXT_EMAIL}    timeout=${timeout}
    Browser.Fill text  ${booking.TXT_EMAIL}    ${login_user.email}

Fill phone number
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${booking.TXT_PHONE}    timeout=${timeout}
    Browser.Fill text  ${booking.TXT_PHONE}    ${booking_info.phone_number}

Click on confirm booking button
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${booking.BTN_CONFIRM_BOOKING}    timeout=${timeout}
    Browser.Click  ${booking.BTN_CONFIRM_BOOKING}

Get And Verify Total Price
    [Arguments]    ${expected_total_price}    ${timeout}=${default_timeout}
    ${raw_text}=    Browser.Get text    ${booking.TXT_TOTAL_PRICE}
    ${cleaned_string}=    String.Remove string    ${raw_text}    THB    ,    ${SPACE}
    ${float_price}=    BuiltIn.Convert to number    ${cleaned_string}
    ${rounded_price}=    BuiltIn.Convert to integer    ${float_price}
    BuiltIn.Should be equal as integers    ${rounded_price}    ${expected_total_price}    
