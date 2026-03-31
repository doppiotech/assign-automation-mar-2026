*** Keywords ***
Verify data Destination
    [Arguments]    ${timeout}=${default_timeout}
    ${item_locators}=    Set Variable    ${hotel.LIST_DESTINATION_ALL}
        Browser.Wait for elements state    ${item_locators}    visible    timeout=${timeout}
    ${item_count}=    Browser.Get element count    ${item_locators}
    IF    ${item_count} > 0
        RETURN    ${item_count}
    ELSE
        Fail    ไม่พบผลการค้นหาปลายทาง
    END

Select Random Destination From Search Results
    [Arguments]    ${item_count}
    ${random_index}=    BuiltIn.Evaluate    random.randint(0, ${item_count} - 1)    modules=random
    ${target_locator}=    String.Replace string    ${hotel.LIST_DESTINATION}    @#INDEX@#    ${random_index}
    Browser.Click    ${target_locator}

Search Destination
    Browser.Wait for elements state    ${hotel.TXT_DESTINATION}      
    Browser.Fill text    ${hotel.TXT_DESTINATION}    ${hotel_info.destination}


Fill In Checkin And Checkout Dates
    [Arguments]    ${checkin_days_ahead}=${hotel_info.amount_day.from_day}    ${checkout_days_ahead}=${hotel_info.amount_day.to_day}
    BuiltIn.Should be true    ${checkin_days_ahead} < ${checkout_days_ahead}    msg=❌ Error: วัน Check-out ต้องมากกว่า Check-in!
    ${chk_in_m_y}    ${chk_in_day}    ${chk_in_m_num}    ${chk_in_year}=    calendar_feature.Calculate Target Date For Calendar    ${checkin_days_ahead}
    ${chk_out_m_y}   ${chk_out_day}   ${chk_out_m_num}   ${chk_out_year}=   calendar_feature.Calculate Target Date For Calendar    ${checkout_days_ahead}
    calendar_feature.Open Calendar Popup
    calendar_feature.Select Date On Calendar    ${chk_in_m_y}     ${chk_in_day}     ${chk_in_m_num}     ${chk_in_year}
    calendar_feature.Select Date On Calendar    ${chk_out_m_y}    ${chk_out_day}    ${chk_out_m_num}    ${chk_out_year}

Setting Guests And Rooms
    [Documentation]     1. เปิดหน้าต่าง 
    ...                 2. สั่งปรับตัวเลขให้เป็นเป้าหมายที่ต้องการทีละแถว 
    ...                 3. ยืนยัน
    guest_room_feature.Open Guests And Rooms Dropdown
    
    guest_room_feature.Adjust Guest Or Room Quantity    ${hotel_page.TXT_ROOM}       ${hotel_info.guest_room.amount_room}
    guest_room_feature.Adjust Guest Or Room Quantity    ${hotel_page.TXT_ADULT}      ${hotel_info.guest_room.amount_adult}
    guest_room_feature.Adjust Guest Or Room Quantity    ${hotel_page.TXT_CHILDREN}    ${hotel_info.guest_room.amount_children}
    
    guest_room_feature.Confirm Guests And Rooms Selection