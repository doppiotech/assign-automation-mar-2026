*** Keywords ***
Check if booking page display
    [Arguments]    ${retry_times}=${global_retry_times}    ${interval_for_retry}=${global_interval_for_retry}
    common_web.Wait until page display    ${booking_element}[booking_section]    ${retry_times}    ${interval_for_retry}

Select gender
    [Arguments]    ${gender}
    ${gender_locator}    String.Replace string    ${contact_information_section}[rdo_gender]    ***gender***    ${gender}
    common_web.Click element on screen    ${gender_locator}

Input first name in contact information
    [Arguments]    ${first_name}
    common_web.Input in text field    ${contact_information_section}[txt_first_name]    ${first_name}

Input last name in contact information
    [Arguments]    ${last_name}
    common_web.Input in text field    ${contact_information_section}[txt_last_name]    ${last_name}

Input email in contact information
    [Arguments]    ${email}
    common_web.Input in text field    ${contact_information_section}[txt_email]    ${email}

Click phone country code option in contact information
    common_web.Click element on screen    ${contact_information_section}[btn_phone_country_code]

Select phone country code in contact information
    [Arguments]    ${country_code_or_country_name}
    ${country_code_or_country_name_locator}    String.Replace string    ${contact_information_section}[lbl_phone_country_code_selection]    ***country_code_or_country_name***    ${country_code_or_country_name}
    common_web.Click element on screen    ${country_code_or_country_name_locator}

Input phone number in contact information
    [Arguments]    ${phone}
    common_web.Input in text field    ${contact_information_section}[txt_phone]    ${phone}

Click passport option in contact information
    common_web.Click element on screen    ${contact_information_section}[ddl_country_id]

Select passport in contact information
    [Arguments]    ${country_id}
    ${country_id}    String.Replace string    ${contact_information_section}[lbl_country_id_selection]    ***country_name***    ${country_id}
    common_web.Click element on screen    ${country_id}

Click confirm booking button
    common_web.Click element on screen    ${booking_element}[btn_confirm_booking]

Wait until confirm loading is complete
    common_web.Wait until element not display        ${booking_element}[lbl_loading]
