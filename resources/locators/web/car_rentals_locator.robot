*** Variables ***
&{car_rentals_element}
...            car_rentals_section=css=[id="breadcrumb-car-rentals"]
&{car_search_section}
...            btn_self_drive_type=css=button:has(div:text-is("${car_rentals_page_trans}[self_drive]"))
...            btn_with_driver_type=css=button:has(div:text-is("${car_rentals_page_trans}[with_driver]"))
...            chk_return_diff_location=#css=filter-sidebar-differentLocation
...            btn_driver_age=css=p:text-is("${car_rentals_page_trans}[select_driver_age]") + div[type="button"]
...            btn_driver_license=css=p:text-is("${car_rentals_page_trans}[driver_license]") + div[type="button"]
&{car_rentals_search_section}
...            btn_pickup_search_suggestion=css=#car-search-pickup-suggestion p:text-is("***pickup_location***")
...            btn_pickup_search_suggestion_by_index=css=#car-search-pickup-suggestion:nth-of-type(***index***)
...            btn_pickup_search_suggestion_typing=css=[id^="car-search-pickup-typing-"] p:has-text("***pickup_location***")
...            btn_dropoff_search_suggestion=css=#car-search-dropoff-suggestion p:text-is("***pickup_location***")
...            btn_dropoff_search_suggestion_by_index=css=#car-search-dropoff-suggestion:nth-of-type(***index***)
...            btn_dropoff_search_suggestion_typing=css=[id^="car-search-dropoff-typing-"] p:has-text("***pickup_location***")
&{car_search_self_drive_section}
...            txt_pick_up_location_search_bar=css=[for="car-search-pickup-destination-COL"] + div input
...            txt_drop_off_location_search_bar=css=[for="car-search-dropoff-destination-COL"] + div input
...            btn_pick_up_date=css=#car-search-pickup-date-picker
...            btn_pick_up_time=css=#car-search-pickup-time-picker
...            btn_drop_off_date=css=#car-search-dropoff-date-picker
...            btn_drop_off_time=css=#car-search-dropoff-time-picker
...            btn_search_button=css=#car-search-button
&{calendar_modal}
...            lbl_month_left=css=.date-text-left p
...            lbl_month_right=css=.date-text-right p
...            btn_back_one_month=css=[title="back-one-month"]
...            btn_next_one_month=css=[title="next-one-month"]
...            btn_today_date=css=.rdrDay.rdrDayToday
...            btn_available_date_by_index=css=.rdrMonth:has-text("***month***") .rdrDay:nth-child(***index*** of :not(.rdrDayDisabled):not(.invisible))
...            btn_available_date_by_date=css=.rdrMonth:has-text("***month***") .rdrDay:not(.rdrDayDisabled):not(.invisible) span:text-is("***day***")
&{time_modal}
...            lbl_time=css=[data-key="***time***"]
&{age_modal}
...            lbl_age=css=[data-key="***age***"]
&{country_modal}
...            lbl_country=css=div[src*="country/flag"],[alt="***country***"]