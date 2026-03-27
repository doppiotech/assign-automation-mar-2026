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

Open gother website and login with email
    [Arguments]    ${email}    ${password}
    landing_page.Open gother web
    header_bar_feature.Login with email or mobile no. method    ${email}    ${password}
    home_page.Check if homepage display
    header_bar.Check if login successfully

Web teardown
    BuiltIn.Run keyword if test failed         Browser.Take screenshot
    Browser.Close browser

Wait until page display
    [Arguments]    ${locator}    ${retry_times}=${global_retry_times}    ${interval_for_retry}=${global_interval_for_retry}
    BuiltIn.Wait until keyword succeeds    ${retry_times}    ${interval_for_retry}    Browser.Wait for elements state    ${locator}

 Check if element display
    [Arguments]    ${locator}
    Browser.Wait for elements state    ${locator}
    Browser.Scroll to element            ${locator}

Click element on screen
    [Arguments]    ${locator}
    common_web.Check if element display                    ${locator}
    Browser.Click                      ${locator}

Input in text field
    [Arguments]    ${locator}    ${txt}
    common_web.Check if element display                    ${locator}
    Browser.Fill text                                  ${locator}    ${txt}

Check text in field
    [Arguments]    ${locator}    ${ref_txt}
    common_web.Check if element display                    ${locator}
    ${txt}=    Browser.Get text                           ${locator}
    BuiltIn.Should be equal                            ${ref_txt}    ${txt}

Get text from element
    [Arguments]    ${locator}
    common_web.Check if element display                         ${locator}
    ${text}=        Browser.Get text                ${locator}
    RETURN    ${text}
