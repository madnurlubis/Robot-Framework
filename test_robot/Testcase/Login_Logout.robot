***Settings***
Documentation   Template robot main suite.
Library         Collections
Library         RPA.Browser
Library         RPA.Excel.Files
Resource        keywords.robot
*** Variables ***
${login_url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}             chrome
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

Input Username
    Click Element   xpath:/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input
    Press Keys  NONE    ${Username}
    Sleep   1000ms

Input Password
    Press Keys  NONE    TAB
    Sleep   1000ms
    Press Keys  NONE    ${Password}
    Sleep   600ms

Submit 
    Click Element   xpath:/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Sleep   500ms

Click Profile Pict
    Wait Until Page Contains Element    xpath:/html/body/div/div[1]/div[1]/header/div[1]/div[2]/ul/li/span
    Click Element    xpath:/html/body/div/div[1]/div[1]/header/div[1]/div[2]/ul/li/span/i
    Sleep   300ms
Click Logout
    Click Element    xpath:/html/body/div/div[1]/div[1]/header/div[1]/div[2]/ul/li/ul/li[4]/a
    Sleep   1000ms

***Tasks***
Open Browser
    Open Available Browser
Open Link 
    Login
Input Username    
    Input Username
Input Password
    Input Password
Submit
    Submit
Click Profile Pict
    Click Profile Pict
Click Logout
    Click Logout

