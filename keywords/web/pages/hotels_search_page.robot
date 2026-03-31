*** Keywords ***
Click hotel name
    [Arguments]     ${hotel_name}
    ${locator}=    String.Replace String    string=${hotels_search_locator.hotel_name}    search_for=***hotel_name***    replace_with=${hotel_name}
    Browser.Wait For Elements State    selector=${locator}    state=visible     timeout=${20S_TIMEOUT}
    Browser.Click   selector=${locator}