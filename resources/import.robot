*** Settings ***
Library    Browser    strict=${FALSE}
Library    DebugLibrary
Library    String

#keyword
Resource    ${CURDIR}/../keywords/common/common.robot
Resource    ${CURDIR}/../keywords/pages/home_page.robot    
Resource    ${CURDIR}/../keywords/pages/search_result.robot
Resource    ${CURDIR}/../keywords/pages/hotel_detail.robot
Resource    ${CURDIR}/../keywords/pages/booking_page.robot
Resource    ${CURDIR}/../keywords/pages/payment_page.robot
Resource    ${CURDIR}/../keywords/pages/successful_page.robot


#locators
Resource    ${CURDIR}/locators/home_page.robot
Resource    ${CURDIR}/locators/search_result.robot
Resource    ${CURDIR}/locators/hotel_detail.robot
Resource    ${CURDIR}/locators/booking_page.robot
Resource    ${CURDIR}/locators/payment_page.robot
Resource    ${CURDIR}/locators/successful_page.robot


#testdata
Variables    ${CURDIR}/settings/setting.yaml
Variables    ${CURDIR}/translation/${LANG.lower()}.yaml
