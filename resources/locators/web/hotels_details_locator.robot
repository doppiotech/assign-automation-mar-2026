*** Variables ***
${hotels_details_locator.btn_reserve_rooms}      css=div:has(h3:has-text("***room_category***")) + div button:has-text("${translation.reserve_rooms}") >> nth=0