*** Keywords ***
Open gother web
    [Arguments]        ${headless_mode}=${False}
    common_web.Open web browser by url    url=${gother_web.url.${LANG.lower()}}    headless_mode=${headless_mode}

Verify system can redirect to landing page
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${landing.BTN_SEARCH_FLIGTH}    visible    timeout=${timeout}

Login to system with email and password
    login_feature.Click on Login/Register button
    login_feature.Click on Phone/Email button
    login_feature.Fill Email
    login_feature.Click on Login button
    login_feature.Fill Password
    login_feature.Click on Login button 
    login_feature.Click on profile icon
    login_feature.Click on My account button
    login_feature.Verify Email    ${login_user.email}

Click on hotels button
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${landing.BTN_HOTEL}    timeout=${timeout}
    Browser.Click    ${landing.BTN_HOTEL}

Click on Accept cookie button
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${landing.BTN_ACCEPT_COOKIE}    timeout=${timeout}
    Browser.Click    ${landing.BTN_ACCEPT_COOKIE}