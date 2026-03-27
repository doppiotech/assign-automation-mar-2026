*** Variables ***
&{search_result_element}
...            search_result_section=css=#hotel-search-layout-main-page
&{search_list_section}
...            lbl_total_search_result_items=css=[class="text-sm font-normal md:text-base"]:has-text("${search_list_page}[results]")
...            lbl_search_result_item_by_idex=css=.infinite-scroll-component__outerdiv div[class^="order"]:nth-of-type(***hotel_index***) a[id^="hotel-item-card-"]
...            lbl_search_result_item_by_name=css=[id^="hotel-item-name-"]:text-is("***hotel_name***")