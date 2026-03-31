*** Variables ***
&{hotels_item_element_locator}
...            hotels_item_section=css=#breadcrumb-hotels
...            hotels_name=css=#breadcrumb-hotels + div h1
&{room_option_locator}
...            btn_book_now_by_index=xpath=(//button[contains(text(),'Book now')])[***index***]
...            lbl_room_type=xpath=(//button[contains(text(),'Book now')])[***index***]/ancestor::div[contains(@class,'bg-card-room-detail')]//h3[contains(@id,'hotel-cart-room-')]