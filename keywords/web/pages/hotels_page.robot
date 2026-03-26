*** Keywords ***
Check if hotels display
    [Arguments]    ${retry_times}=${global_retry_times}    ${interval_for_retry}=${global_interval_for_retry}
    common_web..Check if element display    ${hotels_element}[hotels_section]    ${retry_times}    ${interval_for_retry}

Click destination search field
    common_web.Click element on screen      ${hotels_search_section}[txt_search_bar]

Select destination from suggestion list
    [Arguments]    ${destination}
    ${destination_locator}=        String.Replace string    ${hotels_search_section}[btn_search_suggestion]    ***destination***    ${destination}
    common_web.Click element on screen      ${destination_locator}

Input destination on search field
    [Arguments]    ${search_text}
    common_web.Input in text field        ${hotels_search_section}[txt_search_bar]        ${search_text}

Select destination from suggestion list after search with input
    [Arguments]    ${destination}
    ${destination_locator}=        String.Replace string    ${hotels_search_section}[btn_search_suggestion_typing]    ***destination***    ${destination}
    common_web.Click element on screen      ${destination_locator}

Click check in date
    common_web.Click element on screen      ${hotels_search_section}[btn_checkin_date]

Click check out date
    common_web.Click element on screen      ${hotels_search_section}[btn_checkout_date]

Get left month on calendar
    common_web.Get text from element        ${calendar_modal}[lbl_month_left]

Get right month on calendar
    common_web.Get text from element        ${calendar_modal}[lbl_month_right]

Click back one month on calendar
    common_web.Click element on screen      ${calendar_modal}[btn_back_one_month]

Click next one month on calendar
    common_web.Click element on screen      ${calendar_modal}[btn_next_one_month]

Select today date on calendar
    common_web.Click element on screen      ${calendar_modal}[btn_today_date]

Select available date on calendar
    [Arguments]    ${month}    ${day}