*** Keywords ***
Click login or sign up button on home page
    Browser.Wait for elements state    ${home_page_locators.btn_login_signup}    visible    ${global_timeout}
    Browser.Click        ${home_page_locators.btn_login_signup} 

Click login with email or mobile no.
    ${email_or_mobile_locator}=    Replace String    ${login_popup_locators.btn_email_or_mobile_no}   {TEXT}    ${login_popup.t_email_or_mobile_login_or_signup}
    Browser.Wait for elements state        ${email_or_mobile_locator}           visible        ${global_timeout}
    Browser.Click        ${email_or_mobile_locator}    
Input email or mobile no. on login or sign up popup    
    [Arguments]            ${email} 
    Browser.Wait for elements state        ${login_popup_locators.txt_email}          visible         ${global_timeout}
    Browser.Fill text        ${login_popup_locators.txt_email}                 ${email}    

Click login button on login or sign up with email or mobile no. method   
    Browser.Wait for elements state      ${login_popup_locators.btn_login_fill_email_page}      visible    ${global_timeout}
    Browser.Click        ${login_popup_locators.btn_login_fill_email_page}   
Input password on login or sign up popup   
    [Arguments]            ${password}
    Browser.Wait for elements state        ${login_popup_locators.txt_password}         visible         ${global_timeout}
    Browser.Fill text        ${login_popup_locators.txt_password}                ${password}
Click login button to confirm password on login or sign up with email or mobile no. method
    Browser.Wait for elements state      ${login_popup_locators.btn_login_password_page}       visible    ${global_timeout}
    Browser.Click        ${login_popup_locators.btn_login_password_page}  