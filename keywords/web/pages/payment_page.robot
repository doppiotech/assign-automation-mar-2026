*** Keywords ***
Check if payment page display
    [Arguments]    ${retry_times}=${global_retry_times}    ${interval_for_retry}=${global_interval_for_retry}
    common_web.Wait until page display    ${payment_element}[payment_section]    ${retry_times}    ${interval_for_retry}

Select credit card as payment method
    common_web.Click element on screen      ${payment_method}[rdo_credit_card_method]

Input card number in credit card payment method
    [Arguments]    ${card_number}
    common_web.Input in text field        ${credit_card_information}[txt_creadit_card_num]        ${card_number}
Input card holder name in credit card payment method
    [Arguments]    ${card_name}
    common_web.Input in text field        ${credit_card_information}[txt_creadit_card_name]        ${card_name}
    
Input card expiry date in credit card payment method
    [Arguments]    ${card_exp}
    common_web.Input in text field        ${credit_card_information}[txt_creadit_card_exp]        ${card_exp}
    
Input card cvv in credit card payment method
    [Arguments]    ${card_cvv}
    common_web.Input in text field        ${credit_card_information}[txt_creadit_card_cvv]        ${card_cvv}
    
Click pay now button to confirm payment
    common_web.Click element on screen      ${payment_element}[btn_pay_now]

Wait until payment bar loading is complete
    common_web.Wait until element not display        ${payment_element}[lbl_payment_loading]

Wait until payment page loading is complete
    common_web.Wait until element not display        ${payment_element}[lbl_payment_page_loading]
