*** Settings ***
Resource        ${CURDIR}/../../resources/import.robot
Variables    ${CURDIR}/../../resources/testdata/web/testdata.yaml
Test Setup      landing_page.Open gother web
Test Teardown    Browser.Close browser

*** Test Cases ***
TC_HOTELS_001 Verify Hotel Booking with Credit Card Payment
    [Tags]      TC_HOTELS_001
    landing_page.Verify system can redirect to landing page
    login_feature.Click on Login/Register button
    login_feature.Click on Phone/Email button
    login_feature.Fill Email    ${login_user.email}
    login_feature.Click on Login button
    login_feature.Fill Password    ${login_user.password}
    login_feature.Click on Login button 
    login_feature.Click on profile icon
    login_feature.Click on My account button
    login_feature.Verify Email    ${login_user.email}
    common_web.Go back to previous page
    landing_page.Click on Accept cookie button
    landing_page.Click on hotels button
    hotel_page.Search Destination    ${hotel_info.destination}
    ${item_count}=    hotel_page.Verify data Destination
    ${index}=    BuiltIn.Evaluate    random.randint(0, ${item_count} - 1)    modules=random
    hotel_page.Search For Hotels    
    ...    ${index}    
    ...    ${hotel_info.booking_dates.checkin}  
    ...    ${hotel_info.booking_dates.checkout}     
    ...    ${hotel_info.guest_room.amount_room}     
    ...    ${hotel_info.guest_room.amount_adult}       
    ...    ${hotel_info.guest_room.amount_children}
    ${hotel_count}=    search_page.Verify system can redirect to search page
    ${random_index}=    BuiltIn.Evaluate    random.randint(0, ${hotel_count} - 1)    modules=random
    ${hotel_name}=    search_page.Select hotel From Search Results    ${random_index}
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
