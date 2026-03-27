*** Settings ***
Library     Browser    strict=${FALSE}
Library     DebugLibrary
Library     String

### Setting ###
Variables   ${CURDIR}/settings/setting_web.yaml
# Variables   ${CURDIR}/settings/setting_mobile.yaml

### Translation ###
Variables   ${CURDIR}/translation/mobile/${LANG.lower()}.yaml
Variables   ${CURDIR}/translation/web/${LANG.lower()}.yaml

### Common ###
Resource    ${CURDIR}/../keywords/common/common.robot
Resource    ${CURDIR}/../keywords/common/common_web.robot
Resource    ${CURDIR}/../keywords/common/common_mobile.robot

### Web Page ###
Resource    ${CURDIR}/../keywords/web/pages/landing_page.robot

### Web Feature ###
Resource    ${CURDIR}/../keywords/web/features/login_feature.robot

### Locator ###
Resource    ${CURDIR}/locators/web/landing_locator.robot
