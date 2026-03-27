*** Keywords ***
Click login or sign up button on home page
    Browser.Wait for elements state    text=${home_page.t_signin_and_register}    visible    ${global_timeout}
    Browser.Click            ${main_home_page_locators.btn_login_signup}

Click login with email or mobile no.
    Browser.Wait for elements state                   visible        ${global_timeout}
    Browser.Click    ${login_popup}[btn_email_or_mobile_login]
Input email or mobile no. on login or sign up popup       

Click login button on login or sign up with email or mobile no. method   

Input password on login or sign up popup   

Click login button to confirm password on login or sign up with email or mobile no. method