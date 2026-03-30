*** Keywords ***
Login with email or mobile no. method
    [Arguments]    ${email_or_mobile_no}    ${password}
    header_bar.Click login button on header bar
    header_bar.Click login with email or mobile no.
    header_bar.Input email or mobile no. on login or sign up popup                ${email_or_mobile_no}
    header_bar.Click login button on login or sign up with email or mobile no. method
    header_bar.Input password on login or sign up popup                           ${password}
    header_bar.Click login button to confirm password on login or sign up with email or mobile no. method
