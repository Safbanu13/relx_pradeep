#Author: pdmg464@gmail.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template

@APIPostAutomation
Feature: Bitly Links Functionality POST https://bitly.com/groups/pdmg464

Scenario:  Post message when valid group id 
Given:  The group id is valid
Then: the api should return 200 OK response code

Scenario:  Post message when invalid group id 
Given:  The group id is invalid
Then: the api should return 500 INTERNAL ERROR code

Scenario:  Post message with valid bearer token id 
Given:  The bearer token id is valid
Then: the api should return 200 OK response code

Scenario:  Post message with invalid bearer token id 
Given:  The bearer token id is invalid
Then: the api should return BAD REQUEST response code

Scenario: Post message when url is left empty
Given: The group id with pdmg467 is valid for the session
Then: Check that when url is left empty
Then: the api should return 400 BAD REQUEST response code