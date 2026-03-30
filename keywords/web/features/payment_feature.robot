*** Keywords ***
Input credit card information
    [Arguments]    ${card_number}    ${card_name}    ${card_exp}    ${card_cvv}
    payment_page.Input card number in credit card payment method             ${card_number}
    payment_page.Input card holder name in credit card payment method        ${card_name}
    payment_page.Input card expiry date in credit card payment method        ${card_exp}
    payment_page.Input card cvv in credit card payment method                ${card_cvv}

Wait until payment loading is complete
    payment_page.Wait until payment bar loading is complete
    payment_page.Wait until payment page loading is complete