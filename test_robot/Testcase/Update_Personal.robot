***Settings***
Documentation   Template robot main suite.
Library         Collections
Library         RPA.Browser
#Library         SeleniumLibrary
Resource        keywords.robot
*** Variables ***
#${login_url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
#${BROWSER}             chrome
${Username}            Admin
${Password}            admin123
${logout}               Logout
${ROBOT}    ${Username} ${Password}
${Name}		Paul  Collings
${LeaveType}	CAN - Personal
${FromDate}	2024-01-17
${ToDate}	2024-01-17
${Duration}	Full Day
${Comment}	Assign Leave

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
Assign Leave
    Wait Until Page Contains Element    xpath:/html/body/div/div[1]/div[1]/header/div[2]/nav/ul/li[7]/a
    Click Element    xpath:/html/body/div/div[1]/div[1]/header/div[2]/nav/ul/li[7]/a
    Sleep   500ms
Name 
    Wait Until Page Contains Element    xpath:/html/body/div/div[1]/div[2]/div[2]/div/div
    Sleep   400ms
    Click Element   xpath:/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div/div/div[2]/div/div/input
    Press Keys  NONE    ${Name}
    Sleep   300ms

Type   
    Click Element   xpath:/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[1]/div/div[2]/div/div/div[1]
    Press Keys  NONE    ${LeaveType}
    Sleep   300ms
FromDate   
    Press Keys  NONE    TAB
    Sleep   400ms
    Press Keys  NONE    ${FromDate}
    Sleep   300ms
ToDateDate   
    Press Keys  NONE    TAB
    Press Keys  NONE    ${ToDate}
    Sleep   300ms

Duration   
    Click Element   xpath:/html/body/div/div[1]/div[2]/div[2]/div/div[2]/form/div[4]/div/div/div/div[2]/div/div/div[1]
    Press Keys  NONE    ${Duration}
    Sleep   300ms
Comment 
    Click Element   xpath:/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[5]/div/div/div/div[2]/textarea
    Press Keys  NONE    ${Comment}
    Sleep   300ms

Assign
    Click Element   xpath:/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[6]/button
    Sleep   1000ms

***Tasks***
Open Browser
    Open Available Browser
Login
    Login
Click Leave Menu
    Leave Menu
Click Assign Leave
    Assign Leave
Input Name
    Name    
Input Type 
    Type 
Input FromDate   
   FromDate
Input ToDateDate   
    ToDateDate
#Input PartialDate   
    #PartialDate
Input Duration   
    Duration 
Input Comment 
    Comment 
Submit Assign
    Assign


