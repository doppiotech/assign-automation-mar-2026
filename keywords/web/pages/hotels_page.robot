*** Keywords ***
Check if hotels display
    [Arguments]    ${retry_times}=${global_retry_times}    ${interval_for_retry}=${global_interval_for_retry}
    common_web.Wait until page display    ${hotels_element}[hotels_section]    ${retry_times}    ${interval_for_retry}

Click destination search field
    common_web.Click element on screen      ${hotels_search_section}[txt_search_bar]

Select destination from suggestion list
    [Arguments]    ${destination}
    ${destination_locator}=        String.Replace string    ${hotels_search_section}[btn_search_suggestion]    ***destination***    ${destination}
    common_web.Click element on screen      ${destination_locator}

Input destination on search field
    [Arguments]    ${search_text}
    common_web.Input in text field        ${hotels_search_section}[txt_search_bar]        ${search_text}

Select destination from suggestion list after search with input
    [Arguments]    ${destination}
    ${destination_locator}=        String.Replace string    ${hotels_search_section}[btn_search_suggestion_typing]    ***destination***    ${destination}
    common_web.Click element on screen      ${destination_locator}

Click check in date section
    common_web.Click element on screen      ${hotels_search_section}[btn_checkin_date]

Click check out date section
    common_web.Click element on screen      ${hotels_search_section}[btn_checkout_date]

Click guests and rooms section
    common_web.Click element on screen      ${hotels_search_section}[btn_guests_and_rooms]

Get rooms amount
    ${room_amount}=    common_web.Get text from element    ${guests_and_rooms_modal}[lbl_rooms_amount]
    RETURN    ${room_amount}

Get adults amount
     ${adults_amount}=    common_web.Get text from element    ${guests_and_rooms_modal}[lbl_adults_amount]
    RETURN    ${adults_amount}

Get children amount
     ${children_amount}=    common_web.Get text from element    ${guests_and_rooms_modal}[lbl_children_amount]
    RETURN    ${children_amount}

Click decrease button on rooms amount
    common_web.Click element on screen      ${guests_and_rooms_modal}[btn_rooms_decrease]

Click increase button on rooms amount
    common_web.Click element on screen      ${guests_and_rooms_modal}[btn_rooms_increase]

Click decrease button on adults amount
    common_web.Click element on screen      ${guests_and_rooms_modal}[btn_adults_decrease]

Click increase button on adults amount
    common_web.Click element on screen      ${guests_and_rooms_modal}[btn_adults_increase]

Click decrease button on children amount
    common_web.Click element on screen      ${guests_and_rooms_modal}[btn_children_decrease]

Click increase button on children amount
    common_web.Click element on screen      ${guests_and_rooms_modal}[btn_children_increase]

Click children age selection
    [Arguments]    ${child_index}=1
    ${children_age_locator}=    String.Replace string    ${guests_and_rooms_modal}[ddl_children_age_dropdown]    ***index***    ${child_index}
    common_web.Click element on screen      ${children_age_locator}

Check if children age list display
    common_web.Check if element display     ${guests_and_rooms_modal}[lbl_children_age_list]

check if confirm button on guests and rooms section display
    common_web.Check if element display     ${guests_and_rooms_modal}[btn_confirm]

Select children age selection
    [Arguments]    ${children_age}
    ${children_age_option_locator}=        String.Replace string    ${guests_and_rooms_modal}[btn_children_age_selection]    ***age***    ${children_age}
    common_web.Click element on screen      ${children_age_option_locator}

Select children age selection with less than 1 year option
    common_web.Click element on screen      ${guests_and_rooms_modal}[btn_children_age_selection_less_1]

Select children age selection with 1 year option
    common_web.Click element on screen      ${guests_and_rooms_modal}[btn_children_age_selection_1]

Click confirm guests and rooms
    common_web.Click element on screen      ${guests_and_rooms_modal}[btn_confirm]

Click search button
    common_web.Click element on screen      ${hotels_search_section}[btn_search_button]
