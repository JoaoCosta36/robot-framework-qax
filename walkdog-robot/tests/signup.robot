*** Settings ***
Documentation       Suite de testes de registo de dog walker

Library             Browser
Resource    ../resources/base.resource


*** Test Cases ***
Deve poder registar um novo dog walker
    ${name}    Set Variable    João Costa
    ${email}    Set Variable    jcosta@sapo.pt
    ${cpf}    Set Variable    00000014141
    ${cep}    Set Variable    04534011
    ${addressNumber}    Set Variable    1000
    ${addressStreet}    Set Variable    Rua Joaquim Floriano
    ${addressDistrict}    Set Variable    Itaim Bibi
    ${addressCityUf}    Set Variable    São Paulo/SP
    ${addressDetails}    Set Variable    Apto 28
    ${cnh}    Set Variable    toretto.jpg
    Go to signup page
    Fill signup form
    ...    ${name}
    ...    ${email}
    ...    ${cpf}
    ...    ${cep}
    ...    ${addressStreet}
    ...    ${addressDistrict}
    ...    ${addressCityUf}
    ...    ${addressNumber}
    ...    ${addressDetails}
    ...    ${cnh}
    Submit signup form
    Popup should be    Recebemos o seu cadastro e em breve retornaremos o contato.

