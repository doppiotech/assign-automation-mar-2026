*** Keywords ***
Verify data Destination
    [Arguments]    ${timeout}=${default_timeout}
    ${item_locators}=    Set Variable    ${hotel.LIST_DESTINATION}
        Browser.Wait for elements state    ${item_locators}    visible    timeout=${timeout}
    ${item_count}=    Browser.Get element count    ${item_locators}
    IF    ${item_count} > 0
        RETURN    ${item_count}
    ELSE
        Fail    ไม่พบผลการค้นหาปลายทาง
    END

Select Random Destination From Search Results
    ${random_index}=    Evaluate    random.randint(0, ${item_count} - 1)    modules=random
    ${target_locator}=    Set Variable    ${hotel.LIST_DESTINATION}${random_index}
    
    ${selected_name}=    Browser.Get Text    ${target_locator} >> div.text-left >> nth=0
    Log To Console    ✅ สุ่มเลือกสถานที่: ${selected_name} (Index: ${random_index})
    Browser.Click    ${target_locator}