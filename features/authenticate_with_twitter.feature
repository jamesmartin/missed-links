Feature: authenticating with a Twitter account

  In order to grant access to my Twitter timeline
  As a Twitter user
  I want the app to request my authorisation via Twitter
  So that it can access my Twitter friend stream

  Scenario: Missed Links requests authorisation from Twitter
    Given I am at the home page 
    And I am not authenticated with Twitter 
    When I click the "Login with Twitter" link
    Then I should be redirected to the "Twitter authentication" page 

  Scenario: Granting authorisation with a valid username and password

  Scenario: Granting authorisation with an invalid username and password

  Scenario: Denying authorisation


