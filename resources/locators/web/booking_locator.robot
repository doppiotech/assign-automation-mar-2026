*** Variables ***
&{booking_element_locator}
...            booking_section=css=[class^="booking-page"]
...            btn_confirm_booking=css=[type="submit"]
...            lbl_loading=css=#loading-gother [alt="loading"]
&{contact_information_section_locator}
...            rdo_gender=css=[for="prefixName"] label:has(span:text-is("***gender***")) input
...            txt_first_name=css=input[name="firstName"]
...            txt_last_name=css=input[name="lastName"]
...            txt_email=css=input[name="email"]
...            btn_phone_country_code=css=[role="group"]:has(input[name="phone"]) button
...            lbl_phone_country_code_selection=css=[aria-label="country-list"] p:has-text("***country_code_or_country_name***")
...            txt_phone=css=input[name="phone"]
...            ddl_country_id=css=label:text-is("${contact_information_section_trans}[country_id]")
...            lbl_country_id_selection=css=[aria-label="country-list"] p:has-text("***country_name***")
&{ิbooking_information_section_locator}
...            lbl_hotel_name=css=#hotel-booking-hotel-name
...            lbl_room_type=css=#hotel-booking-room-name