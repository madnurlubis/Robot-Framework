***Settings***
Documentation   Template robot main suite.
Library         Collections
Library         RPA.Browser
Resource        keywords.robot
*** Variables ***
${Username}            Admin
${Password}            admin123
${logout}               Logout
${ROBOT}    ${Username} ${Password}

***Keywords***
Login
    [Arguments]
    Go To   %{C_URL}
    Maximize Browser Window
    Wait Until Element Is Visible   xpath:/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input
    Click Element   xpath:/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input
    Press Keys  NONE    ${Username}
    Sleep   1000ms
    Press Keys  NONE    TAB
    Sleep   1000ms
    Press Keys  NONE    ${Password}
    Sleep   600ms
    Click Element   xpath:/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Sleep   1000ms

Leave Menu
    Wait Until Page Contains Element    xpath:/html/body/div/div[1]/div[2]/div[2]
    Click Element    xpath:/html/body/div/div[1]/div[1]/aside/nav/div[2]/ul/li[3]/a/span
    Sleep   500ms

Cancel Leave
    Wait Until Page Contains Element    xpath:/html/body/div/div[1]/div[2]/div[2]/div/div[2]/div[1]
    Sleep   300ms
    Click Element    xpath:/html/body/div/div[1]/div[2]/div[2]/div/div[2]/div[2]/div/div[2]/div[1]/div/div[9]/div/li/button/i  
    Sleep   300ms
    Click Element    xpath:/html/body/div/div[1]/div[2]/div[2]/div/div[2]/div[2]/div/div/div[1]/div/div/div[2]/div/div/li/ul/li[4]/p
    
    Sleep   500ms

***Tasks***
Open Browser
    Open Available Browser
Login
    Login
Click Leave Menu
    Leave Menu
Click Cancel
    Cancel Leave


