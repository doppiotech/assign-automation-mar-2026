*** Keywords ***
Search destination by typing
    [Arguments]    ${search_text}
    hotels_page.Click destination search field
    hotels_page.Input destination on search field    ${search_text}
    hotels_page.Select destination from suggestion list after search with input    ${search_text}

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
