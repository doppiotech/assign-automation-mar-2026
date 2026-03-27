*** Keywords ***
Open web browser by url
    [Documentation]     ใช้สำหรับเปิด Web browser
    ...                 Arguments:
    ...                     - ${url} (string) ลิ้งของเว็ปที่ต้องการเปิด: https://google.com
    ...                     - ${supported_browser} (string) ระบบ Browser ที่รองรับ: chromium, firefox, webkit
    ...                     - ${headless_mode} (bool) เปิด Browser ในโหมดไร้หน้าต่าง (No GUI): ${True} or ${False}
    [Arguments]        ${url}    ${supported_browser}=${default_browser}    ${headless_mode}=${False}
    Browser.New browser     browser=${supported_browser}    headless=${headless_mode}
    Browser.New page        url=${url}

Click on Login/Register button
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${landing.BTN_LOGIN_AND_REGIS}    visible    timeout=${timeout}
    Browser.Click    ${landing.BTN_LOGIN_AND_REGIS}

Click on Phone/Email button
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${landing.BTN_PHONE_OR_EMAIL}    visible    timeout=${timeout}
    Browser.Click    ${landing.BTN_PHONE_OR_EMAIL}

Fill Email
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${landing.TXT_Email}    visible    timeout=${timeout}
    Browser.Fill text    ${landing.TXT_Email}    ${login_user.email}

Click on Login button
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${landing.BTN_LOGIN}   visible    timeout=${timeout}
    Browser.Click    ${landing.BTN_LOGIN}
    
Fill Password
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${landing.TXT_Password}     visible    timeout=${timeout}
    Browser.Fill text    ${landing.TXT_Password}    ${login_user.password}

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
