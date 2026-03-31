*** Keywords ***
Select gender
    [Arguments]     ${gender}
    Browser.Wait For Elements State    selector=${hotels_booking_locator.btn_radio_male}    state=visible    timeout=${20S_TIMEOUT}
    IF  "${gender.lower()}" == "${translation.male.lower()}"
        Browser.Click   selector=${hotels_booking_locator.btn_radio_male}
    ELSE
        Browser.Click   selector=${hotels_booking_locator.btn_radio_female}
    END

Fill first name    
    [Arguments]    ${first_name}
    Browser.Fill Text    selector=${hotels_booking_locator.txt_first_name}    txt=${first_name}

Fill last name    
    [Arguments]    ${last_name}
    Browser.Fill Text    selector=${hotels_booking_locator.txt_last_name}    txt=${last_name}

Fill email    
    [Arguments]    ${email}
    Browser.Fill Text    selector=${hotels_booking_locator.txt_email}    txt=${email}

Fill phone number    
    [Arguments]    ${phone_number}
    Browser.Fill Text    selector=${hotels_booking_locator.txt_phone_number}    txt=${phone_number}

Scroll down to confirm booking button
    Browser.Scroll To Element   selector=${hotels_booking_locator.btn_confirm_booking}

Click confirm booking
    Browser.Click       selector=${hotels_booking_locator.btn_confirm_booking}