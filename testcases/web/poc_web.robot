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
    landing_page.Click on hotels button
    hotel_page.Search Destination
    ${item_count}=    hotel_page.Verify data Destination
    hotel_page.Select Random Destination From Search Results    ${item_count}
    hotel_page.Fill In Checkin And Checkout Dates
    hotel_page.Setting Guests And Rooms
    # Debug
    log to console    hello
