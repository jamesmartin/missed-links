Feature: basic web application behaviour 

  Scenario: Web application displays a home page and option to authenticate 
    Given that the authentication service is running 
      And the web application has started
    When the user browses to the home page
    Then the user is able to attempt authentication
