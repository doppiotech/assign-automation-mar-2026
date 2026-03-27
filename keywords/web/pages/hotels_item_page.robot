*** Keywords ***
Check if hotels item display
    [Arguments]    ${retry_times}=${global_retry_times}    ${interval_for_retry}=${global_interval_for_retry}
    common_web.Wait until page display    ${hotels_item_element}[hotels_item_section]    ${retry_times}    ${interval_for_retry}

Book room by index
    [Arguments]    ${room_index}
    ${book_button_locator}=        String.Replace string    ${room_option}[btn_book_now_by_index]    ***index***    ${room_index}
    common_web.Click element on screen      ${book_button_locator}

Book room by price
    [Arguments]    ${room_price}
    ${book_button_locator}=        String.Replace string    ${room_option}[btn_book_now_by_price]    ***index***    ${room_price}
    common_web.Click element on screen      ${book_button_locator}

Book room by room type and index
    [Arguments]    ${room_type}    ${room_index}
    ${book_button_room_type_locator}=        String.Replace string    ${room_option}[btn_book_now_by_price]    ***room_type***    ${room_type}
    ${book_button_locator}=        String.Replace string    ${book_button_room_type_locator}    ***index***    ${room_index}
    common_web.Click element on screen      ${book_button_locator}

Book room by room type and price
    [Arguments]    ${room_type}    ${room_price}
    ${book_button_room_type_locator}=        String.Replace string    ${room_option}[btn_book_now_by_price]    ***room_type***    ${room_type}
    ${book_button_locator}=        String.Replace string    ${book_button_room_type_locator}    ***price***    ${room_price}
    common_web.Click element on screen      ${book_button_locator}

