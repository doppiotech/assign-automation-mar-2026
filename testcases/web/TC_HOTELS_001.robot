*** Settings ***
Resource        ${CURDIR}/../../resources/import.robot

Test Setup           landing_page.Open gother web
Test Teardown        Common.Web teardown

*** Test Cases ***
TC_HOTELS_001 -  Verify Hotel Booking with Credit Card Payment
    [Tags]    Feature:Hotels
    
    