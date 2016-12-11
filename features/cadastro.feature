Feature: Musician Creation
  In order to create a musician
  As a user
  I want to be able to create new Musician
  I also want to edit informations about a musician

  Scenario: New Musician
    Given I am at the user creation page
    When I fill the "Nome" field with "Alpha"
    And I fill the "Descrição" field with "I'm a alpha musician"
    And I fill the "Instrumento" field with "Alpha instrument"
    And I fill the "Email" field with "alpha@world.com                                          "
    And I press the "Create Musician" button
    Then I should see "Cadastrado com sucesso"
    
  Scenario: Edit a musician
    Given I am an alpha Musician
    Given I am at the my page
    #When I press the "Editar" button
    #When I click the "Editar" link
    When I fill the "Nome" field with "Beta"
    And I fill the "Descrição" field with "I'm a Beta musician"
    And I fill the "Instrumento" field with "Beta instrument"
    And I fill the "Email" field with "Beta@world.com"   
    And I press the "Update Musician" button
    Then I should see "Editado com sucesso"