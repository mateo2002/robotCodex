*** Settings ***
Library    SeleniumLibrary
Resource   ../PageObject/gestion_encomiendas_page.resource

*** Keywords ***
Abrir sesion en SGE
    [Arguments]    ${usuario}    ${contrasena}
    ${browser_to_use}=    Set Variable If    '${Browser}' == 'Chrome'    headlesschrome    ${Browser}
    Open Browser    ${url}    ${browser_to_use}
    Set Selenium Implicit Wait    5 seconds
    Wait Until Element Is Visible    ${LOGIN_USERNAME_INPUT}    20 seconds
    Input Text    ${LOGIN_USERNAME_INPUT}    ${usuario}
    Input Password    ${LOGIN_PASSWORD_INPUT}    ${contrasena}
    Click Button    ${LOGIN_SUBMIT_BUTTON}
    Wait Until Page Contains Element    ${GESTION_ENCOMIENDAS_BUTTON}    30 seconds

Cerrar popup posterior al login si aparece
    ${status}    ${message}=    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${POST_LOGIN_POPUP_BUTTON}    8 seconds
    Run Keyword If    '${status}' == 'PASS'    Click Element    ${POST_LOGIN_POPUP_BUTTON}
    Run Keyword If    '${status}' == 'PASS'    Sleep    1 second

Ir al modulo de gestion de encomiendas
    Wait Until Element Is Visible    ${GESTION_ENCOMIENDAS_BUTTON}    20 seconds
    Click Element    ${GESTION_ENCOMIENDAS_BUTTON}

Abrir consultas y busqueda de guias
    Wait Until Element Is Visible    ${MENU_CONSULTAS_GUIAS_LINK}    25 seconds
    Click Element    ${MENU_CONSULTAS_GUIAS_LINK}

Seleccionar primer resultado de la grilla
    Wait Until Element Is Visible    ${GRID_FIRST_RESULT_ROW}    25 seconds
    Click Element    ${GRID_FIRST_RESULT_ROW}

Cerrar navegador
    Close All Browsers
