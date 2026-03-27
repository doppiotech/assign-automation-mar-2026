*** Settings ***
Library    Browser    strict=${FALSE}
Library    DebugLibrary
Library    String

#keyword
Resource    ${CURDIR}/../keywords/common/common.robot
Resource    ${CURDIR}/../keywords/pages/home_page.robot    

#locators
# แก้ไข: เพิ่มโฟลเดอร์ /web/ เข้าไปตามโครงสร้างจริงใน Explorer
Resource    ${CURDIR}/locators/home_page.robot
Resource    ${CURDIR}/locators/myacc_page.robot

#testdata
Variables    ${CURDIR}/settings/setting.yaml