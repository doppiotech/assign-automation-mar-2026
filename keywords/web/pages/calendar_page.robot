*** Keywords ***
Click check-in date
    Browser.Click    selector=${calendar.locator.btn_check_in_date}

Select check-in date
    [Arguments]    ${check_in_Day}   ${check_in_MonthYear}
    ${text_check_in_MonthYear}=   Browser.Get Text   selector=${calendar.locator.check_in_month_year}
    ${locator_check_in_day}=    String.Replace String  string=${calendar.locator.check_in_day}    search_for=***Day***    replace_with=${check_in_Day}
    
    FOR    ${i}    IN RANGE    1    ${CALENDAR.MAX_NEXT_MONTH}
        EXIT FOR LOOP IF    "${text_check_in_MonthYear}" == "${check_in_MonthYear}"
        Browser.Click   selector=${calendar.locator.btn_next_month}
        ${text_check_in_MonthYear}=   Browser.Get Text   selector=${calendar.locator.check_in_month_year}
    END
    Browser.Click   selector=${locator_check_in_day}
    RETURN  ${text_check_in_MonthYear}


Select check-out date
    [Arguments]    ${check_out_Day}    ${check_out_MonthYear}    ${check_in_MonthYear}    ${text_check_in_MonthYear}
    ${text_check_out_MonthYear}=    Browser.Get Text    selector=${calendar.locator.check_out_month_year}
    ${locator_check_out_day_left}=    String.Replace String    string=${calendar.locator.check_in_day}    search_for=***Day***    replace_with=${check_out_Day}
    ${locator_check_out_day_right}=    String.Replace String    string=${calendar.locator.check_out_day}    search_for=***Day***    replace_with=${check_out_Day}

    IF    "${check_out_MonthYear}" != "${text_check_in_MonthYear}" and "${check_out_MonthYear}" != "${text_check_out_MonthYear}"
        Browser.Click    selector=${calendar.locator.btn_next_month}
    ELSE IF    "${check_out_MonthYear}" == "${text_check_in_MonthYear}"
        Browser.Click    selector=${locator_check_out_day_left}
    ELSE IF    "${check_out_MonthYear}" == "${text_check_out_MonthYear}"
        Browser.Click    selector=${locator_check_out_day_right}
    END




