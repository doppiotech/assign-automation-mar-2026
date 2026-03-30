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
    footer.Click accept cookie on footer

Web teardown
    BuiltIn.Run keyword if test failed         Browser.Take screenshot
    Browser.Close browser

Switch tab
    Browser.Switch Page      NEW

Wait until page display
    [Arguments]    ${locator}    ${retry_times}=${global_retry_times}    ${interval_for_retry}=${global_interval_for_retry}
    BuiltIn.Wait until keyword succeeds    ${retry_times}    ${interval_for_retry}    Browser.Wait for elements state    ${locator}

Check if element display
    [Arguments]    ${locator}
    Browser.Wait for elements state    ${locator}
    Browser.Scroll to element            ${locator}

Wait until element not display
    [Arguments]    ${locator}    ${retry_times}=${global_retry_times}    ${interval_for_retry}=${global_interval_for_retry}
    ${status}    BuiltIn.Run keyword and return status    Browser.Wait for elements state    ${locator}
    BuiltIn.Run keyword if    ${status} == ${True}   
    ...    BuiltIn.Wait until keyword succeeds    ${retry_times}    ${interval_for_retry}    
    ...    BuiltIn.Run keyword and ignore error
    ...    Browser.Wait for elements state    ${locator}    hidden

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

Get left month on calendar
    ${left_month}=    common_web.Get text from element        ${calendar_modal}[lbl_month_left]
    RETURN    ${left_month}

Get right month on calendar
    ${right_month}=    common_web.Get text from element        ${calendar_modal}[lbl_month_right]
    RETURN    ${right_month}

Click back one month on calendar
    common_web.Click element on screen      ${calendar_modal}[btn_back_one_month]

Click next one month on calendar
    common_web.Click element on screen      ${calendar_modal}[btn_next_one_month]

Select today date on calendar
    common_web.Click element on screen      ${calendar_modal}[btn_today_date]

Select available date on calendar by index
    [Arguments]    ${month}    ${index}
    ${date_month}=        String.Replace string    ${calendar_modal}[btn_available_date_by_index]    ***month***    ${month}
    ${date_month_index}=        String.Replace string    ${date_month}    ***index***    ${index}
    common_web.Click element on screen      ${date_month_index}

Select available date on calendar by date
    [Arguments]    ${month}    ${day}
    ${date_month}=        String.Replace string    ${calendar_modal}[btn_available_date_by_date]    ***month***    ${month}
    ${date_month_day}=        String.Replace string    ${date_month}    ***day***    ${day}
    common_web.Click element on screen      ${date_month_index}

Convert month into index
    [Arguments]    ${month_in_text}
    ${month_index}=    BuiltIn.Set variable    ${month_to_index}[${month_in_text}]
    RETURN    ${month_index}

Convert index into month
    [Arguments]    ${month_in_index}
    ${month_text}=    BuiltIn.Set variable    ${index_to_month}[${month_in_index}]
    RETURN    ${month_text}

Select time
    [Arguments]    ${time}
    ${tiem_locator}=        String.Replace string    ${time_modal}[lbl_time]    ***time***    ${time}
    common_web.Click element on screen      ${tiem_locator}
