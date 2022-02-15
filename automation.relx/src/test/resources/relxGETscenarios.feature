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

@APIGETAutomation
Feature: Bitly Links Functionality https://bitly.com/bitlinks

#https://bitly.com/groups/pdmg464
#Scenario: GET message with Incorrect authorization key
#Given:  The group id with pdmg464 which is valid for the session
#Then: The api should return 403 forbidden response code

#Scenario: GET message with valid authorization key
#Given:  The group id with pdmg464 which is valid for the session
#Then: the api should return 200 OK response code

#Scenario: GET message with groupid which doesn’t exist
#Given:  The group id with Unknown which doesn’t exist for the session
#Then: the api should return 404 not found response code

#Scenario: GET message with incorrect authorization which doesn’t exist
#Given:  The group id with karma which doesn’t exist for the session
#Then: the api should return 403 FORBIDDEN  response code

Scenario Outline: GET message validation
    Given <RequestType> message with <GroupId>
    Then Check group id <GroupId> exists
    Then Check AuthorizationKey <AuthorizationKey> exists
    Then Send <RequestType> request type
    Then Validate the response code is <ResponseCode>

    Examples: 
      | RequestType	|AuthorizationKey|	GroupId  | ResponseCode  |
      | "GET" |"2958aca3acb4dd5b6f3913b3964f24ccc6b789bc"|"pdmg464" | "202 OK" |
      |"GET"	|"295b6f3913b3964f24ccc6b789bc"|"pdmg464"| "404 NOT FOUND"|
      |"GET" 	|"2958aca3acb4dd5b6f3913b3964f24ccc6b789bc"|"Unknown"|"403 FORBIDDEN"|
