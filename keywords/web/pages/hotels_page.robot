*** Keywords ***
Fill destination
    [Arguments]     ${destination}
    Browser.Wait For Elements State    selector=${hotels_locator.txt_search_destination}    state=visible     timeout=${20S_TIMEOUT}
    Browser.Fill Text   selector=${hotels_locator.txt_search_destination}    txt=${destination}

Select search suggestion
    [Arguments]    ${suggess}
    ${locator}=    String.Replace String    string=${hotels_locator.ddl_search_suggestion}    search_for=***suggess***    replace_with=${suggess}
    Browser.Click    selector=${locator}

Click guest and rooms
    Browser.Click   selector=${hotels_locator.btn_guests_rooms}

Add rooms
    [Arguments]     ${number_of_rooms}
    ${text_number_of_rooms}=   Browser.Get Text   selector=${hotels_locator.number_of_rooms}

    FOR    ${i}    IN RANGE    1    ${HOTEL.MAX_ROOMS}
        EXIT FOR LOOP IF    "${text_number_of_rooms}" == "${number_of_rooms}"
        Browser.Click   selector=${hotels_locator.btn_+_rooms}
        ${text_number_of_rooms}=   Browser.Get Text   selector=${hotels_locator.number_of_rooms}
    END

Add adults guests
    [Arguments]    ${number_of_adults}
    ${target_adults}=    BuiltIn.Convert To Integer    item=${number_of_adults}
    ${text_number_of_adults}=    Browser.Get Text    selector=${hotels_locator.number_of_adults}
    ${current_adults}=    BuiltIn.Convert To Integer    item=${text_number_of_adults}

    IF    "${number_of_adults}" < "${text_number_of_adults}"
        Browser.Click    selector=${hotels_locator.btn_-_adults}
    ELSE IF    "${number_of_adults}" > "${text_number_of_adults}"
        FOR    ${_}    IN RANGE    1    ${HOTEL.MAX_ADULTS}
            EXIT FOR LOOP IF    ${current_adults} == ${target_adults}
            Browser.Click    selector=${hotels_locator.btn_+_adults}
            ${text_number_of_adults}=    Browser.Get Text    selector=${hotels_locator.number_of_adults}
            ${current_adults}=    BuiltIn.Convert To Integer    item=${text_number_of_adults}
        END
    END


Add children guest
    [Arguments]     ${number_of_children}
    ${text_number_of_children}=   Browser.Get Text   selector=${hotels_locator.number_of_children}

    FOR    ${i}    IN RANGE    1    ${HOTEL.MAX_CHILDREN}
        EXIT FOR LOOP IF    "${text_number_of_children}" == "${number_of_children}"
        Browser.Click   selector=${hotels_locator.btn_+_children}
        ${text_number_of_children}=   Browser.Get Text   selector=${hotels_locator.number_of_children}
    END

Click confirm guest and rooms
    Browser.Click   selector=${hotels_locator.btn_confirm_guests_rooms}

Click search hotels
    Browser.Click   selector=${hotels_locator.btn_search_hotels}