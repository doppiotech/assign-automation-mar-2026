*** Keywords ***
Fill credit card number
    [Arguments]    ${card_number}    ${timeout}=30s
    Browser.Wait For Elements State    ${payment.input_card_number}     visible    timeout=${timeout}
    Browser.Fill Text    ${payment.input_card_number}     ${card_number}
    Log      Filled Card Number

Fill credit card name
    [Arguments]    ${card_holder_name}    ${timeout}=${globle_timeout}
    Browser.Wait For Elements State    ${payment.input_card_name}    visible    timeout=${timeout}
    Browser.Fill Text    ${payment.input_card_name}    ${card_holder_name}
    Log     Filled Card Holder Name: ${card_holder_name}

Fill credit card expiry date
    [Arguments]    ${expiry_date}    ${timeout}=${globle_timeout}
    Browser.Wait For Elements State    ${payment.input_expiry_date}    visible    timeout=${timeout}
    Browser.Click    ${payment.input_expiry_date}
    Browser.Fill Text    ${payment.input_expiry_date}    ${expiry_date}
    Log     Filled Expiry Date: ${expiry_date}

Fill credit card cvv
    [Arguments]    ${cvv}    ${timeout}=${globle_timeout}
    Browser.Wait For Elements State    ${payment.input_cvv}    visible    timeout=${timeout}
    Browser.Fill Text    ${payment.input_cvv}    ${cvv}
    Log     Filled CVV Code

Tick save credit card information
    [Arguments]    ${timeout}=${globle_timeout}
    Browser.Wait For Elements State    ${payment.span_checkbox_save_card}    visible    timeout=${timeout}
    Browser.Click With Options    ${payment.span_checkbox_save_card}    force=${True}
    Log     Ticked Save Card Information via Span

Click confirm booking button
    [Arguments]    ${timeout}=${globle_timeout}
    Browser.Scroll To Element    ${payment.btn_confirm_booking} 
    Browser.Wait For Elements State    ${payment.btn_confirm_booking}     visible    timeout=${timeout}
    Browser.Wait For Elements State    ${payment.btn_confirm_booking}     enabled    timeout=${timeout}
    Browser.Click    ${payment.btn_confirm_booking} 
    Log     Successfully clicked Confirm Booking!
    BuiltIn.Sleep    20s
   