*** Comments ***
 *** Settings ***
Documentation    Test importing resource and variable files.
Resource    robotframework_tutorial/resources/common_keywords.resource
Variables    robotframework_tutorial/resources/my_variables.py
Variables    robotframework_tutorial/resources/example.yaml


*** Test Cases ***
Create File
    [Documentation]    Test keyword 'Create File With Current Date Information'.

    Create File With Current Date Information    ${CURDIR}/file.txt

Print Date Format
    [Documentation]    Print variable from resource file.

    Log To Console    ${DATE_FORMAT}

Print Dynamic Variables
    Log To Console    ${USER}
    Log To Console    ${RANDOM_INT}
    Log To Console    ${CURRENT_TIME}
    Log To Console    ${AFTERNOON}

Print YAML Variables
    Log To Console    ${MESSAGE}
    Log To Console    ${ANIMALS}
