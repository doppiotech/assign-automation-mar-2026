*** Keywords ***
Open gother web
    [Arguments]        ${headless_mode}=${False}
    common_web.Open web browser by url    url=${gother_web.url.${LANG.lower()}}    headless_mode=${headless_mode}

Verify system can redirect to landing page
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${landing.BTN_SEARCH_FLIGTH}    visible    timeout=${timeout}

Login to system with email and password
    common_web.Click on Login/Register button
    common_web.Click on Phone/Email button
    common_web.Fill Email
    common_web.Click on Login button
    common_web.Fill Password
    common_web.Click on Login button