*** Settings ***
Library     Browser    strict=${FALSE}
Library     DebugLibrary
Library     String

### Setting ###
Variables   ${CURDIR}/settings/setting_web.yaml

### Common ###
Resource    ${CURDIR}/../keywords/common/common.robot

### Web Page ###
Resource    ${CURDIR}/../keywords/web/pages/landing_page.robot

