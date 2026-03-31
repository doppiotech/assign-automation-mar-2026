*** Keywords ***
Check if search result page display
    [Arguments]    ${retry_times}=${global_retry_times}    ${interval_for_retry}=${global_interval_for_retry}
    common_web.Wait until page display    ${hotels_search_result_element_locator}[search_result_section]    ${retry_times}    ${interval_for_retry}
    common_web.Wait until page display    ${hotels_search_list_section_locator}[lbl_total_search_result_items]    ${retry_times}    ${interval_for_retry}

Select hotel by index from search result
    [Arguments]    ${hotel_index}
    ${hotel_locator}=        String.Replace string    ${hotels_search_list_section_locator}[lbl_search_result_item_by_index]    ***hotel_index***    ${hotel_index}
    common_web.Click element on screen      ${hotel_locator}

Get destination
    ${destination}    common_web.Get attribute from element        ${hotels_search_result_search_section_locator}[txt_search_bar]    value
    RETURN    ${destination}

Get checkin date
    ${checkin_date}    common_web.Get attribute from element        ${hotels_search_result_search_section_locator}[btn_checkin_date]    value
    RETURN    ${checkin_date}

Get checkout date
    ${checkout_date}    common_web.Get attribute from element        ${hotels_search_result_search_section_locator}[btn_checkout_date]    value
    RETURN    ${checkout_date}

Get guests and rooms
    ${guests_and_rooms}    common_web.Get attribute from element        ${hotels_search_result_search_section_locator}[btn_guests_and_rooms]    value
    RETURN    ${guests_and_rooms}
