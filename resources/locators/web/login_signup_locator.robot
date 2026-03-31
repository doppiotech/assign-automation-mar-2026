*** Variables ***
${login_signup_locator.btn_email_or_mobile}     css=button:text-is("${translation.btn_email_or_mobile}")
${login_signup_locator.txt_email}     css=input[data-type="email"]
${login_signup_locator.btn_email_login}     css=button[data-testid="btn-check-step-login-with-email"][type="submit"]
${login_signup_locator.txt_password}     css=input[data-type="password"]
${login_signup_locator.btn_password_login}       css=button[type="submit"]