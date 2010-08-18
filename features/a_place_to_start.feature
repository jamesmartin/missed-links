Feature: a place to start

  In order to get started using Missed Links
  As a web user
  I want a home page to visit

  Scenario: visiting the home page
    Given I have a web browser 
    When I point my browser to the home page
    Then I should see "Welcome to Missed Links!"

  Scenario: a 'login to Twitter' form
    Given I have a web browser
    And I am not authenticated with Twitter
    When I point my browser to the home page
    Then I should see an input for Twitter username
    And I should see an input for Twitter password
    And I should see a "Login" button
