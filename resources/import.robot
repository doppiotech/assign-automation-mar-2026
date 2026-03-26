*** Settings ***
Library         Browser    
Library         DebugLibrary
Library         String
Library         BuiltIn

#====== Settings ====== 
Variables       ${CURDIR}/settings/setting_web.yaml

#====== Variables ======  
Variables       ${CURDIR}/settings/setting_web.yaml

#====== Translation ====== 
Variables   ${CURDIR}/translation/web/${LANG.lower()}.yaml 

#====== Keywords ====== 
# Common #
Resource    ${CURDIR}/../keywords/common/common_web.robot
# Web #
Resource    ${CURDIR}/../keywords/web/pages/landing_page.robot
# Web Features
# Web Pages 

#====== Locators ======