*** Settings ***
Library     Browser
Library     DebugLibrary
Library     String

### Setting ###
Variables   ${CURDIR}/settings/setting_web.yaml


### Translation ###
Variables   ${CURDIR}/translation/web/${LANG.lower()}.yaml

### Common ###
Resource    ${CURDIR}/../keywords/common/common.robot
Resource    ${CURDIR}/../keywords/common/common_web.robot


### Web Page ###
Resource    ${CURDIR}/../keywords/web/pages/landing_page.robot

### Web Feature ###
