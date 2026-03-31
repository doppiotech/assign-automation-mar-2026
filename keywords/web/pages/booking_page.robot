*** Keywords ***
Verify summary page is displayed with selected hotel and room details
    [Arguments]    ${timeout}=${GLOBAL_TIMEOUT}
    Browser.Wait for load state    domcontentloaded    timeout= ${timeout}

Chose sex
    Browser.Click    ${booking_page.rdo_sex}
    Get Element States    ${booking_page.rdo_sex}    contains    checked


Fill in firstname
    [Arguments]    ${fill_in_first_name_value}
    Browser.Fill text    ${booking_page.txt_first_name}    ${fill_in_first_name_value}

Fill in lastname
    [Arguments]    ${fill_in_last_name_value}
    Browser.Fill text    ${booking_page.txt_last_name}    ${fill_in_last_name_value}

Fill in email
    [Arguments]    ${fill_in_email_value}
    Browser.Fill text    ${booking_page.txt_email}    ${fill_in_email_value}

Fill in mobile number
    [Arguments]    ${fill_in_mobile_number_value}
    Browser.Fill text    ${booking_page.txt.mobile_number}    ${fill_in_mobile_number_value}

Select pay later
    

Clik confirm booking
    Browser.Click    ${booking_page.btn_confirm_booking}

