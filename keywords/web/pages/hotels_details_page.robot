*** Keywords ***
Click reserve rooms
    [Arguments]     ${room_category}
    ${locator}=    String.Replace String    string=${hotels_details_locator.btn_reserve_rooms}     search_for=***room_category***    replace_with=${room_category}
    Browser.Wait For Elements State    selector=${locator}    state=visible     timeout=${20S_TIMEOUT}
    Browser.Click    selector=${locator}