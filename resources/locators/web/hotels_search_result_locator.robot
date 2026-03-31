*** Variables ***
&{hotels_search_result_element_locator}
...            search_result_section=css=#hotel-search-layout-main-page
&{hotels_search_list_section_locator}
...            lbl_total_search_result_items=css=[class="text-sm font-normal md:text-base"]:has-text("${search_list_page}[results]")
...            lbl_search_result_item_by_index=css=.infinite-scroll-component__outerdiv div[class^="order"]:nth-of-type(***hotel_index***) a[id^="hotel-item-card-"]
