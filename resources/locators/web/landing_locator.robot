*** Variables ***
${landing_locator.btn_signin}               css=[id="signin-and-register-big-button"]
${landing_locator.tab_hotel}                css=span:has-text("${translation.tab_hotel}")
${landing_locator.txt_destination}          css=#hotel-search-destination
${landing_locator.lbl_destination}          css=[id=hotel-search-typing-0]
${landing_locator.btn_checkin_date}         id=hotel-search-checkin-date
${landing_locator.btn_calendar_chechin}     css=button.rdrDay span.rdrDayNumber span:text-is('***day***')
${landing_locator.btn_checkout_date}        id=hotel-search-checkout-date
${landing_locator.btn_calendar_chechout}    css=button.rdrDay:has-text("10") >> nth=0
${landing_locator.btn_guests_room}          id=hotel-search-traveler
${landing_locator.btn_room_increase}        css=button:has-text("+") >> nth=0
${landing_locator.btn_room_decrease}        css=button:has-text("-") >> nth=0
${landing_locator.btn_adult_increase}       css=button:has-text("+") >> nth=1
${landing_locator.btn_adult_decrease}       css=button:has-text("-") >> nth=1
${landing_locator.btn_children_increase}    css=button:has-text("+") >> nth=2
${landing_locator.btn_children_decrease}    css=button:has-text("-") >> nth=2
${landing_locator.btn_confirm_questeroom}   css=button:has-text("${translation.btn_confirm_questeroom}")       
${landing_locator.btn_search}               id=hotel-search-button