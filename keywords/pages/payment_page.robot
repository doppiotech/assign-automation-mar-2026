*** Keywords ***
Fill credit card number
    [Arguments]    ${card_number}    ${timeout}=30s
    Browser.Wait For Elements State    ${payment.input_card_number}     visible    timeout=${timeout}
    Browser.Fill Text    ${payment.input_card_number}     ${card_number}
    Log To Console     Filled Card Number
