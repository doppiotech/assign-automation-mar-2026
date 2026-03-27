*** Variables ***
&{booking_element}
...            booking_section=css=[class^="booking-page"]
...            btn_confirm_booking=css=[type="submit"]
&{contact_information_section}
...            rdo_gender_male=css=input[value="Mr"]
...            rdo_gender_female=css=input[value="Ms"]
...            txt_first_name=css=input[name="firstName"]
...            txt_last_name=css=input[name="lastName"]
...            txt_email=css=input[name="email"]
...            btn_phone_country_code=css=[role="group"]:has(input[name="phone"]) button
...            lbl_phone_country_code_selection=css=[aria-label="country-list"] p:has-text("***country_code_or_country_name***")
...            txt_phone=css=input[name="phone"]
...            ddl_country_id=css=label:text-is("${contact_information_section_trans}[country_id]")
...            lbl_country_id_selection=css=[aria-label="country-list"] p:has-text("***country_name***")
