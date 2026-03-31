*** Keywords ***
Input booking for hotels 
    [Arguments]    ${gender}     ${first_name}     ${last_name}     ${mobile_number}     ${email_address}
    common_web.Verify booking page
    booking_hotels.Select gender                                  ${gender} 
    booking_hotels.Input first name in contact information        ${first_name} 
    booking_hotels.Input last name in contact information         ${last_name}  
    booking_hotels.Input phone number in contact information      ${mobile_number} 
    booking_hotels.Input email in contact information             ${email_address} 
    booking_hotels.Click confirm booking button

Input payment for hotels 
    [Arguments]    ${card_number}         ${card_holder_name}         ${expiry_date}    ${cvv} 
    #common_web.Verify payment page                            
    payment_page.Input credit card number                         ${card_number} 
    payment_page.Input credit card name                           ${card_holder_name} 
    payment_page.Input credit card expiry date                    ${expiry_date}
    payment_page.Input credit card cvv                            ${cvv}
    payment_page.Click confirm payment button

    


    
