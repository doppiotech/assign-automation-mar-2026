*** Keywords ***
Verify booking success title
    [Arguments]     ${expected_title}  ${timeout}=${globle_timeout}
    Browser.Wait For Elements State    ${successful.h3_title}      visible    timeout=${timeout}
    ${current_text}=    Browser.Get Text    ${successful.h3_title}  
    Should Be Equal As Strings    ${current_text}    ${expected_title}
    Log To Console    Verified Title: ${current_text}

Verify and get booking confirmation number
    [Arguments]    ${expected_prefix}    ${timeout}=${globle_timeout}
    Browser.Wait For Elements State    ${successful.lbl_booking_prefix}    visible    timeout=${timeout}
    ${actual_prefix}=    Browser.Get Text    ${successful.lbl_booking_prefix}
    Should Contain    ${actual_prefix}    ${expected_prefix}
    ${booking_no}=    Browser.Get Text    ${successful.lbl_booking_id}
    Log To Console    Your booking conformation no.: ${booking_no}

Verify booking success email
    [Arguments]    ${expected_email}    ${expected_prefix}    ${timeout}=${globle_timeout}
    Browser.Wait For Elements State    ${successful.lbl_email_prefix}    visible    timeout=${timeout}
    ${actual_prefix}=    Browser.Get Text    ${successful.lbl_email_prefix}
    Should Contain    ${actual_prefix}    ${expected_prefix}
    ${actual_email}=    Browser.Get Text    ${successful.lbl_email_value}
    Should Be Equal As Strings    ${actual_email}    ${expected_email}
    Log To Console    The system will send your booking details to : ${actual_email}