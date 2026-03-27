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

# Web Pages 
Resource    ${CURDIR}/../keywords/web/pages/landing_page.robot
Resource    ${CURDIR}/../keywords/web/pages/login_popup_page.robot

Resource    ${CURDIR}/../keywords/web/pages/hotels_main_page.robot
Resource    ${CURDIR}/../keywords/web/pages/search_hotels_page.robot
Resource    ${CURDIR}/../keywords/web/pages/book_now_hotels.robot

Resource    ${CURDIR}/../keywords/web/pages/car_rentals_main_page.robot
Resource    ${CURDIR}/../keywords/web/pages/search_car_rentals_page.robot
Resource    ${CURDIR}/../keywords/web/pages/book_now_car_rentals.robot

#Payment page 
Resource        ${CURDIR}/../keywords/web/pages/payment_page.robot

#Payment for hotels page
Resource        ${CURDIR}/../keywords/web/pages/car_rentals_payment/car_rentals_booking_page.robot

#Payment for Car rentals page
Resource        ${CURDIR}/../keywords/web/pages/hotels_payment/hotels_booking_page.robot

#============ Locators ============
Resource        ${CURDIR}/../resources/locators/web/home_page_locators.robot
Resource        ${CURDIR}/../resources/locators/web/login_popup_locators.robot

Resource        ${CURDIR}/../resources/locators/web/hotels_main_page_locators.robot
Resource        ${CURDIR}/../resources/locators/web/search_hotels_page_locators.robot
Resource        ${CURDIR}/../resources/locators/web/book_now_hotels_locators.robot

Resource        ${CURDIR}/../resources/locators/web/car_rentals_main_page_locators.robot
Resource        ${CURDIR}/../resources/locators/web/search_car_rentals_page_locators.robot
Resource        ${CURDIR}/../resources/locators/web/book_now_car_rentals_locators.robot

#Payment page / Select payment medtod
Resource        ${CURDIR}/../resources/locators/web/payment_page_locators.robot

#Payment for hotels page
Resource        ${CURDIR}/../resources/locators/web/hotels_payment/hotels_booking_page_locators.robot
Resource        ${CURDIR}/../resources/locators/web/hotels_payment/hotels_payment_success_page_locators.robot

#Payment for Car rentals page
Resource        ${CURDIR}/../resources/locators/web/car_rentals_payment/car_rentals_booking_page_locators.robot
Resource        ${CURDIR}/../resources/locators/web/car_rentals_payment/car_rentals_payment_success_page_locators.robot
