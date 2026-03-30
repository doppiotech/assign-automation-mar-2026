*** Settings ***
Resource        ${CURDIR}/../../resources/import.robot

Test Setup           common_web.Open gother website and login with email    ${default_account}[email]    ${default_account}[password]
Test Teardown        common_web.Web teardown

*** Test Cases ***
TC_CAR_RENTALS_001 - Verify Car Rental Booking with Credit Card Payment
    [Tags]    Feature:Car Rentals
    header_bar.Click car rentals tab on header bar
    car_rentals_page.Check if car rentals display
    car_rentals_page.Select self-drive type
    car_rentals_feature.Search pickup location by typing                    ${TC_CAR_RENTALS_001}[pick_up_location]
    car_rentals_page.Click pickup date
    common_feature.Find today date on calendar and select today date
    common_feature.Select period from selected date to target days          ${TC_CAR_RENTALS_001}[days_to_rent]
    car_rentals_feature.Select pickup time                                  ${TC_CAR_RENTALS_001}[pick_up_time]
    car_rentals_feature.Select dropoff time                                 ${TC_CAR_RENTALS_001}[drop_off_time]
    car_rentals_page.Click search button
    car_rentals_search_result_page.Check if search result page display
    car_rentals_search_result_page.Select car by index from search result   ${TC_CAR_RENTALS_001}[car_list_index]
    car_rentals_search_result_page.Click select button by index             ${TC_CAR_RENTALS_001}[car_option_index]