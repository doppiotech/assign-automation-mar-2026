*** Variables ***
${hotel_locator.lbl_hotel_name}         css=[id^='hotel-item-name-']:has-text('***hotel_name***')     #replace string ***string***
${hotel_locator.btn_book_hotel}         css=div:has(h3:text-is("Elegant Executive Double Room")) + div button:has-text("${translation.btn_book_hotel}") >> nth=0



