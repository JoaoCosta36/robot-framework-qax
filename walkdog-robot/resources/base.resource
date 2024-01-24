*** Settings ***
Documentation    Arquivo principal do projeto

Library    Browser
Resource   actions/signup.resource

*** Keywords ***

Start session
    Go To    https://walkdog.vercel.app/signup

    Wait For Elements State    css=h1 >>text=Cuidado e diversão em cada passo    visible