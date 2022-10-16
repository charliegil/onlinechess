Feature: Moving a Bishop

  User Story: As a user, I would like to move a Bishop

  Scenario: I want to move a bishop diagonally

  I should be able to move my bishop as many squares as I want diagonally
    Given A user is currently in a game
    When A user wants to move a bishop diagonally
    Then The user is able to move the bishop diagonally as many squares as they want

  Scenario: I want to move my bishop not diagonally

  I should not be able to move my bishop any other way than diagonally
    Given A user is currently in a game
    When A user wants to move a bishop not diagonally
    Then The user can only move the bishop diagonally, and the system will not let the user do otherwise

  Scenario: A user wants to move a bishop diagonally and eat a piece

  I should be able to move my bishop diagonally to eat a piece
    Given A user is currently in a game
    When A user wants to use a bishop to eat a piece
    Then The user can move the bishop only diagonally to eat a piece