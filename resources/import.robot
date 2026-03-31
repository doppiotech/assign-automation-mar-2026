*** Settings ***
Library     Browser    strict=${FALSE}
Library     DebugLibrary
Library     String
Library     DateTime

### Setting ###
Variables   ${CURDIR}/settings/setting_web.yaml

### Translation ###
Variables   ${CURDIR}/translation/web/${LANG.lower()}.yaml

### Common ###
Resource    ${CURDIR}/../keywords/common/common_web.robot

### Web Page ###
Resource    ${CURDIR}/../keywords/web/pages/landing_page.robot
Resource    ${CURDIR}/../keywords/web/pages/hotel_page.robot
Resource    ${CURDIR}/../keywords/web/pages/search_page.robot
Resource    ${CURDIR}/../keywords/web/pages/hotel_information_page.robot
Resource    ${CURDIR}/../keywords/web/pages/booking_page.robot
Resource    ${CURDIR}/../keywords/web/pages/payment_page.robot
Resource    ${CURDIR}/../keywords/web/pages/success_page.robot

### Web Feature ###
Resource    ${CURDIR}/../keywords/web/features/login_feature.robot
Resource    ${CURDIR}/../keywords/web/features/calendar_feature.robot
Resource    ${CURDIR}/../keywords/web/features/guest_room_feature.robot

### Locator ###
Resource    ${CURDIR}/locators/web/landing_locator.robot
Resource    ${CURDIR}/locators/web/hotel_locator.robot
Resource    ${CURDIR}/locators/web/search_locator.robot
Resource    ${CURDIR}/locators/web/hotel_information_locator.robot
Resource    ${CURDIR}/locators/web/booking_locator.robot
Resource    ${CURDIR}/locators/web/payment_locator.robot
Resource    ${CURDIR}/locators/web/success_locator.robot

