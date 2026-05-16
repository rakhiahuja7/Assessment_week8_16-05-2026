*** Settings ***
Library  SeleniumLibrary
Resource  ../../locators/login_locator.robot

*** Keywords ***
Close Image Popup
    Sleep    5s
    [Documentation]    Closes the shadow DOM popup using JS
    Wait Until Keyword Succeeds    10s    1s    Shadow Click Popup

Shadow Click Popup
    ${is_visible}=    Execute Javascript
    ...    return document.querySelector('ct-web-popup-imageonly') !== null
    IF    ${is_visible}
        Execute Javascript
        ...    document.querySelector('ct-web-popup-imageonly').shadowRoot.querySelector('#close').click()
    END
Login With Mobile Number
    Wait Until Element Is Visible    ${login_button}    10s
    Click Element    ${login_button}
    Sleep    2s
    Wait Until Element Is Visible    ${mob}    10s
    Input Text  ${mob}  ${USER_EMAIL}
    Wait Until Element Is Visible    ${go_to_otp}    10s
    Click Button  ${go_to_otp}
    Sleep    20s
    Click Button  ${verify}
    Sleep    15s