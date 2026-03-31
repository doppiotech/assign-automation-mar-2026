*** Keywords ***
Click signin with email or phone number
    Browser.Click       ${signin_locator.btn_signin_email}

Input email
    [Arguments]     ${email}
    Browser.fill text   ${signin_locator.txt_email}     ${email}

Click login button
    Browser.Click       ${signin_locator.btn_login} 

Input password
    [Arguments]     ${password}
    Browser.fill text       ${signin_locator.txt_password}     ${password} 

Click confirm login button
    Browser.Click       ${signin_locator.btn_confirm_login} 

