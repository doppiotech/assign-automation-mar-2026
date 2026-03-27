*** Keywords ***
Verify search results summary is correct
    [Arguments]     ${expected_dest}     ${expected_checkin}    ${expected_checkout}      ${expected_guests}
    ${actual_dest}=    Browser.Get Attribute    ${search_result.txt_summary_destination}    value
    BuiltIn.Should Contain    ${actual_dest}    ${expected_dest}
    ${actual_checkin}=    Browser.Get Attribute    ${search_result.txt_summary_checkin}    value
    BuiltIn.Should Contain    ${actual_checkin}    ${expected_checkin}
    ${actual_checkout}=    Browser.Get Attribute    ${search_result.txt_summary_checkout}    value
    BuiltIn.Should Contain    ${actual_checkout}    ${expected_checkout}
    ${actual_guests}=    Browser.Get Attribute    ${search_result.txt_summary_guests}    value
    BuiltIn.Should Contain    ${actual_guests}    ${expected_guests}