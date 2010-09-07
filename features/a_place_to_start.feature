Feature: basic application behaviour 

  Scenario: user authenticates with the social network feed but the application displays no results 
    Given that we have a social network feed, called "Twitter" 
      And we have a user with a Twitter username of "Twusr"
      And Twusr has no recent activity in their social network feed
    When Twusr visits the home page
    Then the application prompts Twusr to login via Twitter 

    When Twusr authenticates successfully
    Then Twusr can see "Welcome to Missed Links, Twusr" 
      And sees "You haven't missed any links recently" 
