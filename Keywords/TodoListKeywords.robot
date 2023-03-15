*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Title Page
    [Arguments]        ${title}
    Title Should Be    ${title}

Verify click add item
    [Arguments]                  ${add-item-btn}
    Element Should Be Visible    ${add-item-btn}
    Click Element                ${add-item-btn}

Verify click todo
    [Arguments]                  ${to-do-btn}
    Element Should Be Visible    ${to-do-btn}
    Click Element                ${to-do-btn}

Verify click completed
    [Arguments]                  ${completed-btn}
    Element Should Be Visible    ${completed-btn}
    Click Element                ${completed-btn}