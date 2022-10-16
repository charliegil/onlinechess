Feature: Moving a King

  User Story: As a user, I would like to move a King

  Scenario: I want to move a King horizontally by 1 square

  I should be able to move my King horizontally by 1 square
    Given A user is currently in a game
    When A user wants to move a king horizontally
    Then The user is able to move the king horizontally by 1 square, as long as it is not blocked by another piece

  Scenario: I want to move a king vertically by 1 square

  I should be able to move my king vertically by 1 square
    Given A user is currently in a game
    When A user wants to move a king vertically
    Then The user is able to move the king vertically by 1 square, as long as it is not blocked by another piece

  Scenario: I want to move a king diagonally by 1 square

  I should be able to move my king diagonally by 1 square
    Given A user is currently in a game
    When A user wants to move a king diagonally
    Then The user can move the Queen diagonally by 1 square, as long as it is not blocked by another piece