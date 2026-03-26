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
...            txt_phone=css=input[name="phone"]
...            ddl_country_id=css=label:text-is("${contact_information_section}[country_id]")
&{country_id_list}
...            txt_search_country=css=[name="searchCountry"]
...            lbl_country_option=css=[data-slot="content"]:has([name="searchCountry"]) p:text-is("***country***")