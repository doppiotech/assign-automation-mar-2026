*** Keywords ***
Check if car rentals display
    [Arguments]    ${retry_times}=${global_retry_times}    ${interval_for_retry}=${global_interval_for_retry}
    common_web.Wait until page display    ${car_rentals_element}[car_rentals_section]    ${retry_times}    ${interval_for_retry}

Select self-drive type
    common_web.Click element on screen      ${car_search_section}[btn_self_drive_type]

Select with driver type
    common_web.Click element on screen      ${car_search_section}[btn_with_driver_type]

Click pickup location search field
    common_web.Click element on screen      ${car_search_section}[txt_pick_up_location_search_bar]

Select pickup location from suggestion list
    [Arguments]    ${pickup_location}
    ${pickup_location_locator}=        String.Replace string    ${car_rentals_search_section}[btn_pickup_search_suggestion]    ***pickup_location***    ${pickup_location}
    common_web.Click element on screen      ${pickup_location_locator}

Input pickup location on search field
    [Arguments]    ${search_text}
    common_web.Input in text field        ${car_search_section}[txt_pick_up_location_search_bar]        ${search_text}

Select pickup location from suggestion list after search with input
    [Arguments]    ${pickup_location}
    ${pickup_location_locator}=        String.Replace string    ${car_rentals_search_section}[btn_pickup_search_suggestion_typing]    ***pickup_location***    ${pickup_location}
    common_web.Click element on screen      ${pickup_location_locator}

Select dropoff location from suggestion list
    [Arguments]    ${dropoff_location}
    ${dropoff_location_locator}=        String.Replace string    ${car_rentals_search_section}[btn_dropoff_search_suggestion]    ***dropoff_location***    ${dropoff_location}
    common_web.Click element on screen      ${dropoff_location_locator}

Input dropoff location on search field
    [Arguments]    ${search_text}
    common_web.Input in text field        ${car_search_section}[txt_drop_off_location_search_bar]        ${search_text}

Select dropoff location from suggestion list after search with input
    [Arguments]    ${dropoff_location}
    ${dropoff_location_locator}=        String.Replace string    ${car_rentals_search_section}[btn_dropoff_search_suggestion_typing]    ***dropoff_location***    ${dropoff_location}
    common_web.Click element on screen      ${dropoff_location_locator}

Click pickup date
    common_web.Click element on screen      ${car_search_section}[btn_pick_up_date]

Click pickup time
    common_web.Click element on screen      ${car_search_section}[btn_pick_up_time]

Click dropoff date
    common_web.Click element on screen      ${car_search_section}[btn_drop_off_date]

Click droppoff time
    common_web.Click element on screen      ${car_search_section}[btn_drop_off_time]

Click return at a different location checkbox
    common_web.Click element on screen      ${car_search_section}[chk_return_diff_location]

Click select driver's age dropdown button
    common_web.Click element on screen      ${car_search_section}[btn_driver_age]

Click driver's license dropdown button
    common_web.Click element on screen      ${car_search_section}[btn_driver_license]

Click search button
    common_web.Click element on screen      ${car_search_section}[btn_search_button]
