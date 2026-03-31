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

Select Destination From Search Results
    [Arguments]    ${index}
    ${target_locator}=    String.Replace string    ${hotel.LIST_DESTINATION}    @#INDEX@#    ${index}
    Browser.Click    ${target_locator}

Search Destination
    [Arguments]    ${destination}
    Browser.Wait for elements state    ${hotel.TXT_DESTINATION}      
    Browser.Fill text    ${hotel.TXT_DESTINATION}    ${destination}


Fill In Checkin And Checkout Dates
    [Arguments]    ${checkin}    ${checkout}
    ${current_date}=    DateTime.Get current date    result_format=%Y-%m-%d
    BuiltIn.Should be true    '${checkin}' > '${current_date}'    msg="❌ Error: วัน Check-in (${checkin}) ต้องเป็นวันในอนาคต (ต้องมากกว่าวันที่ ${current_date})"
    BuiltIn.Should be true    '${checkin}' < '${checkout}'    msg=❌ Error: วัน Check-out (${checkout}) ต้องมากกว่า Check-in (${checkin})!    
    ${chk_in_day}    ${chk_in_m_num}    ${chk_in_year}=    calendar_feature.Convert Input Date For Calendar    ${checkin}
    ${chk_out_day}   ${chk_out_m_num}   ${chk_out_year}=   calendar_feature.Convert Input Date For Calendar    ${checkout}
    calendar_feature.Open Calendar Popup
    calendar_feature.Select Date On Calendar    ${chk_in_day}     ${chk_in_m_num}     ${chk_in_year}
    calendar_feature.Select Date On Calendar    ${chk_out_day}    ${chk_out_m_num}    ${chk_out_year}


Search For Hotels
    [Documentation]    กรอกข้อมูลสำหรับการค้นหาโรงแรมทั้งหมด (สถานที่, วันที่เข้าพัก, จำนวนคน/ห้อง) และกดปุ่มค้นหา
    ...                ถ้าไม่ส่งค่าวันที่หรือจำนวนคนเข้ามา ระบบจะดึงค่าจากไฟล์ testdata.yaml ให้โดยอัตโนมัติ
    [Arguments]    ${index}    
    ...            ${checkin_date}  
    ...            ${checkout_date}    
    ...            ${amount_room}    
    ...            ${amount_adult}  
    ...            ${amount_children}

    hotel_page.Select Destination From Search Results    ${index}
    hotel_page.Fill In Checkin And Checkout Dates    ${checkin_date}    ${checkout_date}
    guest_room_feature.Setting Guests And Rooms    ${amount_room}    ${amount_adult}    ${amount_children}
    Browser.Click    ${hotel.BTN_SEARCH}