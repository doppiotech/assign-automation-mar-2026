*** Variables ***
${select_hotels_page_locators.hotels_search_page}                        css=#hotel-search-layout-main-page
${select_hotels_page_locators.lbl_search_item_by_index}                  css=.infinite-scroll-component__outerdiv div[class^="order"] a[id="hotel-item-card-{H_INDEX}"]
${select_hotels_page_locators.hotels_item_page}                          css=#breadcrumb-hotels
#{T_INDEX} คือลำดับ index ของ Type room ที่เราเลือก {R_INDEX} คือลำดับ index ของ room หลังจากที่เลือก type room แล้ว
${select_hotels_page_locators.btn_book_now_by_index}                     css=button[id="hotel-cart-button-{T_INDEX}-{R_INDEX}"]