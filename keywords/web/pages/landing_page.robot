*** Keywords ***
Open gother web
    [Arguments]        ${headless_mode}=${False}
    common_web.Open web browser by url    url=${gother_web_url}    headless_mode=${headless_mode}

Click signin button
    Browser.Click      ${landing_locator.btn_signin}

Click hotels tab
    Browser.Click      ${landing_locator.tab_hotel}

Search and select city
    [Arguments]     ${city}
    Browser.Fill text   ${landing_locator.txt_destination}      ${city}
    Browser.Wait for elements state       ${landing_locator.lbl_destination}    visible
    Browser.Click       ${landing_locator.lbl_destination}


Select checkin date
    [Arguments]    ${checkin_date}
    Browser.Click    ${landing_locator.btn_checkin_date}
    # Replace ***day*** ด้วยวันที่จริง
    ${calendar_day}=    String.Replace string    ${landing_locator.btn_calendar_chechin}    ***day***    ${checkin_date}
    # รอให้ปฏิทินโหลด
    Browser.Wait for elements state    ${calendar_day}    visible   
    # คลิกวันที่
    Browser.Click    ${calendar_day}   

Select checkout date
    [Arguments]    ${checkout_day}
    ${calendar_day}=    String.Replace string    ${landing_locator.btn_calendar_chechin}    ***day***    ${checkout_day}
    Browser.Wait for elements state    ${calendar_day}    visible 
      
    Browser.Click    ${calendar_day}   

Click queste and room button
    Browser.Click       ${landing_locator.btn_guests_room} 

Click increase gueste
    [Arguments]    ${rooms}    ${adults}    ${children}
    FOR    ${i}    IN RANGE    ${rooms}
        Browser.Click    ${landing_locator.btn_room_increase}
    END

    FOR    ${i}    IN RANGE    ${adults}
        Browser.Click    ${landing_locator.btn_adult_increase} 
    END

    FOR    ${i}    IN RANGE    ${children}
        Browser.Click    ${landing_locator.btn_children_increase}
    END

Click confirm queste and rooms button
    Browser.Click       ${landing_locator.btn_confirm_questeroom}

Click search button
    Browser.Click       ${landing_locator.btn_search} 