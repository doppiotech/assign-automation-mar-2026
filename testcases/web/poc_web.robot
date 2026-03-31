*** Settings ***
Resource        ${CURDIR}/../../resources/import.robot
Variables       ${CURDIR}/../../resources/testdata/uat/web/testdata.yaml

Test Setup      landing_page.Open gother web

*** Test Cases ***
TC_WEB_POC_001
    [Tags]      TC_WEB_POC_001
    landing_page.Click signin button
    signin_page.Click signin with email or phone number
    signin_page.Input email                    ${TC_01.email}
    signin_page.Click login button
    signin_page.Input password                 ${TC_01.password}
    sleep   0.5s
    signin_page.Click confirm login button
    landing_page.Click hotels tab
    common_web.Select accept all cookie
    landing_page.Search and select city         ${TC_01.city}
    landing_page.Select checkin date            ${TC_01.checkin_date}
    landing_page.Select checkout date           ${TC_01.checkout_date}
    landing_page.Click queste and room button
    landing_page.Click increase gueste          ${TC_01.room_click}     ${TC_01.adults_click}    ${TC_01.children_click}
    landing_page.Click confirm queste and rooms button
    landing_page.Click search button
    hotel_page.Select hotel by name             ${TC_01.hotelname}
    common_web.Switch to new tab
    hotel_page.Select a room and click book now
    sleep  5s
    booking_page.Click confirm booking
    sleep  3s
    creditcard_page.Input credit card number    ${TC_01.cardnumber}
    creditcard_page.Input holder name           ${TC_01.cardname}
    creditcard_page.Input expire date card      ${TC_01.expire_date}
    creditcard_page.Input cvv card              ${TC_01.cvv}
    creditcard_page.Click accept payment
    creditcard_page.Click confirm payment
    success_page.Verify booking success
