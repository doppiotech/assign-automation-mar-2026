*** Keywords ***
Check if hotels item display
    [Arguments]    ${retry_times}=${global_retry_times}    ${interval_for_retry}=${global_interval_for_retry}
    common_web.Wait until page display    ${hotels_item_element}[hotels_item_section]    ${retry_times}    ${interval_for_retry}

Book room by index
    [Arguments]    ${room_index}
    ${book_button_locator}=        String.Replace string    ${room_option}[btn_book_now_by_index]    ***index***    ${room_index}
    common_web.Click element on screen      ${book_button_locator}
