*** Keywords ***
Click hotels tab 
    Browser.Wait for elements state    ${home_page_locators.btn_hotels_tab_menu}     visible    ${global_timeout}
    Browser.Click        ${home_page_locators.btn_hotels_tab_menu} 

Click destination or accommodation name search field
    Browser.Wait for elements state    ${hotels_main_page_locators.txt_search_hotels}         visible    ${global_timeout}
    Browser.Click        ${hotels_main_page_locators.txt_search_hotels}     
Input your destination or accommodation name search field
    [Arguments]        ${search_text}
    Browser.Fill text        ${hotels_main_page_locators.txt_search_hotels}                    ${search_text}

Select destination or accommodation name from suggestion list
    [Arguments]    ${search_text}
    Browser.Wait for elements state    ${hotels_main_page_locators.btn_search_suggestion}    visible    ${global_timeout}
    ${้hotels_main_page.destination_locator}=        String.Replace string    ${hotels_main_page_locators.btn_search_suggestion}    ***destination***    ${search_text}
    Browser.Click            ${้hotels_main_page.destination_locator}
    
Select check-in date

Select check-out date

Select guests and room 

Click confirm guests and rooms
    Browser.Click 

Click search button
    Browser.Wait for elements state    ${hotels_main_page_locators.btn_hotel_search_button}    visible    ${global_timeout}
    Browser.Click         ${hotels_main_page_locators.btn_hotel_search_button}




 