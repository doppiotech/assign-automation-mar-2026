*** Keywords ***
Click login button on header bar
    common_web.Click element on screen    ${header_bar}[btn_login_signin]

Click login with email or mobile number
    common_web.Click element on screen    ${login_popup}[btn_email_or_mobile_login]

Input email or mobile number on login or sign up popup
    [Arguments]    ${email_or_mobile_no}
    common_web.Input in text field        ${login_popup}[txt_email_or_mobile_field]    ${email_or_mobile_no}

Click login button with login or sign up with email or mobile number method button
    common_web.Click element on screen    ${login_popup}[btn_login_confirm_email_or_mobile]

Input password on login or sign up popup
    [Arguments]    ${password}
    common_web.Input in text field        ${login_popup}[txt_password_field]    ${password}

Click login button to confirm password
    common_web.Click element on screen    ${login_popup}[btn_login_confirm_password]

Check if login successfully
    common_web.Check if element display    ${header_bar}[btn_account_icon]

Click hotels tab on header bar
    common_web.Click element on screen    ${header_bar}[btn_hotels_tab]
