*** Keywords ***
Verify payment page is displayed
    [Arguments]    ${timeout}=${GLOBAL_TIMEOUT}
    Browser.Wait For Elements State    ${booking_page.btn_confirm_booking}    hidden    timeout=${timeout}
    Browser.Get Url    validate    "https://payment.gother.online/payment" in value    timeout=${timeout}

Select credit card
    Wait For Elements State    ${test}    visible
    Browser.Click    ${payment_page.rdo_credit_card} 
    Get Element States    ${payment_page.rdo_credit_card}     contains    checked