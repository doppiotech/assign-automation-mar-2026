*** Keywords ***
Open gother web
    [Arguments]        ${headless_mode}=${False}
    common_web.Open web browser by url    url=${gother_web_url}    headless_mode=${headless_mode}

Verify homepage is displayed
    [Arguments]    ${timeout}=${GLOBAL_TIMEOUT}
    Browser.Wait for load state    domcontentloaded    timeout= ${timeout}

Click login button in homepage
    Browser.Click    ${landing.btn_login_and_register}

Verify login with email or mobile button enabled
    [Arguments]    ${timeout}=${GLOBAL_TIMEOUT}
    Browser.Wait for elements state    ${landing.btn_email_or_mobile}    enabled    timeout=${timeout}

Click login with email or mobile button
    Browser.Click    ${landing.btn_email_or_mobile}

Verify email input box enabled
    [Arguments]    ${timeout}=${GLOBAL_TIMEOUT}
    Browser.Wait for elements state    ${landing.txt_email}    enabled    timeout=${timeout}

Fill in email
    [Arguments]    ${fill_in_email_value}
    Browser.Fill text    ${landing.txt_email}    ${fill_in_email_value}

Verify login button enabled
    [Arguments]    ${timeout}=${GLOBAL_TIMEOUT}
    Browser.Wait for elements state    ${landing.btn_login}    enabled    timeout=${timeout}

Click login button
    Browser.Click    ${landing.btn_login}

Verify password input box enabled
    [Arguments]    ${timeout}=${GLOBAL_TIMEOUT}
    Browser.Wait for elements state    ${landing.txt_password}    enabled    timeout=${timeout}

Fill in password
    [Arguments]    ${fill_in_password_value}
    Browser.Fill text    ${landing.txt_password}    ${fill_in_password_value}

Verify login successful
    [Arguments]    ${timeout}=${GLOBAL_TIMEOUT}
    Browser.Wait for elements state    ${landing.img_user}    enabled    timeout=${timeout}

Click to hotels page
    Browser.Click    ${landing.btn.hotels}




