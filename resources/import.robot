*** Settings ***
Library     Browser    strict=${FALSE}
Library     DebugLibrary
Library     String

### Setting ###
Variables   ${CURDIR}/settings/${ENV.lower()}/setting_web.yaml

### Translation ###
Variables   ${CURDIR}/translation/web/${LANG.lower()}.yaml

### Common ###
Resource    ${CURDIR}/../keywords/common/common_web.robot

### Web Page ###
Resource    ${CURDIR}/../keywords/web/pages/nav_bar_page.robot
Resource    ${CURDIR}/../keywords/web/pages/login_signup_page.robot
Resource    ${CURDIR}/../keywords/web/pages/hotels_page.robot
Resource    ${CURDIR}/../keywords/web/pages/calendar_page.robot
Resource    ${CURDIR}/../keywords/web/pages/hotels_search_page.robot
Resource    ${CURDIR}/../keywords/web/pages/hotels_details_page.robot
Resource    ${CURDIR}/../keywords/web/pages/hotels_booking_page.robot
Resource    ${CURDIR}/../keywords/web/pages/bottom_bar_page.robot
Resource    ${CURDIR}/../keywords/web/pages/payment_page.robot
Resource    ${CURDIR}/../keywords/web/pages/booking_success_page.robot

### Web Feature ###

### Web Locator ###
Resource    ${CURDIR}/locators/web/nav_bar_locator.robot
Resource    ${CURDIR}/locators/web/login_signup_locator.robot
Resource    ${CURDIR}/locators/web/hotels_locator.robot
Resource    ${CURDIR}/locators/web/calendar_locator.robot
Resource    ${CURDIR}/locators/web/hotels_search_locator.robot
Resource    ${CURDIR}/locators/web/hotels_details_locator.robot
Resource    ${CURDIR}/locators/web/hotels_booking_locator.robot
Resource    ${CURDIR}/locators/web/bottom_bar_locator.robot
Resource    ${CURDIR}/locators/web/payment_locator.robot
Resource    ${CURDIR}/locators/web/booking_success_locator.robot