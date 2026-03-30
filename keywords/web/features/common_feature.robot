*** Keywords ***
Find today date on calendar and select today date
    [Arguments]        ${max_loop}=${gobal_max_loop}
    ${month_index_ref}=    BuiltIn.Get time   month
    ${month_int_ref}=    BuiltIn.Convert to number    ${month_index_ref}
    ${month_text}=    common_web.Get left month on calendar
    ${month_index}=    common_web.Convert month into index    ${month_text[0:-5]}
    ${month_int}=    BuiltIn.Convert to number    ${month_index}
    IF    ${month_int} < ${month_int_ref}
        ${diff}=    BuiltIn.Evaluate    ${month_int_ref}-${month_int}
        FOR    ${i}    IN RANGE    ${diff}
            common_web.Click next one month on calendar
            BuiltIn.Exit for loop if    ${i} >= ${max_loop}
        END
    ELSE IF    ${month_int} > ${month_int_ref}
        ${diff}=    BuiltIn.Evaluate    ${month_int}-${month_int_ref}
        FOR    ${i}    IN RANGE    ${diff}
            common_web.Click back one month on calendar
            BuiltIn.Exit for loop if    ${i} >= ${max_loop}
        END
    END
    common_web.Select today date on calendar

Select period from selected date to target days
    [Arguments]    ${days_to_book}
    ${month_text}=    common_web.Get left month on calendar
    ${available_month_locator}=    String.Replace string    ${calendar_modal}[btn_available_date_by_index]    ***month***    ${month_text}
    FOR    ${available_date_in_current_month}    IN RANGE        1    31
        ${available_date_locator}=    String.Replace string    ${available_month_locator}    ***index***    ${available_date_in_current_month}
        ${status}=    BuiltIn.Run keyword and return status   common_web.Check if element display    ${available_date_locator}
        BuiltIn.Exit for loop if    ${status}==${False}
    END
    ${available_date_in_current_month}=    BuiltIn.Evaluate    ${available_date_in_current_month}-1
    IF    ${days_to_book}<=${available_date_in_current_month}
        ${available_date_locator}=    String.Replace string    ${available_month_locator}    ***index***    ${available_date_in_current_month}
        common_web.Click element on screen    ${available_date_locator}
    ELSE IF    ${days_to_book}>${available_date_in_current_month}
        ${days_over}=    BuiltIn.Evaluate    ${days_to_book}-${available_date_in_current_month}
        ${next_month_text}=    common_web.Get right month on calendar
        ${available_month_locator}=    String.Replace string    ${calendar_modal}[btn_available_date_by_index]    ***month***    ${next_month_text}
        ${available_date_locator}=    String.Replace string    ${available_month_locator}    ***index***    ${days_over}
        common_web.Click element on screen    ${available_date_locator}
    END
    