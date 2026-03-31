*** Settings ***
Resource        ${CURDIR}/../../resources/import.robot
Variables    ${CURDIR}/../../resources/testdata/web/testdata.yaml
Test Setup      landing_page.Open gother web

*** Test Cases ***
TC_WEB_POC_001
    [Tags]      TC_WEB_POC_001
    landing_page.Verify system can redirect to landing page
    landing_page.Login to system with email and password
    common_web.Go back to previous page
    landing_page.Click on Accept cookie button
    landing_page.Click on hotels button
    hotel_page.Search Destination
    ${item_count}=    hotel_page.Verify data Destination
    hotel_page.Select Random Destination From Search Results    ${item_count}
    hotel_page.Fill In Checkin And Checkout Dates
    hotel_page.Setting Guests And Rooms
    Browser.Click    ${hotel.BTN_SEARCH}
    ${hotel_count}=    search_page.Verify system can redirect to search page
    ${hotel_name}=    search_page.Select Random hotel From Search Results    ${hotel_count}
    hotel_information_page.Verify system can redirect to hotel information page    ${hotel_name}
    hotel_information_page.Click on book now button
    ${total_price}=    hotel_information_page.Get And Verify Total Price
    booking_page.Get And Verify Total Price    ${total_price}
    booking_page.Verify system can redirect to booking page
    booking_page.Select gender on radio button
    booking_page.Fill firstname
    booking_page.Fill lastname
    booking_page.Fill email
    booking_page.Fill phone number
    booking_page.Click on confirm booking button
    payment_page.Verify system can redirect to payment page
    payment_page.Select payment channel on radio button
    payment_page.Fill card number 
    payment_page.Fill card name
    payment_page.Fill exp date
    payment_page.Fill CVV number
    payment_page.Click on confirm payment button
    success_page.Verify Booking Success Page    ${login_user.email}
