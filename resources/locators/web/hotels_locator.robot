*** Variables ***
&{hotels_element}
...            hotels_section=css=[id="hotel-search-layout-main-page"]:not([style="display: none !important;"])
&{hotels_search_section}
...            txt_search_bar=css=#hotel-search-destination
...            btn_search_suggestion=css=[id="hotel-search-suggestion"] p:text-is("***destination***")
...            btn_search_suggestion_typing=css=[id^="hotel-search-typing-"] b:has-text("***destination***")
...            btn_checkin_date=css=[for="hotel-search-checkin-date"]
...            btn_checkout_date=css=[for="hotel-search-checkout-date"]
...            btn_guests_and_rooms=css=[for="hotel-search-traveler"]
...            btn_search_button=css=#hotel-search-button
&{calendar_modal}
...            lbl_month_left=css=.date-text-left p
...            lbl_month_right=css=.date-text-right p
...            btn_back_one_month=css=[title="back-one-month"]
...            btn_next_one_month=css=[title="next-one-month"]
...            btn_today_date=css=.rdrDay.rdrDayToday
...            btn_available_date=css=.rdrMonth:has-text("***month***") .rdrDay:nth-child(***day*** of :not(.rdrDayDisabled):not(.invisible))
&{guests_and_rooms_modal}
...            lbl_rooms_amount=css=[role="menuitem"]:has(div:text-is("${guests_and_rooms_modal}[rooms]")) button:text-is("-") + div
...            btn_rooms_decrease=css=[role="menuitem"]:has(div:text-is("${guests_and_rooms_modal}[rooms]")) button:text-is("-")
...            btn_rooms_increase=css=[role="menuitem"]:has(div:text-is("${guests_and_rooms_modal}[rooms]")) button:text-is("+")
...            lbl_adults_amount=css=[role="menuitem"]:has(div:text-is("${guests_and_rooms_modal}[adults]")) button:text-is("-") + div
...            btn_adults_decrease=css=[role="menuitem"]:has(div:text-is("${guests_and_rooms_modal}[adults]")) button:text-is("-")
...            btn_adults_increase=css=[role="menuitem"]:has(div:text-is("${guests_and_rooms_modal}[adults]")) button:text-is("+")
...            lbl_children_amount=css=[role="menuitem"]:has(div:text-is("${guests_and_rooms_modal}[children]")) button:text-is("-") + div
...            btn_children_decrease=css=[role="menuitem"]:has(div:text-is("${guests_and_rooms_modal}[children]")) button:text-is("-")
...            btn_children_increase=css=[role="menuitem"]:has(div:text-is("${guests_and_rooms_modal}[children]")) button:text-is("+")
...            ddl_children_age_dropdown=css=#react-aria5691298313-_r_g3_
...            btn_children_age_selection_less_1=css=#react-aria5691298313-_r_g2_ li span:nth-child(1):has-text("1"):has-text("Less")
...            btn_children_age_selection_1=css=#react-aria5691298313-_r_g2_ li span:nth-child(1):has-text("1"):not(span:has-text("Less"))
...            btn_children_age_selection=ccs=#react-aria5691298313-_r_g2_ li span:has-text("***age***")
...            btn_confirm=css=button:text-is("${guests_and_rooms_modal}[confirm]")
