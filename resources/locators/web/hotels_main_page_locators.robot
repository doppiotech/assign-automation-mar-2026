*** Variables ***
#Search
${hotels_main_page_locators.txt_search_hotels}                           css=#hotel-search-destination
${hotels_main_page_locators.btn_hotel_search_button}                     css=#hotel-search-button
${hotels_main_page_locators.btn_search_suggestion}                       css=button[id^="hotel-search-typing-"] b:has-text("{DESTINATION}")
                                            

#Check in and Check out
${hotels_main_page_locators.btn_check_in}                                css=#hotel-search-checkin-date
${hotels_main_page_locators.btn_check_out}                               css=#hotel-search-checkout-date
${hotels_main_page_locators.lbl_month_left}                              css=.date-text-left > p
${hotels_main_page_locators.lbl_month_right}                             css=.date-text-right > p
${hotels_main_page_locators.btn_back_one_month}                          css=[title="back-one-month"]
${hotels_main_page_locators.btn_next_one_month}                          css=[title="next-one-month"]
${hotels_main_page_locators.btn_date}                                    css=[class^=rdrDayNumber] span:has-text("{DATE}")

#Guests and room
${hotels_main_page_locators.btn_guests_and_room}                         css=#hotel-search-traveler
${hotels_main_page_locators.btn_confirm_guests_room_button}              css=button:text-is("${guests_and_rooms.t_confirm}")

${hotels_main_page_locators.lbl_rooms_amount}                            css=[role="menuitem"]:has(div:text-is("${guests_and_rooms.t_rooms}")) button:text-is("-") + div                                                           
${hotels_main_page_locators.btn_rooms_decrease}                          css=[role="menuitem"]:has(div:text-is("${guests_and_rooms.t_rooms}")) button:text-is("-")
${hotels_main_page_locators.btn_rooms_increase}                          css=[role="menuitem"]:has(div:text-is("${guests_and_rooms.t_rooms}")) button:text-is("+")

${hotels_main_page_locators.lbl_adults_amount}                           css=[role="menuitem"]:has(div:text-is("${guests_and_rooms.t_adults}")) button:text-is("-") + div
${hotels_main_page_locators.btn_adults_decrease}                         css=[role="menuitem"]:has(div:text-is("${guests_and_rooms.t_adults}")) button:text-is("-")
${hotels_main_page_locators.btn_adults_increase}                         css=[role="menuitem"]:has(div:text-is("${guests_and_rooms.t_adults}")) button:text-is("+")

${hotels_main_page_locators.lbl_children_amount}                         css=[role="menuitem"]:has(div:text-is("${guests_and_rooms.t_children}")) button:text-is("-") + div
${hotels_main_page_locators.btn_children_decrease}                       css=[role="menuitem"]:has(div:text-is("${guests_and_rooms.t_children}")) button:text-is("-")
${hotels_main_page_locators.btn_children_increase}                       css=[role="menuitem"]:has(div:text-is("${guests_and_rooms.t_children}")) button:text-is("+")

${hotels_main_page_locators.ddl_children_age}
${hotels_main_page_locators.lbl_children_age_list}
${hotels_main_page_locators.btn_children_age_less_1}
${hotels_main_page_locators.btn_children_age_selection}

