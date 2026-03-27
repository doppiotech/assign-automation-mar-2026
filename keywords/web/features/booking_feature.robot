*** Keywords ***
Input contact information
    [Arguments]    ${first_name}    ${last_name}    ${email}
    ...            ${country_code_or_country_name}    ${phone}    ${country_id}
    booking_page.Input first name in contact information                    ${first_name}
    booking_page.Input last name in contact information                     ${last_name}
    booking_page.Input email in contact information                         ${email}
    booking_page.Click phone country code option in contact information     
    booking_page.Select phone country code in contact information           ${country_code_or_country_name}
    booking_page.Input phone number in contact information                  ${phone}
    booking_page.Click passport option in contact information
    booking_page.Select passport in contact information                     ${country_id}