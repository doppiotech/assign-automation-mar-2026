*** Keywords ***
Click on Login/Register button
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${landing.BTN_LOGIN_AND_REGIS}    visible    timeout=${timeout}
    Browser.Click    ${landing.BTN_LOGIN_AND_REGIS}

Click on Phone/Email button
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${landing.BTN_PHONE_OR_EMAIL}    visible    timeout=${timeout}
    Browser.Click    ${landing.BTN_PHONE_OR_EMAIL}

Fill Email
    [Arguments]    ${email}    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${landing.TXT_Email}    visible    timeout=${timeout}
    Browser.Fill text    ${landing.TXT_Email}    ${email}

Click on Login button
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${landing.BTN_LOGIN}   visible    timeout=${timeout}
    Browser.Click    ${landing.BTN_LOGIN}
    
Fill Password
    [Arguments]    ${password}    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${landing.TXT_Password}     visible    timeout=${timeout}
    Browser.Fill text    ${landing.TXT_Password}    ${password}

Click on profile icon
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${landing.IMG_USER_ICON}   visible    timeout=${timeout}
    Browser.Click    ${landing.IMG_USER_ICON} 

Click on My account button
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${landing.BTN_MY_ACC}   visible    timeout=${timeout}
    Browser.Click    ${landing.BTN_MY_ACC} 

Verify Email
    [Arguments]    ${expected_email}
    Browser.Wait for elements state    ${landing.TXT_DISPLAY_EMAIL}    visible
    Browser.Get text    ${landing.TXT_DISPLAY_EMAIL}    ==    ${expected_email}