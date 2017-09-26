# Feature: Apply
#   As a user
#   I want to be approved for a monthly payment
#   So that I can buy a vehicle

#   Scenario: An eligible user with low income and bad credit
#     Given I am a user with a device
#     When I submit with low income and bad credit
#     Then I should have a low income rejected application

#   Scenario: An eligible user with low income but good credit
#     Given I am a user with a device
#     When I submit with low income and good credit
#     Then I should have a approved application
  

#   Scenario: An eligible user with bad credit
#     Given I am a user with a device
#     When I submit with bad credit
#     Then I should have a rejected application with bad credit


#   Scenario: An eligible user that is at high risk for fraud 
#     Given I am a user with a device
#     When I submit with high risk
#     Then I should have a processing request application


#   Scenario: An eligible user that is at high risk for fraud with bad credit
#     Given I am a user with a device
#     When I submit with high risk and bad credit
#     Then I should have a high risk rejected application


#   Scenario: An eligible user with a no hit credit report and a valid SSN
#     Given I am a user with a device
#     When I submit with no credit with a valid ssn
#     Then I should have a approved application after entering ssn


#   Scenario: An eligible user with a no hit credit report and a invalid SSN
#     Given I am a user with a device
#     When I submit with no credit with an invalid ssn
#     Then I should have a rejected application after entering ssn