*** Keywords ***
Search destination by typing
    [Arguments]    ${search_text}
    hotels_page.Click destination search field
    hotels_page.Input destination on search field    ${search_text}
    hotels_page.Select destination from suggestion list after search with input    ${search_text}

Find today date on calendar and select today date
    ${month_index_ref}=    BuiltIn.Get time   month
    ${month_int_ref}=    BuiltIn.Convert to number    ${month_index_ref}
    ${month_text}=    hotels_page.Get left month on calendar
    ${month_index}=    hotels_page.Convert month into index    ${month_text[0:-5]}
    ${month_int}=    BuiltIn.Convert to number    ${month_index}
    IF    ${month_int} < ${month_int_ref}
        ${diff}=    BuiltIn.Evaluate    ${month_int_ref}-${month_int}
        FOR    ${i}    IN RANGE    ${diff}
            hotels_page.Click next one month on calendar
        END
        hotels_page.Select today date on calendar
    ELSE IF    ${month_int} > ${month_int_ref}
        ${diff}=    BuiltIn.Evaluate    ${month_int}-${month_int_ref}
        FOR    ${i}    IN RANGE    ${diff}
            hotels_page.Click back one month on calendar
        END
        hotels_page.Select today date on calendar
    ELSE
        hotels_page.Select today date on calendar
    END
    
Select booking period from today to target days
    [Arguments]    ${days_to_book}
    hotels_feature.Find today date on calendar and select today date
    ${month_text}=    hotels_page.Get left month on calendar
    ${available_month_locator}=    String.Replace string    ${calendar_modal}[btn_available_date_by_index]    ***month***    ${month_text}
    FOR    ${available_date_in_current_month}    IN RANGE    1    31
        ${available_date_locator}=    String.Replace string    ${available_month_locator}    ***index***    ${available_date_in_current_month}
        ${status}=    BuiltIn.Run Keyword And Return Status   common_web.Check if element display    ${available_date_locator}
        BuiltIn.Log    ${available_date_in_current_month}
        BuiltIn.Log To Console    ${available_date_in_current_month}
        BuiltIn.Exit for loop if    ${FALSE} == ${status}
        RETURN    ${available_date_in_current_month}
    END
    IF    ${days_to_book}<=${available_date_in_current_month}
        ${available_date_locator}=    String.Replace string    ${available_month_locator}    ***index***    ${available_date_in_current_month}
        common_web.Click element on screen    ${available_date_locator}
    ELSE IF    ${days_to_book}>${available_date_in_current_month}
        ${days_over}=    BuiltIn.Evaluate    ${days_to_book}-${available_date_in_current_month}
        ${next_month_text}=    hotels_page.Get right month on calendar
        ${available_month_locator}=    String.Replace string    ${calendar_modal}[btn_available_date_by_index]    ***month***    ${next_month_text}
        ${available_date_locator}=    String.Replace string    ${available_month_locator}    ***index***    ${days_over}
        common_web.Click element on screen    ${available_date_locator}
    END
    
Adjust rooms amount to
    [Arguments]    ${target_rooms_amount}
    ${rooms_amount}=    hotels_page.Get rooms amount
    IF         ${rooms_amount} < ${target_rooms_amount}
        ${adjust_amount}=    BuiltIn.Evaluate    ${target_rooms_amount}-${rooms_amount}
        FOR    ${i}    IN RANGE    ${adjust_amount}
            hotels_page.Click increase button on rooms amount
        END
    ELSE IF    ${rooms_amount} > ${target_rooms_amount}
        ${adjust_amount}=    BuiltIn.Evaluate    ${rooms_amount}-${target_rooms_amount}
        FOR    ${i}    IN RANGE    ${adjust_amount}
            hotels_page.Click decrease button on rooms amount
        END
    ELSE
        BuiltIn.No operation
    END

Adjust adults amount to
    [Arguments]    ${target_adults_amount}
    ${adults_amount}=    hotels_page.Get adults amount
    IF         ${adults_amount} < ${target_adults_amount}
        ${adjust_amount}=    BuiltIn.Evaluate    ${target_adults_amount}-${adults_amount}
        FOR    ${i}    IN RANGE    ${adjust_amount}
            hotels_page.Click increase button on adults amount
        END
    ELSE IF    ${adults_amount} > ${target_adults_amount}
        ${adjust_amount}=    BuiltIn.Evaluate    ${adults_amount}-${target_adults_amount}
        FOR    ${i}    IN RANGE    ${adjust_amount}
            hotels_page.Click decrease button on adults amount
        END
    ELSE
        BuiltIn.No operation
    END

Adjust children amount and select age
    [Arguments]    ${target_children_amount}
    ${children_amount}=    hotels_page.Get children amount
    IF         ${children_amount} < ${target_children_amount}
        ${adjust_amount}=    BuiltIn.Evaluate    ${target_children_amount}-${children_amount}
        FOR    ${i}    IN RANGE    ${adjust_amount}
            hotels_page.Click increase button on children amount
        END
    ELSE IF    ${children_amount} > ${target_children_amount}
        ${adjust_amount}=    BuiltIn.Evaluate    ${children_amount}-${target_children_amount}
        FOR    ${i}    IN RANGE    ${adjust_amount}
            hotels_page.Click decrease button on children amount
        END
    ELSE
        BuiltIn.No operation
    END

Select children age
    [Arguments]    ${children_index}    ${age}    ${retry_times}=${global_retry_times}    ${interval_for_retry}=${global_interval_for_retry}
    BuiltIn.Wait until keyword succeeds    ${retry_times}    ${interval_for_retry}    
    ...    hotels_feature.Click children age selection and recheck age list display    ${children_index}
    IF    ${age} < 0
        hotels_page.Select children age selection with less than 1 year option
    ELSE IF    ${age} == 1
        hotels_page.Select children age selection with 1 year option
    ELSE IF    ${age} < 1
        hotels_page.Select children age selection    ${age}
    END

Click children age selection and recheck age list display
    [Arguments]    ${children_index}
    hotels_page.check if confirm button on guests and rooms section display
    hotels_page.Click children age selection    ${children_index}
    ${status}    BuiltIn.Run Keyword And Return    hotels_page.Check if children age list display
    RETURN   ${status}
