*** Keywords ***
Verify system can redirect to search page
    [Arguments]    ${timeout}=${default_timeout}
    ${item_locators}=    Set Variable    ${search.IMG_HOTEL_SEARCH}
        Browser.Wait for elements state    ${search.IMG_HOTEL_SEARCH}    timeout=${timeout} 
    ${item_count}=    Browser.Get element count    ${item_locators}
    IF    ${item_count} > 0
        RETURN    ${item_count}
    ELSE
        Fail    ไม่พบผลการค้นหาปลายทาง
    END

Select Random hotel From Search Results
    [Arguments]    ${item_count}
    ${random_index}=    BuiltIn.Evaluate    random.randint(0, ${item_count} - 1)    modules=random
    ${target_locator}=    String.Replace string    ${search.LBL_HOTEL_SEARCH_INDEX}    @#INDEX@#    ${random_index}
    ${hotel_name_locator}=    String.Replace string    ${search.TXT_HOTEL_NAME}    @#INDEX@#    ${random_index}
    ${hotel_name}=    Browser.Get text    ${hotel_name_locator}
    Browser.Click    ${target_locator}
    RETURN    ${hotel_name}