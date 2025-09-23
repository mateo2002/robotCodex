*** Variables ***
${LOGIN_USERNAME_INPUT}    id:username
${LOGIN_PASSWORD_INPUT}    id:password
${LOGIN_SUBMIT_BUTTON}     xpath=//*[@id="kc-login"]
${POST_LOGIN_POPUP_BUTTON}    xpath=(//div[contains(@class,'modal') or contains(@class,'MuiDialog-root')]//button[normalize-space()='Aceptar' or normalize-space()='Cerrar' or normalize-space()='OK' or normalize-space()='Ok'])[1]
${GESTION_ENCOMIENDAS_BUTTON}    xpath=(//a[.//span[contains(normalize-space(),'Gestión de encomiendas')] or contains(normalize-space(),'Gestión de encomiendas')] | //button[.//span[contains(normalize-space(),'Gestión de encomiendas')] or contains(normalize-space(),'Gestión de encomiendas')])[1]
${MENU_CONSULTAS_GUIAS_LINK}    xpath=(//a[.//span[normalize-space()='Consultas y Búsqueda de guías'] or normalize-space()='Consultas y Búsqueda de guías'] | //button[.//span[normalize-space()='Consultas y Búsqueda de guías'] or normalize-space()='Consultas y Búsqueda de guías'])[1]
${GRID_FIRST_RESULT_ROW}    xpath=(//table[.//tbody]//tbody//tr[1])[1]
