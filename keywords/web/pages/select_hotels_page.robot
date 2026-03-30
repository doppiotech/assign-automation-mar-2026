*** Keywords ***
Select hotel by index
    [Arguments]    ${hotel_index}
    # แทนที่ {INDEX} ด้วยตัวเลขที่ส่งมา เช่น 0, 1, 2
    ${hotel_locator}=        String.Replace string    ${select_hotels_page_locators.lbl_search_item_by_index}    {H_INDEX}    ${hotel_index}
    Browser.Wait for elements state    ${hotel_locator}    visible    ${global_timeout}
    Browser.Click       ${hotel_locator}

Book room by index
    [Arguments]    ${room_type}    ${room_index}
    ${book_type_room}=        String.Replace string    ${select_hotels_page_locators.btn_book_now_by_index}    {T_INDEX}    ${room_type}
    ${book_button_now_locators}=        String.Replace string    ${book_type_room}  {R_INDEX}    ${room_index}
    Browser.Scroll to element        ${book_button_now_locators}
    Browser.Wait for elements state    ${book_button_now_locators}   visible    ${global_timeout}
    Browser.Click      ${book_button_now_locators}


    