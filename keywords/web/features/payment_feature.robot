*** Keywords ***
Input credit card information
    [Arguments]    ${card_number}    ${card_name}    ${card_exp}    ${card_cvv}
    Input card number in credit card payment method             ${card_number}
    Input card holder name in credit card payment method        ${card_name}
    Input card expiry date in credit card payment method        ${card_exp}
    Input card cvv in credit card payment method                ${card_cvv}
