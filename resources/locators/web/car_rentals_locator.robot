*** Variables ***
&{car_rentals_element}
...            car_rentals_section=css=[id="breadcrumb-car-rentals"]
&{car_search_section}
...            btn_self_drive_type=css=button:has(div:text-is("${car_rentals_page_trans}[self_drive]"))
...            btn_with_driver_type=css=button:has(div:text-is("${car_rentals_page_trans}[with_driver]"))
...            chk_return_diff_location=#css=filter-sidebar-differentLocation
...            btn_driver_age=css=p:text-is("${car_rentals_page_trans}[select_driver_age]") + div[type="button"]
...            btn_driver_license=css=p:text-is("${car_rentals_page_trans}[driver_license]") + div[type="button"]
...            txt_pick_up_location_search_bar=css=[for^="car-search-pickup-destination-"] + div input
...            txt_drop_off_location_search_bar=css=[for="car-search-dropoff-destination-COL"] + div input
...            btn_pick_up_date=css=#car-search-pickup-date-picker
...            btn_pick_up_time=css=#car-search-pickup-time-picker
...            btn_drop_off_date=css=#car-search-dropoff-date-picker
...            btn_drop_off_time=css=#car-search-dropoff-time-picker
...            btn_search_button=css=#car-search-button
&{car_rentals_search_section}
...            btn_pickup_search_suggestion=css=#car-search-pickup-suggestion p:text-is("***pickup_location***")
...            btn_pickup_search_suggestion_by_index=css=#car-search-pickup-suggestion:nth-of-type(***index***)
...            btn_pickup_search_suggestion_typing=css=[id^="car-search-pickup-typing-"] p:has-text("***pickup_location***")
...            btn_dropoff_search_suggestion=css=#car-search-dropoff-suggestion p:text-is("***dropoff_location***")
...            btn_dropoff_search_suggestion_by_index=css=#car-search-dropoff-suggestion:nth-of-type(***index***)
...            btn_dropoff_search_suggestion_typing=css=[id^="car-search-dropoff-typing-"] p:has-text("***dropoff_location***")
