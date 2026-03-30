*** Keywords ***
Check if car rentals display
    [Arguments]    ${retry_times}=${global_retry_times}    ${interval_for_retry}=${global_interval_for_retry}
    common_web.Wait until page display    ${car_rentals_element}[car_rentals_section]    ${retry_times}    ${interval_for_retry}

Select self-drive type
    common_web.Click element on screen      ${car_search_section}[btn_self_drive_type]

Select with driver type
    common_web.Click element on screen      ${car_search_section}[btn_with_driver_type]

