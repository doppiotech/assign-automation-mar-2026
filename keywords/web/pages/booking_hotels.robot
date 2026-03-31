*** Keywords ***
Select gender
    [Arguments]    ${gender}    
    Browser.Scroll to element     ${booking_hotels_locators.rdo_male_button}   
    IF    '${gender}' == 'male'
        Browser.Click    ${booking_hotels_locators.rdo_male_button}      
    ELSE IF    '${gender}' == 'female'
        Browser.Click   ${booking_hotels_locators.rdo_female_button}       
    END
    #เช็คว่าปุ่มถูกคลิ๊กแล้ว
    #Browser.Get element states    ${booking_hotels_locators.rdo_male_button if '${gender}'=='male' else '${booking_hotels_locators.rdo_female_button}'}    checked    ==    True
    
Input first name in contact information
    [Arguments]    ${first_name}    
    Browser.Scroll to element    ${booking_hotels_locators.txt_first_name}
    Browser.Wait for elements state    ${booking_hotels_locators.txt_first_name}     visible    ${global_timeout}
    Browser.Fill text    ${booking_hotels_locators.txt_first_name}    ${first_name}

Input last name in contact information
    [Arguments]    ${last_name}    
    Browser.Scroll to element    ${booking_hotels_locators.txt_last_name} 
    Browser.Wait for elements state    ${booking_hotels_locators.txt_last_name}    visible    ${global_timeout}
    Browser.Fill text    ${booking_hotels_locators.txt_last_name}    ${last_name}  

Input email in contact information
    [Arguments]    ${email_address}    
    Browser.Scroll to element    ${booking_hotels_locators.txt_email} 
    Browser.Wait for elements state    ${booking_hotels_locators.txt_email}     visible    ${global_timeout}
    Browser.Fill text    ${booking_hotels_locators.txt_email}     ${email_address}  

Input phone number in contact information
    [Arguments]    ${mobile_number}    
    Browser.Scroll to element    ${booking_hotels_locators.txt_phone} 
    Browser.Wait for elements state    ${booking_hotels_locators.txt_phone}      visible    ${global_timeout}
    Browser.Fill text    ${booking_hotels_locators.txt_phone}      ${mobile_number}  

Click passport option in contact information

Select passport in contact information

Click confirm booking button
    Browser.Scroll to element    ${booking_hotels_locators.btn_confirm_booking}   
    Browser.Wait for elements state    ${booking_hotels_locators.btn_confirm_booking}       visible    ${global_timeout}
    Browser.Click        ${booking_hotels_locators.btn_confirm_booking}    