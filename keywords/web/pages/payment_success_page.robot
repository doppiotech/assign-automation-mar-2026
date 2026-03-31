*** Keywords ***
Check if success page display
    [Arguments]    ${retry_times}=${global_retry_times}    ${interval_for_retry}=${global_interval_for_retry}
    payment_feature.Wait until payment loading is complete
    common_web.Wait until page display    ${payment_success_element_locator}[payment_success_section]    ${retry_times}    ${interval_for_retry}