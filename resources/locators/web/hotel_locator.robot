*** Variables ***
${hotel.TXT_DESTINATION}    css=input#hotel-search-destination
${hotel.LIST_DESTINATION_ALL}    css=button[id^='hotel-search-typing-']
${hotel.LIST_DESTINATION}    css=button[id^='hotel-search-typing-@#INDEX@#']
${hotel.DESTINATION_NAME}    >> div.text-left >> nth=0
${hotel.TXT_CHECKIN}     css=#hotel-search-checkin-date
${hotel.TXT_CHECKOUT}    css=#hotel-search-checkout-date
${hotel.CALENDAR_POPUP}    css=div[id^="global-calendar"]
${hotel.BTN_CALENDAR_PREV}   css=button[title="back-one-month"]    
${hotel.BTN_CALENDAR_NEXT}   css=button[title="next-one-month"]
${hotel.TXT_CALENDAR_DAY}        css=div.rdrMonth:has(div.rdrMonthName:has-text("@#MONTH_YEAR@#")) button.rdrDay:not(.rdrDayPassive):has(span:text-is("@#DAY@#"))
${hotel.TXT_GUEST}          css=#hotel-search-traveler
${hotel.DDL_GUEST}       css=div[id^=headlessui-menu-items-]
${hotel.TXT_GUEST_VALUE}       css=div[id^=headlessui-menu-items-] div[role="menuitem"]:has(div.text-base:text-is("@#TYPE@#")) div.text-center
${hotel.BTN_GUEST_MINUS}    css=div[id^=headlessui-menu-items-] div[role="menuitem"]:has(div.text-base:text-is("@#TYPE@#")) button:text-is("-")
${hotel.BTN_GUEST_PLUS}     css=div[id^=headlessui-menu-items-] div[role="menuitem"]:has(div.text-base:text-is("@#TYPE@#")) button:text-is("+")
${hotel.BTN_GUEST_CONFIRM}    css=div[id^=headlessui-menu-items-] button:text-is("${hotel_page.BTN_GUEST_CONFIRM}")
${hotel.BTN_SEARCH}    css=button#hotel-search-button
${hotel.BTN_LEFT_CALENDAR}    css=div[class^="date-text"]>p >> nth=0
${hotel.BTN_RIGHT_CALENDAR}    css=div[class^="date-text"]>p >> nth=1