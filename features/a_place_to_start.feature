Feature: basic web application behaviour 

  Scenario: Web application connects the user with their social media feed 
    Given that the social media provider is available 
      And the web application has started
    When the user browses to the home page
    Then the web application prompts the user to authenticate with the authentication provider service 

    When the user authenticates successfully with the authentication provider service 
    Then the web application shows that the web user has authenticated successfully 
