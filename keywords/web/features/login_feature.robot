*** Keywords ***
Login with email or mobile number method
    [Arguments]        ${email}           ${password}     
    login_popup_page.Click login or sign up button on home page
    login_popup_page.Click login with email or mobile number
    login_popup_page.Input email or mobile no. on login or sign up popup                          ${email} 
    login_popup_page.Click login button on login or sign up with email or mobile number method  
    login_popup_page.Input password on login or sign up popup                                     ${password} 
    login_popup_page.Click login button to confirm password on login or sign up popup
    common_web.Verify home page when login success 
