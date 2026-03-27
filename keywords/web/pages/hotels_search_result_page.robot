*** Keywords ***
Check if search result page display
    [Arguments]    ${retry_times}=${global_retry_times}    ${interval_for_retry}=${global_interval_for_retry}
    common_web.Wait until page display    ${search_result_element}[search_result_section]    ${retry_times}    ${interval_for_retry}
    common_web.Wait until page display    ${search_list_section}[lbl_total_search_result_items]    ${retry_times}    ${interval_for_retry}

Select hotel by index from search result
    [Arguments]    ${hotel_index}
    ${hotel_locator}=        String.Replace string    ${search_list_section}[lbl_search_result_item_by_idex]    ***hotel_index***    ${hotel_index}
    common_web.Click element on screen      ${hotel_locator}

Select hotel by name from search result
    [Arguments]    ${hotel_name}
    ${hotel_locator}=        String.Replace string    ${search_list_section}[lbl_search_result_item_by_name]    ***hotel_name***    ${hotel_name}
    common_web.Click element on screen      ${hotel_locator}

