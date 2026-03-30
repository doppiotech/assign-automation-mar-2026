*** Variables ***
&{hotels_element}
...            hotels_section=css=[id="hotel-search-layout-main-page"]:not([style="display: none !important;"])
&{hotels_search_section}
...            txt_search_bar=css=#hotel-search-destination
...            btn_search_suggestion_typing=css=[id^="hotel-search-typing-"] b:has-text("***destination***")
...            btn_checkin_date=css=[for="hotel-search-checkin-date"]
...            btn_guests_and_rooms=css=[for="hotel-search-traveler"]
...            btn_search_button=css=#hotel-search-button
&{guests_and_rooms_modal}
...            lbl_rooms_amount=css=[role="menuitem"]:has(div:text-is("${guests_and_rooms_modal_trans}[rooms]")) button:text-is("-") + div
...            btn_rooms_decrease=css=[role="menuitem"]:has(div:text-is("${guests_and_rooms_modal_trans}[rooms]")) button:text-is("-")
...            btn_rooms_increase=css=[role="menuitem"]:has(div:text-is("${guests_and_rooms_modal_trans}[rooms]")) button:text-is("+")
...            lbl_adults_amount=css=[role="menuitem"]:has(div:text-is("${guests_and_rooms_modal_trans}[adults]")) button:text-is("-") + div
...            btn_adults_decrease=css=[role="menuitem"]:has(div:text-is("${guests_and_rooms_modal_trans}[adults]")) button:text-is("-")
...            btn_adults_increase=css=[role="menuitem"]:has(div:text-is("${guests_and_rooms_modal_trans}[adults]")) button:text-is("+")
...            lbl_children_amount=css=[role="menuitem"]:has(div:text-is("${guests_and_rooms_modal_trans}[children]")) button:text-is("-") + div
...            btn_children_decrease=css=[role="menuitem"]:has(div:text-is("${guests_and_rooms_modal_trans}[children]")) button:text-is("-")
...            btn_children_increase=css=[role="menuitem"]:has(div:text-is("${guests_and_rooms_modal_trans}[children]")) button:text-is("+")
...            ddl_children_age_dropdown=css=.selector-child-age .flex:has(p:has-text("Child"):has-text("***index***")) button
...            lbl_children_age_list=css=[data-slot="content"]
...            btn_children_age_selection_less_1=css=li span:nth-child(1):has-text("1"):has-text("Less")
...            btn_children_age_selection_1=css=li span:nth-child(1):has-text("1"):not(span:has-text("Less"))
...            btn_children_age_selection=xpath=//li//span[contains(text(),'***age***')]
...            btn_confirm=css=button:text-is("${guests_and_rooms_modal_trans}[confirm]")
