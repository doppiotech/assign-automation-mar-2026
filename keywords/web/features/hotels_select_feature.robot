*** Keywords ***
Search hotels
    [Arguments]        ${search_hotels_text}              
    hotels_main_page.Click hotels tab 
    common_web.Verify hotels page
    hotels_main_page.Click destination or accommodation name search field
    hotels_main_page.Input your destination or accommodation name search field        ${search_hotels_text}
    hotels_main_page.Select destination or accommodation name from suggestion list        ${search_hotels_text}

Select guests and room 
    [Arguments]        ${target_rooms}    ${target_adults}    ${target_children}
    hotels_main_page.Click guests and room
    hotels_main_page.Select guests and room            ${target_rooms}    ${target_adults}    ${target_children}
    hotels_main_page.Click confirm guests and rooms

Select check-in date
    [Arguments]     ${target_day}    ${target_month}    ${target_year}
    hotels_main_page.Clcik check in
    #เลือกวัน Check-in: 6 เมษายน 2026
    hotels_main_page.Select check-in and check-out date    ${target_day}     ${target_month}     ${target_year}
    
Select check-out date 
    [Arguments]     ${target_day}    ${target_month}    ${target_year}
    #เลือกวัน Check-out: 9 เมษายน 2026
    hotels_main_page.Select check-in and check-out date   ${target_day}     ${target_month}     ${target_year}

Select hotels
    [Arguments]        ${hotel_index} 
    hotels_main_page.Click search button
    select_hotels_page.Select hotel by index        ${hotel_index}
    common_web.Switch new tab
    common_web.Verify hotels item page

    
    