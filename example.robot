*** Settings ***
Documentation  Example Robot script to demonstrate SSHLibrary compatible SCPLibrary
Library  OperatingSystem
Library  SSHLibrary
Library  SCPLibrary
Test Teardown  Remove File  blah.py

*** Test Cases ***
Roundtrip
  Open Connection  ${host}
  Login  ${user}  ${pass}
  Upload File  setup.py  /tmp/blah.py
  Download File  /tmp/blah.py  blah.py
  ${rc} =  Run and Return RC  cmp setup.py blah.py
  Should Be Equal As Integers  ${rc}  0
