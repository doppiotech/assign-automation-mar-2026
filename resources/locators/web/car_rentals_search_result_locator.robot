*** Variables ***
&{car_rentals_search_result_element}
...            search_result_section=css=[class^="search-list-car-rentals"]
&{car_rentals_search_list_section}
...            lbl_search_result_item_by_index=css=[id^="car-item-card-0-***index***"]
...            lbl_search_result_item_by_name=css=[id^="car-item-name-0-"]:text-is("***name***")
...            btn_select_button_by_index=css=div[data-slot="heading"]:has([id^="car-item-card-0-"]) + section div[class*="flex-col"]:nth-child(***index***) a[id^="car-select-item-"]
...            btn_select_button_by_price=css=div[data-slot="heading"]:has([id^="car-item-card-0-"]) + section div[class*="flex-col"]:nth-child(1):has([id^="car-item-price"] span:text-is("***price***")) a[id^="car-select-item-"]