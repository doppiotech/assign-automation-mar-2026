*** Keywords ***
Hotel_001
    landing_page.Verify homepage is displayed
    common_web.Accept cookie
    landing_page.Click login button in homepage
    landing_page.Verify login with email or mobile button enabled
    landing_page.Click login with email or mobile button
    landing_page.Verify email input box enabled
    landing_page.Fill in email    ${login_list['email']}
    landing_page.Verify login button enabled
    landing_page.Click login button
    landing_page.Verify password input box enabled
    landing_page.Fill in password    ${login_list['password']}
    landing_page.Verify login button enabled
    landing_page.Click login button
    landing_page.Verify login successful
    landing_page.Click to hotels page
    hotels_page.Verify hotels page is displayed
    Click for select destination
    # DEBUG
    Verify destination displayed
    Click for select first option
    Click check in button
    # Get DateTime ffff
    # Automate Stay Dates
    # Navigate To Correct Month
    hotels_page.Get all infomation
    hotels_page.Click search button
    result_page.Verify result page is displayed
    result_page.Verify infomation between pages
    # Scroll To Load More Rooms
    # Room count
    result_page.Select hotel from the search results
    result_page.Verify result after select hotel is displayed
    result_page.Select a room and click book now
    booking_page.Verify summary page is displayed with selected hotel and room details
    booking_page.Chose sex
    booking_page.Fill in firstname    ${contact_information['first_name']}
    booking_page.Fill in lastname    ${contact_information['last_name']}
    booking_page.Fill in email    ${contact_information['email']}
    booking_page.Fill in mobile number    ${contact_information['mobile_number']}
    booking_page.Clik confirm booking
    Verify payment page is displayed
    payment_page.Select credit card