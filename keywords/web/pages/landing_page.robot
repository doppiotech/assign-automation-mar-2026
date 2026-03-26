*** Keywords ***
Open gother web
    [Arguments]        ${headless_mode}=${False}
    common_web.Open web browser by url    url=${gother_web.url.${LANG.lower()}}    headless_mode=${headless_mode}

Verify system can redirect to landing page
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${landing.BTN_SEARCH_FLIGTH}    visible    timeout=${timeout}

Click on Login/Register button
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${landing.BTN_LOGIN_AND_REGIS}    visible    timeout=${timeout}
    Browser.Click    ${landing.BTN_LOGIN_AND_REGIS}

Click on Phone/Email button
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${landing.BTN_PHONE_OR_EMAIL}    visible    timeout=${timeout}
    Browser.Click    ${landing.BTN_PHONE_OR_EMAIL}

    
