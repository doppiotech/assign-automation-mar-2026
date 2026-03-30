*** Keywords ***
Select hotel by index
    [Arguments]    ${hotel_index}
    # แทนที่ {INDEX} ด้วยตัวเลขที่ส่งมา เช่น 0, 1, 2
    ${hotel_locator}=        String.Replace string    ${select_hotels_page_locators.lbl_search_item_by_index}    {INDEX}    ${hotel_index}
    Browser.Wait for elements state    ${hotel_locator}    visible    ${global_timeout}
    Browser.Click       ${hotel_locator}