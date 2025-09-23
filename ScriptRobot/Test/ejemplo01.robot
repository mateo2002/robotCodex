*** Settings ***
Library    SeleniumLibrary
Variables    ../../properties.yml
Resource    ../Resources/gestion_encomiendas_keywords.resource
Test Teardown    Cerrar navegador

*** Test Cases ***
Consultar primer resultado de guia desde gestion de encomiendas
    [Documentation]    Caso basado en el escenario definido en CasoDePrueba/Ejemplo1: login, cierre de popup, ingreso a Gestión de encomiendas, navegación a Consultas y Búsqueda de guías y selección de la primera fila de resultados.
    Abrir sesion en SGE    ${usuario1}    ${password}
    Cerrar popup posterior al login si aparece
    Ir al modulo de gestion de encomiendas
    Abrir consultas y busqueda de guias
    Seleccionar primer resultado de la grilla
