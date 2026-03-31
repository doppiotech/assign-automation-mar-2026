*** Settings ***
Library    Browser    strict=${FALSE}
Library    DebugLibrary
Library    String
Library    DateTime

### Setting ###
Variables   ${CURDIR}/settings/${ENV.lower()}/setting_web.yaml
# Variables   ${CURDIR}/settings/setting_mobile.yaml

### Test data ###
Variables    ${CURDIR}/testdata/uat/web/testdata.yaml

### Translation ###
Variables   ${CURDIR}/translation/mobile/${LANG.lower()}.yaml
Variables   ${CURDIR}/translation/web/${LANG.lower()}.yaml

### Common ###
Resource    ${CURDIR}/../keywords/common/common.robot
Resource    ${CURDIR}/../keywords/common/common_web.robot
Resource    ${CURDIR}/../keywords/common/common_mobile.robot

### Locators ###
Resource    ${CURDIR}/locators/web/mock_locator.robot

### Web Page ###
Resource    ${CURDIR}/../keywords/web/pages/landing_page.robot
Resource    ${CURDIR}/../keywords/web/pages/hotels_page.robot
Resource    ${CURDIR}/../keywords/web/pages/result_page.robot
Resource    ${CURDIR}/../keywords/web/pages/booking_page.robot
Resource    ${CURDIR}/../keywords/web/pages/payment_page.robot

### Web Feature ###
Resource    ${CURDIR}/../keywords/web/features/hotal_features.robot
