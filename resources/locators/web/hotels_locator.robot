*** Variables ***
${hotels_locator.txt_search_destination}    css=#hotel-search-destination
${hotels_locator.ddl_search_suggestion}    css=b:text-is("***suggess***")
${hotels_locator.btn_guests_rooms}        css=#hotel-search-traveler
${hotels_locator.number_of_rooms}       css=[id^="headlessui-menu-item-"]:has-text("${translation.rooms}") button:text-is("-") + div
${hotels_locator.btn_+_rooms}      css=[id^="headlessui-menu-item-"]:has-text("${translation.rooms}") button:text-is("+")
${hotels_locator.number_of_adults}        css=[id^="headlessui-menu-item-"]:has-text("${translation.adults}") button:text-is("-") + div
${hotels_locator.btn_-_adults}      css=[id^="headlessui-menu-item-"]:has-text("${translation.adults}") button:text-is("-")
${hotels_locator.btn_+_adults}      css=[id^="headlessui-menu-item-"]:has-text("${translation.adults}") button:text-is("+")
${hotels_locator.number_of_children}       css=[id^="headlessui-menu-item-"]:has-text("${translation.children}") button:text-is("-") + div
${hotels_locator.btn_+_children}      css=[id^="headlessui-menu-item-"]:has-text("${translation.children}") button:text-is("+")
${hotels_locator.btn_confirm_guests_rooms}       css=button:text-is("${translation.confirm}")
${hotels_locator.btn_search_hotels}     css=#hotel-search-button
