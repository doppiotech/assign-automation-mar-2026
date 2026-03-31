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

Select hotels
    [Arguments]        ${hotel_index} 
    hotels_main_page.Click search button
    select_hotels_page.Select hotel by index        ${hotel_index}
    common_web.Switch new tab
    common_web.Verify hotels item page

    
    