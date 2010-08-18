Feature: a place to start

  In order to get started using Missed Links
  As a web user
  I want a home page to visit

  Scenario: visiting the home page
    Given I have a web browser 
    When I point my browser to the home page
    Then I should see "Welcome to Missed Links!"
