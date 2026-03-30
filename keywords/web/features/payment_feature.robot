*** Keywords ***
Input credit card information
    [Arguments]    ${card_number}    ${card_name}    ${card_exp}    ${card_cvv}
    
    ${status}    BuiltIn.Run keyword and return status    payment_page.Check if new credit card section display
    IF    ${status}==${False}
        payment_page.Select credit card as payment method
    END
    payment_page.Input card number in credit card payment method             ${card_number}
    payment_page.Input card holder name in credit card payment method        ${card_name}
    payment_page.Input card expiry date in credit card payment method        ${card_exp}
    payment_page.Input card cvv in credit card payment method                ${card_cvv}

Wait until payment loading is complete
    payment_page.Wait until payment bar loading is complete
    payment_page.Wait until payment page loading is complete