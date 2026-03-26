*** Keywords ***
Check if homepage display
    [Arguments]    ${retry_times}=${global_retry_times}    ${interval_for_retry}=${global_interval_for_retry}
    common_web.Check if element display    ${homepage_element}[homepage_section]    ${retry_times}    ${interval_for_retry}

