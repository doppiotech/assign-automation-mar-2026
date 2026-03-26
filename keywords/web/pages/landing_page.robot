*** Keywords ***
Open gother web
    [Arguments]        ${url}    ${default_browser}        
    common_web.Open web browser by url    url=${gother_web.url.${LANG.lower()}}
