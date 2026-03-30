*** Keywords ***
Input credit card number
    [Arguments]    ${card_number}    
    Browser.Wait for elements state    ${payment_page_locators.txt_card_number}      visible      ${global_timeout}  
    Browser.Fill text    ${payment_page_locators.txt_card_number}      ${card_number}

Input credit card name
    [Arguments]    ${card_holder_name}    
    Browser.Wait for elements state   ${payment_page_locators.txt_card_name}    visible        ${global_timeout}
    Browser.Fill text    ${payment_page_locators.txt_card_name}       ${card_holder_name}

Input credit card expiry date
    [Arguments]    ${expiry_date}    
    Browser.Wait for elements state    ${payment_page_locators.txt_expiry_date}    visible        ${global_timeout}
    #Browser.Click    ${payment_page_locators.txt_expiry_date}
    Browser.Fill text    ${payment_page_locators.txt_expiry_date}    ${expiry_date}

Input credit card cvv
    [Arguments]    ${cvv}    
    Browser.Wait for elements state    ${payment_page_locators.txt_cvv}     visible        ${global_timeout}
    Browser.Fill text    ${payment_page_locators.txt_cvv}     ${cvv}

Click confirm payment button
    Browser.Scroll to element    ${payment_page_locators.btn_confirm_booking}
    Browser.Wait for elements state    ${payment_page_locators.btn_confirm_booking}     visible        ${global_timeout}
    Browser.Click        ${payment_page_locators.btn_confirm_booking} 
