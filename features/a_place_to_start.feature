Feature: basic web application OAuth dance behaviour 

  Scenario: Web application allows the web user to authenticate with a third party 
    Given that the authentication provider service is running 
      And the web application has started
    When the user browses to the home page
    Then the web application prompts the user to authenticate with the authentication provider service 

    When the user authenticates successfully with the authentication provider service 
    Then the web application shows that the web user has authenticated successfully 
