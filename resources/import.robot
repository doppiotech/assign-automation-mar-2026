*** Settings ***
Library     Browser    strict=${FALSE}
Library     DebugLibrary
Library     String

### Setting ###
Variables   ${CURDIR}/settings/setting_web.yaml
# Variables   ${CURDIR}/settings/setting_mobile.yaml
Variables   ${CURDIR}/testdata/web/testdata.yaml
Variables   ${CURDIR}/settings/month_index.yaml

### Translation ###
Variables   ${CURDIR}/translation/mobile/${LANG.lower()}.yaml
Variables   ${CURDIR}/translation/web/${LANG.lower()}.yaml

### Web Locators ###
Resource    ${CURDIR}/../resources/locators/web/header_bar_locator.robot
Resource    ${CURDIR}/../resources/locators/web/home_locator.robot
Resource    ${CURDIR}/../resources/locators/web/hotels_locator.robot
Resource    ${CURDIR}/../resources/locators/web/search_result_locator.robot
Resource    ${CURDIR}/../resources/locators/web/hotels_item_locator.robot
Resource    ${CURDIR}/../resources/locators/web/booking_locator.robot
Resource    ${CURDIR}/../resources/locators/web/payment_locator.robot
Resource    ${CURDIR}/../resources/locators/web/payment_success_locator.robot

### Common ###
Resource    ${CURDIR}/../keywords/common/common.robot
Resource    ${CURDIR}/../keywords/common/common_web.robot
Resource    ${CURDIR}/../keywords/common/common_mobile.robot

### Web Page ###
Resource    ${CURDIR}/../keywords/web/pages/landing_page.robot
Resource    ${CURDIR}/../keywords/web/pages/header_bar.robot
Resource    ${CURDIR}/../keywords/web/pages/home_page.robot
Resource    ${CURDIR}/../keywords/web/pages/hotels_page.robot
Resource    ${CURDIR}/../keywords/web/pages/search_result_page.robot
Resource    ${CURDIR}/../keywords/web/pages/hotels_item_page.robot
Resource    ${CURDIR}/../keywords/web/pages/booking_page.robot
Resource    ${CURDIR}/../keywords/web/pages/payment_page.robot
Resource    ${CURDIR}/../keywords/web/pages/payment_success_page.robot

### Web Feature ###
Resource    ${CURDIR}/../keywords/web/features/header_bar_feature.robot
Resource    ${CURDIR}/../keywords/web/features/hotels_feature.robot
Resource    ${CURDIR}/../keywords/web/features/booking_feature.robot
Resource    ${CURDIR}/../keywords/web/features/payment_feature.robot