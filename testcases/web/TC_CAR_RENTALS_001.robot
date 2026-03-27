*** Settings ***
Resource        ${CURDIR}/../../resources/import.robot

Test Setup           common_web.Open gother website and login with email    ${default_account}[email]    ${default_account}[password]
Test Teardown        common_web.Web teardown

*** Test Cases ***
TC_CAR_RENTALS_001 - Verify Car Rental Booking with Credit Card Payment
    [Tags]    Feature:Car Rentals
    header_bar.Click car rentals tab on header bar
    