*** Keywords ***
Check if search result page display
    [Arguments]    ${retry_times}=${global_retry_times}    ${interval_for_retry}=${global_interval_for_retry}
    common_web.Wait until page display    ${car_rentals_search_result_element}[search_result_section]    ${retry_times}    ${interval_for_retry}

Select car by index from search result
    [Arguments]    ${car_card_index}
    ${car_card_locator}=        String.Replace string    ${car_rentals_search_list_section}[lbl_search_result_item_by_index]    ***index***    ${car_card_index}
    common_web.Click element on screen      ${car_card_locator}

Select car by name from search result
    [Arguments]    ${car_card_name}
    ${car_card_locator}=        String.Replace string    ${car_rentals_search_list_section}[lbl_search_result_item_by_name]    ***name***    ${car_card_name}
    common_web.Click element on screen      ${car_card_locator}

Click select button by index
    [Arguments]    ${select_car_index}
    ${select_car_locator}=        String.Replace string    ${car_rentals_search_list_section}[btn_select_button_by_index]    ***index***    ${select_car_index}
    common_web.Click element on screen      ${select_car_locator}

Click select button by price
    [Arguments]    ${car_price}
    ${select_car_locator}=        String.Replace string    ${car_rentals_search_list_section}[btn_select_button_by_price]    ***price***    ${car_price}
    common_web.Click element on screen      ${select_car_locator}
