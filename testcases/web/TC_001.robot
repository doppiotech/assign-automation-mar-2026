*** Settings ***
Variables    ${CURDIR}/../../resources/testdata/${ENV.lower()}/${PLATFORM.lower()}/TC_001.yaml
Resource    ${CURDIR}/../../resources/import.robot

*** Test Cases ***
TC_001 Verify Hotel Booking with Credit Card Payment
    [Tags]      TC_001
    common_web.Open browser
    nav_bar_page.Click login/signup button
    login_signup_page.Click email or mobile no. button
    login_signup_page.Fill email    ${TC_001.account.email}
    login_signup_page.Click login after fill email
    login_signup_page.Fill password    ${TC_001.account.password}
    login_signup_page.Click login after fill password
    # Sleep   10s
    common_web.Wait Page Load
    nav_bar_page.Click hotel tab
    hotels_page.Fill destination     ${TC_001.booking.destination}
    hotels_page.Select search suggestion    ${TC_001.booking.suggess}
    calendar_page.Click check-in date
    ${text_check_in_MonthYear}=     calendar_page.Select Check-in Date  
    ...     check_in_Day=${TC_001.booking.check_in_day}  
    ...     check_in_MonthYear=${TC_001.booking.check_in_month_year}
    calendar_page.Select check-out date
    ...     text_check_in_MonthYear=${text_check_in_MonthYear}
    ...     check_out_Day=${TC_001.booking.check_out_day}
    ...     check_out_MonthYear=${TC_001.booking.check_out_month_year}
    ...     check_in_MonthYear=${TC_001.booking.check_in_month_year}
    hotels_page.Click guest and rooms
    hotels_page.Add rooms   number_of_rooms=${TC_001.booking.rooms}
    hotels_page.Add adults guests  number_of_adults=${TC_001.booking.adults}
    hotels_page.Add children guest  number_of_children=${TC_001.booking.children}
    hotels_page.Click confirm guest and rooms
    hotels_page.Click search hotels
    common_web.Wait Page Load
    hotels_search_page.Click hotel name  hotel_name=${TC_001.booking.hotel_name}
    common_web.Switch to new tab
    common_web.Wait Page Load
    hotels_details_page.Click reserve rooms     room_category=${TC_001.booking.room_category}
    hotels_booking_page.Select gender   gender=${TC_001.account.gender}
    hotels_booking_page.Fill first name  first_name=${TC_001.account.first_name}
    hotels_booking_page.Fill last name  last_name=${TC_001.account.last_name}
    hotels_booking_page.Fill email  email=${TC_001.account.email}
    hotels_booking_page.Fill phone number  phone_number=${TC_001.account.phone_number}
    bottom_bar_page.Click accept cookies
    hotels_booking_page.Scroll down to confirm booking button
    hotels_booking_page.Click confirm booking
    common_web.Wait Page Load
    payment_page.Fill credit card number  card_number=${TC_001.credit_card.card_number}
    payment_page.Fill credit card holder name  card_name=${TC_001.credit_card.card_name}
    payment_page.Fill credit card expire date  expire_date=${TC_001.credit_card.expire_date}
    payment_page.Fill credit card cvv  cvv=${TC_001.credit_card.cvv}
    payment_page.Click checkbox allow collect information
    payment_page.Click confirm booking
    # Sleep   10s
    common_web.Wait Page Load
    booking_success_page.Verify booking success







