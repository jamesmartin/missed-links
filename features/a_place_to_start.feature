Feature: basic application behaviour 

  Scenario: user authenticates with the social network feed but the application displays no results 
    Given that the social network feed returns no results 
      And the web application has started
    When the user visits the home page
    Then the application prompts the user to authenticate via the social network  

    When the user authenticates successfully with the social network 
    Then the application shows that the user has authenticated successfully 
      And displays no results
