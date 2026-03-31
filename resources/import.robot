*** Settings ***
Library     Browser    strict=${FALSE}
Library     DebugLibrary
Library     String

### Setting ###
Variables   ${CURDIR}/settings/${ENV.lower()}/setting_web.yaml

### Translation ###
Variables   ${CURDIR}/translation/mobile/${LANG.lower()}.yaml
Variables   ${CURDIR}/translation/web/${LANG.lower()}.yaml

### Common ###
Resource    ${CURDIR}/../keywords/common/common.robot
Resource    ${CURDIR}/../keywords/common/common_web.robot
Resource    ${CURDIR}/../keywords/common/common_mobile.robot
Resource    ${CURDIR}/../keywords/common/common_web_locator.robot

### Web Page ###
Resource    ${CURDIR}/../keywords/web/pages/landing_page.robot
Resource    ${CURDIR}/../keywords/web/pages/signin_page.robot
Resource    ${CURDIR}/../keywords/web/pages/hotel_page.robot
Resource    ${CURDIR}/../keywords/web/pages/booking_page.robot
Resource    ${CURDIR}/../keywords/web/pages/creditcard_page.robot
Resource    ${CURDIR}/../keywords/web/pages/success_page.robot

### Web Feature ###

### Web Locators ###
Resource    ${CURDIR}/../resources/locators/web/landing_locator.robot
Resource    ${CURDIR}/../resources/locators/web/signin_locator.robot
Resource    ${CURDIR}/../resources/locators/web/hotel_locator.robot
Resource    ${CURDIR}/../resources/locators/web/booking_locator.robot
Resource    ${CURDIR}/../resources/locators/web/creditcard_locator.robot
Resource    ${CURDIR}/../resources/locators/web/success_locator.robot