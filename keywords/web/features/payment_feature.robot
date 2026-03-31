*** Keywords ***
Payment
    [Documentation]     This kw will pay by credit card and verify success
    ...                Arguments:
    ...                    - ${card_number}                 (integer)        :       4111111111111111
    ...                    - ${card_name}                   (string)        :       John Doe
    ...                    - ${expire_date}                (string)       :       11 / 32
    ...                    - ${cvv}                     (string)        :       123
    [Arguments]
    ...         ${card_number}
    ...         ${card_name}
    ...         ${expire_date}
    ...         ${cvv} 
    payment_page.Fill credit card number  card_number=${card_number}
    payment_page.Fill credit card holder name  card_name=${TC_001.credit_card.card_name}
    payment_page.Fill credit card expire date  expire_date=${TC_001.credit_card.expire_date}
    payment_page.Fill credit card cvv  cvv=${TC_001.credit_card.cvv}
    payment_page.Click checkbox allow collect information
    payment_page.Click confirm booking
    common_web.Wait Page Load
    booking_success_page.Verify booking success