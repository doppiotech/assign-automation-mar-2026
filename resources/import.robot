*** Settings ***
Library     Browser    strict=${FALSE}
Library     DebugLibrary
Library     String
Library     DateTime

### Setting ###
Variables   ${CURDIR}/settings/setting_web.yaml
# Variables   ${CURDIR}/settings/setting_mobile.yaml

### Translation ###
# Variables   ${CURDIR}/translation/mobile/${LANG.lower()}.yaml
Variables   ${CURDIR}/translation/web/${LANG.lower()}.yaml

### Common ###
Resource    ${CURDIR}/../keywords/common/common.robot
Resource    ${CURDIR}/../keywords/common/common_web.robot
Resource    ${CURDIR}/../keywords/common/common_mobile.robot

### Web Page ###
Resource    ${CURDIR}/../keywords/web/pages/landing_page.robot
Resource    ${CURDIR}/../keywords/web/pages/hotel_page.robot

### Web Feature ###
Resource    ${CURDIR}/../keywords/web/features/login_feature.robot
Resource    ${CURDIR}/../keywords/web/features/calendar_feature.robot
Resource    ${CURDIR}/../keywords/web/features/guest_room_feature.robot

### Locator ###
Resource    ${CURDIR}/locators/web/landing_locator.robot
Resource    ${CURDIR}/locators/web/hotel_locator.robot
