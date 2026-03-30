*** Keywords ***
Click hotels tab 
    Browser.Wait for elements state    ${home_page_locators.btn_hotels_tab_menu}     visible    ${global_timeout}
    Browser.Click        ${home_page_locators.btn_hotels_tab_menu} 

Click destination or accommodation name search field
    Browser.Wait for elements state    ${hotels_main_page_locators.txt_search_hotels}         visible    ${global_timeout}
    Browser.Click        ${hotels_main_page_locators.txt_search_hotels}     
Input your destination or accommodation name search field
    [Arguments]        ${search_hotels_text}
    Browser.Fill text        ${hotels_main_page_locators.txt_search_hotels}                    ${search_hotels_text}

Select destination or accommodation name from suggestion list
    [Arguments]    ${search_hotels_text}
    ${้hotels_main_page.destination_locator}=        String.Replace string    ${hotels_main_page_locators.btn_search_suggestion}    {DESTINATION}    ${search_hotels_text}
    Browser.Wait for elements state    ${้hotels_main_page.destination_locator}      visible        ${global_timeout}
    Browser.Click            ${้hotels_main_page.destination_locator}
    
Clcik check in
    Browser.Click    ${hotels_main_page_locators.btn_check_in} 
Select check-in date
    [Arguments]     ${checkin_month}    ${checkin_year}    ${checkin_day}  
    Browser.Wait for elements state    ${hotels_main_page_locators.btn_check_in}       visible        ${global_timeout}  
    

Select check-out date


Click guests and room
    Browser.Click    ${hotels_main_page_locators.btn_guests_and_room}

Select guests and room 
    [Arguments]    ${total_rooms}    ${total_adults}    ${total_children}


Click confirm guests and rooms
    Browser.Wait for elements state    ${hotels_main_page_locators.btn_confirm_guests_room_button}    visible    ${global_timeout}
    Browser.Click    ${hotels_main_page_locators.btn_confirm_guests_room_button}

Click search button
    Browser.Wait for elements state    ${hotels_main_page_locators.btn_hotel_search_button}    visible    ${global_timeout}
    Browser.Click         ${hotels_main_page_locators.btn_hotel_search_button}




 