*** Settings ***
Library        SeleniumLibrary
Variables        ../../properties.yml
Resource     ../../resources/gestionEncomiendaKeyword.robot
#Resource    ../pageObjects/menu.yml
*** Variables ***
${persona}  HUBER
${ELEMENT}

*** Test Cases ***

LoginTest
    open browser        ${url}    ${Browser}
    input text  id:username        ${us20}
    input text  id:password     ${password2}
    click element  xpath://*[@id="kc-login"]
    Logueo a la aplicacion DAC y gestion de encomienda



*** Keywords ***
Logueo a la aplicacion DAC y gestion de encomienda
    Maximize Browser Window
    El usuario quiere seleccionar la opcion gestion de encomiendas
    #El usuario hace click en cerrar alert "componente de impresion faltante" si esta presente
    El usuario le da click al boton crear un nuevo despacho
    El usuario selecciona remitente
    El usuario agrega guia de despacho
    Selecciona tipo de guia
    Selecciona tipo de envio
    El usuario selecciona tipo de entrega
    El usuario selecciona agencia retiro
    Y el usuario selecciona destinatario
    Y el usuario hace click en boton guardar
    #Sleep    5
    Y el usuario hace click en boton confirmar
    #Sleep    5
    Y el usuario hace click en boton Realizar pago
    #Sleep    5
    Y el paquete queda despachado