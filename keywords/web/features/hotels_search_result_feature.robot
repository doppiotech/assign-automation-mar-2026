*** Keywords ***
Verify search criteria match with input
    [Arguments]    ${destination_ref}    ${checkin_date_ref}    ${checkout_date_ref}    ${guests_and_rooms_ref}
    ${destination}         hotels_search_result_page.Get destination
    ${checkin_date}        hotels_search_result_page.Get checkin date
    ${checkout_date}       hotels_search_result_page.Get checkout date
    ${guests_and_rooms}    hotels_search_result_page.Get guests and rooms
    BuiltIn.Should be equal    ${destination_ref}     ${destination}
    BuiltIn.Should be equal    ${checkin_date}        ${checkin_date_ref}
    BuiltIn.Should be equal    ${checkout_date}       ${checkout_date_ref}
    BuiltIn.Should be equal    ${guests_and_rooms}    ${guests_and_rooms_ref}
