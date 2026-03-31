*** Keywords ***
Booking hotels
    [Documentation]     This kw will booking hotels since search until before payment
    ...                Arguments:
    ...                    - ${destination}                 (string)        :       จีน
    ...                    - ${destination_suggess}         (string)        :       เซี่ยงไฮ้
    ...                    - ${check_in_Day}                (integer)       :       20
    ...                    - ${check_in_MonthYear}          (string)        :       เมษายน 2026
    ...                    - ${check_out_Day}               (integer)       :       25
    ...                    - ${check_out_MonthYear}         (string)        :       เมษายน 2026
    ...                    - ${number_of_rooms}             (integer)       :       2
    ...                    - ${number_of_adults}            (integer)       :       3
    ...                    - ${number_of_children}          (integer)       :       0
    ...                    - ${hotel_name}                  (string)        :       Dijon Hotel Shanghai 
    ...                    - ${room_category}               (string)        :       Deluxe Twin
    ...                    - ${gender}                      (string)        :       Male
    ...                    - ${first_name}                  (string)        :       John
    ...                    - ${last_name}                   (string)        :       Doe
    ...                    - ${email}                       (string)        :       test123@example.com
    ...                    - ${phone_number}                (integer)       :       0812345678

    [Arguments]     
    ...             ${destination}    
    ...             ${destination_suggess}
    ...             ${check_in_Day}
    ...             ${check_in_MonthYear}
    ...             ${check_out_Day}
    ...             ${check_out_MonthYear}
    ...             ${number_of_rooms}
    ...             ${number_of_adults}
    ...             ${number_of_children}
    ...             ${hotel_name}
    ...             ${room_category}
    ...             ${gender}
    ...             ${first_name}
    ...             ${last_name}
    ...             ${email}
    ...             ${phone_number}
    nav_bar_page.Click hotel tab
    common_web.Wait Page Load
    bottom_bar_page.Click accept cookies
    hotels_page.Fill destination     destination=${destination}
    hotels_page.Select search suggestion    destination_suggess=${destination_suggess}
    calendar_page.Click check-in date
    ${text_check_in_MonthYear}=     calendar_page.Select check-in date
    ...     check_in_Day=${check_in_Day}
    ...     check_in_MonthYear=${check_in_MonthYear}
    calendar_page.Select check-out date
    ...     text_check_in_MonthYear=${text_check_in_MonthYear}
    ...     check_out_Day=${check_out_Day}
    ...     check_out_MonthYear=${check_out_MonthYear}
    ...     check_in_MonthYear=${check_in_MonthYear}
    hotels_page.Click guest and rooms
    hotels_page.Add rooms   number_of_rooms=${number_of_rooms}
    hotels_page.Add adults guests  number_of_adults=${number_of_adults}
    hotels_page.Add children guest  number_of_children=${number_of_children}
    hotels_page.Click confirm guest and rooms
    hotels_page.Click search hotels
    #common_web.Wait Page Load
    hotels_search_page.Click hotel name  hotel_name=${hotel_name}
    common_web.Switch to new tab
    common_web.Wait Page Load
    hotels_details_page.Click reserve rooms     room_category=${room_category}
    hotels_booking_page.Select gender   gender=${gender}
    hotels_booking_page.Fill first name  first_name=${first_name}
    hotels_booking_page.Fill last name  last_name=${last_name}
    hotels_booking_page.Fill email  email=${email}
    hotels_booking_page.Fill phone number  phone_number=${phone_number}
    hotels_booking_page.Scroll down to confirm booking button
    hotels_booking_page.Click confirm booking