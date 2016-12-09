Feature: Musician Creation
  In order to create a musician
  As a user
  I want to be able to create new Musician

  Scenario: New Musician
    Given I am at the user creation page
    When I fill the "Nome" field with "Novo musico"
    And I fill the "Descrição" field with "Alguma descricao sobre o musico"
    And I fill the "Instrumento" field with "Instrumento"
    And I fill the "Email" field with "email@email.com"
    And I press the "Create Musician" button
    Then I should see "Cadastrado com sucesso"