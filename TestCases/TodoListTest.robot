*** Settings ***
Library    SeleniumLibrary
Library    Screenshot
Resource    ../Keywords/TodoListKeywords.robot
Resource    ../Variables/TodoListVariables.robot
Suite Teardown   Close Browser

    
*** Test Cases ***
01_Test_To_Verify_Can_Click_Add_Item
    [Documentation]             To Verify can click add item tab
    Open Browser                about:blank    browser=chrome
    Go To                       ${URL}
    Verify Title Page           ${TITLE}        
    Verify click add item       ${ADD-ITEM-BTN}
    Capture Page Screenshot     add-item.jpg

02_Test_To_Verify_Can_Click_Todo
    [Documentation]             To Verify can click to do tab
    Open Browser                about:blank    browser=chrome
    Go To                       ${URL}
    Verify Title Page           ${TITLE}     
    Verify click todo           ${TO-DO-BTN}
    Capture Page Screenshot     todo.jpg

03_Test_To_Verify_Can_Click_Completed
    [Documentation]             To Verify can click completed tab
    Open Browser                about:blank    browser=chrome
    Go To                       ${URL}
    Verify Title Page           ${TITLE}     
    Verify click completed      ${COMPLETED-BTN}
    Capture Page Screenshot     completed.jpg

04_Test_To_Verify_Can_Input_Text_And_Click_Add
    [Documentation]             To Verify can input text and can click add button in add item page
    Open Browser                about:blank    browser=chrome
    Go To                       ${URL}
    Verify Title Page           ${TITLE}        
    Verify click add item       ${ADD-ITEM-BTN}
    Input Text                  id:new-task    QA Challange
    Capture Page Screenshot     inputText.jpg
    Click Button                xpath://button
    Capture Page Screenshot     button.jpg

