*** Settings ***
Documentation        Suite de testes da home page

Library    Browser

*** Test Cases ***
Home page deve estar online
    New Browser     chromium
    New Page    https://walkdog.vercel.app
    

    Get Text    h1    equals    Cuidado e diversão em cada passo

    Take Screenshot

    
