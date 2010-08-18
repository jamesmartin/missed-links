Feature: authenticating with a Twitter account

  In order to grant access to my Twitter timeline
  As a Twitter user
  I want MissedLinks to request my authorisation from Twitter

  Scenario: Missed Links requests authorisation from Twitter
    Given I am not authenticated with Twitter 
    When I go to the home page
    Then I should be asked to authenticate via the Twitter login


