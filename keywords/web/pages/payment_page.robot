*** Keywords ***

Fill credit card number
    [Arguments]    ${card_number}
    Browser.Wait For Elements State    selector=${payment_locator.txt_card_name}    state=visible     timeout=${20S_TIMEOUT}
    Browser.Fill Text    selector=${payment_locator.txt_card_number}    txt=${card_number}

Fill credit card holder name
    [Arguments]    ${card_name}
    Browser.Fill Text    selector=${payment_locator.txt_card_name}    txt=${card_name}

Fill credit card expire date
    [Arguments]    ${expire_date}
    Browser.Fill Text    selector=${payment_locator.txt_expire_date}    txt=${expire_date}

Fill credit card cvv
    [Arguments]    ${cvv}
    Browser.Fill Text    selector=${payment_locator.txt_cvv}    txt=${cvv}

Click checkbox allow collect information
    Browser.Click   selector=${payment_locator.chk_collect}

Click confirm booking
    Browser.Click   selector=${payment_locator.btn_confirm_booking}