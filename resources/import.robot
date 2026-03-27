*** Settings ***
Library     Browser    strict=${FALSE}
Library     DebugLibrary
Library     String

#keyword
Resource    ${CURDIR}/../keywords/common/common.robot
Resource    ${CURDIR}/../keywords/pages/home_page.robot
Resource    ${CURDIR}/../keywords/pages/myacc_page.robot

#locators
Resource    ${CURDIR}/../resources/locators/home_page.robot
Resource    ${CURDIR}/../resources/locators/myacc_page.robot

#testdata
Variables   ${CURDIR}/../resources/settings/setting.yaml

