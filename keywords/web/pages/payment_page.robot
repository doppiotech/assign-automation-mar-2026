*** Keywords ***
Verify system can redirect to payment page
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${payment.LBL_PAYMENT}    visible    timeout=${timeout}

Select payment channel on radio button
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${payment.DRO_CREDITCARD}    timeout=${timeout}
    Browser.Click  ${payment.DRO_CREDITCARD}

Fill card number
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${payment.TXT_CARD_NUMBER}   timeout=${timeout}
    Browser.Fill text  ${payment.TXT_CARD_NUMBER}    ${payment_info.card_number}
   
Fill card name
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${payment.TXT_CARD_NAME}    timeout=${timeout}
    Browser.Fill text  ${payment.TXT_CARD_NAME}    ${payment_info.card_name}

Fill exp date
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${payment.TXT_EXP_DATE}    timeout=${timeout}
    Browser.Fill text  ${payment.TXT_EXP_DATE}    ${payment_info.exp_date}

Fill CVV number
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${payment.TXT_CVV_NUMBER}    timeout=${timeout}
    Browser.Fill text  ${payment.TXT_CVV_NUMBER}    ${payment_info.cvv_number}

Click on confirm payment button
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${payment.BTN_CONFIRM_PAYMENT}    timeout=${timeout}
    Browser.Click    ${payment.BTN_CONFIRM_PAYMENT}
    
