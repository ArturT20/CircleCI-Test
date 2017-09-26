Feature: Build Verification
  As a end-to-end tester
  I want to ensure the app is usable from end to end
  So that I can ensure a qualifying deployment

  Scenario: A user is able to checkout from onboarding to picking up car
    Given I am a user, superuser and a dealer using the app on a simulator
    When I run through the app from onboarding to picking up the car
    Then I should have a car