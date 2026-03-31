*** Keywords ***
Open gother web
    [Arguments]        ${headless_mode}=${False}
    common_web.Open web browser by url    url=${gother_web.url.${LANG.lower()}}    headless_mode=${headless_mode}

Verify system can redirect to landing page
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${landing.BTN_SEARCH_FLIGTH}    visible    timeout=${timeout}

Click on hotels button
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${landing.BTN_HOTEL}    timeout=${timeout}
    Browser.Click    ${landing.BTN_HOTEL}

Click on Accept cookie button
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${landing.BTN_ACCEPT_COOKIE}    timeout=${timeout}
    Browser.Click    ${landing.BTN_ACCEPT_COOKIE}