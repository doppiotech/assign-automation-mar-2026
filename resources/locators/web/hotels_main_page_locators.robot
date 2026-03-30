*** Variables ***
#Search
${hotels_main_page_locators.txt_search_hotels}                           css=#hotel-search-destination
${hotels_main_page_locators.btn_hotel_search_button}                     css=#hotel-search-button
${hotels_main_page_locators.btn_search_suggestion}                       css=#search-suggestion-container

#Check in and Check out
${hotels_main_page_locators.btn_check_in}                                css=#hotel-search-checkin-date
${hotels_main_page_locators.btn_check_out}                               css=#hotel-search-checkout-date

#Guests and room
${hotels_main_page_locators.btn_guests_and_room}                         css=#hotel-search-traveler
${hotels_main_page_locators.btn_confirm_guests_room_button}              css=button:text-is("${guests_and_rooms.t_confirm}")
${hotels_main_page_locators.lbl_rooms_amount}                            css=[role="menuitem"]:has(div:text-is("${guests_and_rooms.t_rooms}"))
${hotels_main_page_locators.btn_rooms_decrease}
${hotels_main_page_locators.btn_rooms_increase}
${hotels_main_page_locators.lbl_adults_amount}
${hotels_main_page_locators.btn_adults_decrease}
${hotels_main_page_locators.btn_adults_increase}
${hotels_main_page_locators.lbl_children_amount}
${hotels_main_page_locators.btn_children_decrease}
${hotels_main_page_locators.btn_children_increase}
${hotels_main_page_locators.ddl_children_age}
${hotels_main_page_locators.lbl_children_age_list}
${hotels_main_page_locators.btn_children_age_less_1}
${hotels_main_page_locators.btn_children_age_selection}

