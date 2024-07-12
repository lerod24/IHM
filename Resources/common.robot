*** Settings ***
Library  seleniumlibrary
Resource  variables.robot
*** Keywords ***
Begin Web Test
    Open browser  about:blank  ${BROWSER}
    Maximize Browser Window

End Web Test
    close Browser
