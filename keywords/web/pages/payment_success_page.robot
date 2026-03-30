*** Keywords ***
Check if success page display
    [Arguments]    ${retry_times}=${global_retry_times}    ${interval_for_retry}=${global_interval_for_retry}
    common_web.Wait until page display    ${payment_success_element}[payment_success_section]    ${retry_times}    ${interval_for_retry}
    payment_feature.Wait until payment loading is complete