*** Keywords ***
Click email or mobile no. button
    Browser.Click    selector=${login_signup_locator.btn_email_or_mobile}

Fill email    
    [Arguments]    ${email}
    Browser.Fill Text    selector=${login_signup_locator.txt_email}    txt=${email}

Click login after fill email
    Browser.Click   selector=${login_signup_locator.btn_email_login}

Fill password
    [Arguments]     ${password}
    Browser.Fill Text   selector=${login_signup_locator.txt_password}    txt=${password}

Click login after fill password
    Browser.Click   selector=${login_signup_locator.btn_password_login}