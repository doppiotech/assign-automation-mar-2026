*** Settings ***
Library         Browser        strict=${FALSE}
Library         DebugLibrary
Library         String
Library         BuiltIn

#============ Settings ============ 
Variables       ${CURDIR}/settings/setting_web.yaml

#============ Variables ============  
Variables       ${CURDIR}/settings/setting_web.yaml

#============ Translation ============ 
Variables   ${CURDIR}/translation/web/${LANG.lower()}.yaml 

#============ Keywords ============ 
# Common #
Resource    ${CURDIR}/../keywords/common/common_web.robot

# Web Features
Resource    ${CURDIR}/../keywords/web/features/login_feature.robot
Resource    ${CURDIR}/../keywords/web/features/hotels_select_feature.robot
Resource    ${CURDIR}/../keywords/web/features/payment_feature.robot

# Web Pages 
Resource    ${CURDIR}/../keywords/web/pages/landing_page.robot
Resource    ${CURDIR}/../keywords/web/pages/login_popup_page.robot

Resource    ${CURDIR}/../keywords/web/pages/hotels_main_page.robot
Resource    ${CURDIR}/../keywords/web/pages/select_hotels_page.robot
Resource    ${CURDIR}/../keywords/web/pages/booking_hotels.robot

#Payment page 
Resource        ${CURDIR}/../keywords/web/pages/payment_page.robot
Resource        ${CURDIR}/../keywords/web/pages/hotels_payment_success_page.robot 

#============ Locators ============
Resource        ${CURDIR}/../resources/locators/web/home_page_locators.robot
Resource        ${CURDIR}/../resources/locators/web/login_popup_locators.robot

Resource        ${CURDIR}/../resources/locators/web/hotels_main_page_locators.robot
Resource        ${CURDIR}/../resources/locators/web/select_hotels_page_locators.robot
Resource        ${CURDIR}/../resources/locators/web/booking_hotels_locators.robot

#Payment page / Select payment medtod
Resource        ${CURDIR}/../resources/locators/web/payment_page_locators.robot

#Payment for hotels page
Resource        ${CURDIR}/../resources/locators/web/hotels_booking_page_locators.robot
Resource        ${CURDIR}/../resources/locators/web/hotels_payment_success_page_locators.robot


