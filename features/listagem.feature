Feature: Search another musicians
  As a musician
  I want to see another musicians
  So that I can see members for a band

Scenario: musician looks for another musician 
  When I visit my homepage
    Then I should see a list of instruments
  
  
  #Then I should see the list of instruments first
  #When I click on a instrument
  #Then I should see musicians that play that instrument