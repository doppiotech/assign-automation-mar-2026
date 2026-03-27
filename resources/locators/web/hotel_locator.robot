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
&{MONTH_NAME_EN}    01=January    02=February    03=March    04=April    05=May    06=June    07=July    08=August    09=September    10=October    11=November    12=December
&{MONTH_NAME_TH}    01=มกราคม    02=กุมภาพันธ์    03=มีนาคม    04=เมษายน    05=พฤษภาคม    06=มิถุนายน    07=กรกฎาคม    08=สิงหาคม    09=กันยายน    10=ตุลาคม    11=พฤศจิกายน    12=ธันวาคม     
&{MONTH_NUM_EN}     January=01    February=02    March=03    April=04    May=05    June=06    July=07    August=08    September=09    October=10    November=11    December=12
&{MONTH_NUM_TH}     มกราคม=01    กุมภาพันธ์=02    มีนาคม=03    เมษายน=04    พฤษภาคม=05    มิถุนายน=06    กรกฎาคม=07    สิงหาคม=08    กันยายน=09    ตุลาคม=10    พฤศจิกายน=11    ธันวาคม=12
${hotel.TXT_GUEST}          css=#hotel-search-traveler
${hotel.DDL_GUEST}       css=div[id^=headlessui-menu-items-]
${hotel.TXT_GUEST_VALUE}       css=div[id^=headlessui-menu-items-] div[role="menuitem"]:has(div.text-base:text-is("@#TYPE@#")) div.text-center
${hotel.BTN_GUEST_MINUS}    css=div[id^=headlessui-menu-items-] div[role="menuitem"]:has(div.text-base:text-is("@#TYPE@#")) button:text-is("-")
${hotel.BTN_GUEST_PLUS}     css=div[id^=headlessui-menu-items-] div[role="menuitem"]:has(div.text-base:text-is("@#TYPE@#")) button:text-is("+")
${hotel.BTN_GUEST_CONFIRM}    css=div[id^=headlessui-menu-items-] button:text-is("${hotel_page.BTN_GUEST_CONFIRM}")