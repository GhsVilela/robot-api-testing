*** Settings ***
Documentation   Sample project that uses petstore api for basic knowledge of api testing using robot

Library         REST    https://petstore.swagger.io/v2
Library         String
Library         JSONLibrary

Suite Setup     Initialize Variables

*** Keywords ***
Initialize Variables
    ${random_username}    Generate Random String    8    [LOWER]
    ${json}	            Load Json From File	      ./JSON/user.json
    ${json_updated}	    Update Value To Json	${json}	  $..username   ${random_username}
    Set global variable  ${random_username}
    Set global variable  ${json_updated}

*** Test Cases ***
POST create user
    Output      ${random_username}
    Output      ${json_updated}
    POST        /user                    ${json_updated}
    Integer     response status           200
    [Teardown]  Output  response body

GET retrieve created user
    GET         /user/${random_username}
    Integer     response status           200
    Object      response body
    String      response body username    ${random_username}
    [Teardown]  Output  response body
