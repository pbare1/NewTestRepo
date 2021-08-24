*** Settings ***
Library           SSHLibrary

*** Test Cases ***
NewTest01
    Log    HELLO GUYS !!!

NewTest02
    Open Connection    172.26.160.150
    Login    debian    debian
    Sleep    2
    List Directory    /home/debian
    sleep    2
    Close Connection

NewTest03
    Open Connection    172.26.160.150
    Login    debian    debian
    Sleep    3
    ${output}=     SSHLibrary.Execute Command    java --version
    Sleep    3
    Close Connection
