#Author: your.email@your.domain.com
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
##|4843|Ajaydeep Singh|
      Feature: Acceptance test
       @HRIS
               	Scenario Outline: Login
                Given I launch HRIS url in browser
                When I go to Login panel
                And I enter credentials and click Login button
                When I enter <employee_id> on home page search box
                Then I see <employee_name> on home page search box
                Examples:
     						|employee_id|employee_name|
     					  |4837|Lav Agarwal|
                |4843|Ajaydeep Singh|
