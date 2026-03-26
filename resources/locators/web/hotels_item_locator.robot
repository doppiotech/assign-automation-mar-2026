*** Variables ***
&{hotels_item_element}
...            hotels_item_section=css=#hotel-search-layout-main-page
&{room_option}
...            lbl_room_type=css=[id^="hotel-cart-room-"]:has-text("***room_type***")
...            btn_book_now_by_roomtype_and_price=xpath=//h3[contains(@id,'hotel-cart-room-') and contains(text(),'***room_type***')]/ancestor::div[contains(@class,'bg-card-room-detail')]//h2[contains(@id,'hotel-cart-price') and contains(text(),'***price***')]/ancestor::div[contains(@class,'grid')]//button[contains(text(),'Book now')]
...            btn_book_now_by_price=xpath=//h2[contains(@id,'hotel-cart-price') and contains(text(),'***price***')]/ancestor::div[contains(@class,'grid')]//button[contains(text(),'Book now')]
...            btn_book_now_by_index=xpath=(//button[contains(text(),'Book now')])[***index***]