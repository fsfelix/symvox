Feature: List musician 
  As a user
  I want to see another musicians

  Scenario: All musicians 
    Given I am in the homepage
    When I click the "Todos instrumentos" link
    Then I should see a list of musicians